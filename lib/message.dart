import 'package:czat/message_part.dart';

class Message {
  final String user;
  final String text;
  final String imageUrl;
  // 25: [0-4, 5-7]
  final Map<dynamic, dynamic> emotes;
  List<MessagePart> _ret = null;

  Message(this.user, this.text, this.imageUrl, this.emotes);

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
          startEmotes[start] = {'end': stop, 'id': emoteKey};
        });
      });

      int startBeforeEmote = 0;
      for (int i = 0; i < text.length; i++) {
        if (startEmotes.containsKey(i)) {
          if (startBeforeEmote != i) {
            var textPart = text.substring(startBeforeEmote, i);
            _ret.add(MessagePart.text(textPart));
          }

          String emoteId = startEmotes[i]['id'];
          int end = startEmotes[i]['end'];
          _ret.add(MessagePart.emoji(
              "https://static-cdn.jtvnw.net/emoticons/v1/$emoteId/1.0"));
          i = end;
          startBeforeEmote = i + 1;
        }
      }
      if (startBeforeEmote < text.length) {
        var textPart = text.substring(startBeforeEmote);
        _ret.add(MessagePart.text(textPart));
      }
    }
    return _ret;
  }
}
