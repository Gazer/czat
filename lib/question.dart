import 'package:czat/message_part.dart';
import 'package:hive/hive.dart';

class QuestionAdapter extends TypeAdapter<Question> {
  @override
  Question read(BinaryReader reader) {
    return Question(
      reader.readString(),
      reader.readInt(),
      reader.readBool(),
      reader.readMap(),
      reader.readInt(),
    );
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, Question obj) {
    writer.writeString(obj.text);
    writer.writeInt(obj.votes);
    writer.writeBool(obj.answered);
    writer.writeMap(obj.emotes);
    writer.writeInt(obj.emotesOffset);
  }
}

class Question extends HiveObject {
  final String text;
  final int votes;
  final bool answered;
  final Map<dynamic, dynamic> emotes;
  final int emotesOffset;

  List<MessagePart>? _ret;

  Question(
    this.text,
    this.votes,
    this.answered,
    this.emotes,
    this.emotesOffset,
  );

  Question vote() {
    return Question(
      text,
      votes + 1,
      answered,
      emotes,
      emotesOffset,
    );
  }

  List<MessagePart> parts() {
    if (_ret == null) {
      _ret = [];

      // "This is the message with love <3 and more! http://google.com/"
      Map<int, Map<String, dynamic>> startEmotes = {};
      emotes.keys.fold(startEmotes, (map, emoteKey) {
        emotes[emoteKey].forEach((String startStop) {
          var splitted = startStop.split("-").map((e) => int.parse(e)).toList();
          var start = splitted[0] - emotesOffset;
          var stop = splitted[1] - emotesOffset;
          map[start] = {'end': stop, 'id': emoteKey};
        });
        return map;
      });

      int startBeforeEmote = 0;
      for (int i = 0; i < text.length; i++) {
        if (startEmotes.containsKey(i)) {
          if (startBeforeEmote != i) {
            var textPart = text.substring(startBeforeEmote, i);
            _ret?.add(MessagePart.text(textPart));
          }

          String emoteId = startEmotes[i]!['id'];
          int end = startEmotes[i]!['end'];
          _ret?.add(MessagePart.emoji(
              "https://static-cdn.jtvnw.net/emoticons/v1/$emoteId/4.0"));
          i = end;
          startBeforeEmote = i + 1;
        } else {
          if (i + 4 < text.length) {
            if (text.substring(i, i + 4) == "http") {
              int j = i;
              for (; j < text.length; j++) {
                if (text[j] == ' ') break;
              }

              var url = text.substring(i, j);
              // TODO: Validar url
              if (startBeforeEmote != i) {
                var textPart = text.substring(startBeforeEmote, i);
                print(textPart);
                _ret?.add(MessagePart.text(textPart));
              }
              _ret?.add(MessagePart.url(url));
              i = j - 1;
              startBeforeEmote = j;
            }
          }
        }
      }
      if (startBeforeEmote < text.length) {
        var textPart = text.substring(startBeforeEmote);
        _ret?.add(MessagePart.text(textPart));
      }
    }
    return _ret!;
  }
}
