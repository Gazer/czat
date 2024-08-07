import 'dart:convert';
import 'dart:isolate';
import 'package:tmi/tmi.dart' as tmi;
import 'package:http/http.dart' as http;

Isolate? _isolate;

Future<ReceivePort> startTwitchService(String clientId) async {
  // port for this main isolate to receive messages.
  ReceivePort receivePort = ReceivePort();
  _isolate = await Isolate.spawn(
    _runTwitchClient,
    [receivePort.sendPort, clientId],
  );
  return receivePort;
}

stopTwitchService() {
  _isolate?.kill(priority: Isolate.immediate);
}

void _runTwitchClient(List params) {
  SendPort sendPort = params[0];
  String clientId = params[1];

  Map<String, String> avatars = {};

  var client = tmi.Client(
    channels: "livviiy",
    secure: true,
  );
  client.connect();

  client.on("message", (channel, userstate, message, self) async {
    // Don't listen to my own messages..
    if (self) return;

    // Handle different message types..
    switch (userstate["message-type"]) {
      case "action":
        // This is an action message..
        break;
      case "chat":
        // This is a chat message..
        // print(userstate);
        // flutter: {badge-info: {}, badges: {}, client-nonce: f52dbf6c4a03b647d1c3d296460bc4de, color: , display-name: rodgavmun, emotes: {}, flags: , id: 8239ca76-cd03-400e-93cb-944aa93d6ba6, mod: false, room-id: 476495936, subscriber: false, tmi-sent-ts: 1596516194517, turbo: false, user-id: 562469803, user-type: , emotes-raw: , badge-info-raw: , badges-raw: , username: rodgavmun, message-type: chat}
        var userId = userstate['user-id'];
        String avatar = "https://i.imgur.com/rD7b0Ki.png";
        if (avatars.containsKey(userId)) {
          avatar = avatars[userId]!;
        } else {
          // Fetch user
          try {
            var url = Uri.parse("https://api.twitch.tv/kraken/users/$userId");
            var response = await http.get(url, headers: {
              'Client-ID': clientId,
              'Accept': 'application/vnd.twitchtv.v5+json',
            });
            var value = json.decode(response.body);
            avatar = value['logo'] ?? avatar;
          } catch (e) {
            // No-op
          }
        }
        avatars[userId] = avatar;

        sendPort.send({
          "name": userstate['display-name'],
          "text": message,
          "imageUrl": avatar,
          "emotes": userstate['emotes'],
        });
        break;
      case "whisper":
        // This is a whisper..
        break;
      default:
        // Something else ?
        break;
    }
  });
}
