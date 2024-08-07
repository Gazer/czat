import 'package:czat/message_part.dart';
import 'package:hive/hive.dart';

class MessageAdapter extends TypeAdapter<Message> {
  @override
  Message read(BinaryReader reader) {
    return Message(
      reader.readString(),
      reader.readString(),
      reader.readString(),
      reader.readMap(),
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Message message) {
    writer.writeString(message.user);
    writer.writeString(message.text);
    writer.writeString(message.imageUrl);
    writer.writeMap(message.emotes);
  }
}

class Message extends HiveObject {
  final String user;
  final String text;
  final String imageUrl;
  final Map<dynamic, dynamic> emotes;

  List<MessagePart>? _ret;

  Message(this.user, this.text, this.imageUrl, this.emotes);

  bool isQuestion() {
    return text.startsWith("!question ") ||
        text.startsWith("!q ") ||
        text.startsWith("!? ");
  }

  String get question =>
      isQuestion() ? text.split(" ").sublist(1).join(" ") : "";

  bool isVote() {
    return (text.startsWith("!vote ") || text.startsWith("!v ")) &&
        RegExp(r' (\d+)$').hasMatch(text);
  }

  int get questionId =>
      isVote() ? int.tryParse(text.split(" ").sublist(1).join(" ")) ?? -1 : -1;

  List<MessagePart> parts() {
    if (_ret == null) {
      _ret = [];

      // "This is the message with love <3 and more! http://google.com/"
      Map<int, Map<String, dynamic>> startEmotes = {};
      emotes.keys.fold(startEmotes, (map, emoteKey) {
        emotes[emoteKey].forEach((String startStop) {
          var splitted = startStop.split("-").map((e) => int.parse(e)).toList();
          var start = splitted[0];
          var stop = splitted[1];
          map[start] = {'type': 'emote', 'end': stop, 'id': emoteKey};
        });
        return map;
      });
      RegExp exp = RegExp(r'(http)');
      exp.allMatches(text).forEach((match) {
        startEmotes[match.start] = {'type': 'http', 'end': match.end, 'id': ''};
      });

      int startBeforeEmote = 0;
      var startPositions = startEmotes.keys.toList();
      startPositions.sort();

      startPositions.forEach((i) {
        if (startEmotes[i]!['type'] == 'emote') {
          if (startBeforeEmote != i) {
            var textPart = text.substring(startBeforeEmote, i);
            _ret?.add(MessagePart.text(textPart));
          }

          String emoteId = startEmotes[i]!['id'];
          int end = startEmotes[i]!['end'];
          _ret?.add(MessagePart.emoji(
              "https://static-cdn.jtvnw.net/emoticons/v1/$emoteId/4.0"));
          startBeforeEmote = end + 1;
        } else if (startEmotes[i]!['type'] == 'http') {
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
      });
      if (startBeforeEmote < text.length) {
        var textPart = text.substring(startBeforeEmote);
        _ret?.add(MessagePart.text(textPart));
      }
    }
    return _ret!;
  }
}
