import 'package:flutter/material.dart';
import 'package:tmi/tmi.dart' as tmi;
import 'package:http/http.dart' as http;
import 'dart:convert';

class Message {
  final String user;
  final String text;
  final String imageUrl;

  Message(this.user, this.text, this.imageUrl);
}

class ChatPage extends StatefulWidget {
  final String clientId;

  const ChatPage({
    Key key,
    @required this.clientId,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  tmi.Client client;
  List<Message> messages = [];
  Map<String, String> avatars = {};

  @override
  void initState() {
    super.initState();

    client = tmi.Client(
      channels: "androidedelvalle",
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
            avatar = avatars[userId];
          } else {
            // Fetch user
            print("Fetch from url");
            var url = "https://api.twitch.tv/kraken/users/$userId";
            var response = await http.get(url, headers: {
              'Client-ID': widget.clientId,
              'Accept': 'application/vnd.twitchtv.v5+json',
            });
            var value = json.decode(response.body);
            avatar = value['logo'];
            print(value);
          }
          avatars[userId] = avatar;
          setState(() {
            messages.insert(
              0,
              Message(userstate['display-name'], message, avatar),
            );
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

  @override
  void dispose() {
    client = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Czat"),
      ),
      body: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (_, int index) {
            var message = messages[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(message.imageUrl),
              ),
              title: Text(message.text),
              subtitle: Text(message.user),
            );
          }),
    );
  }
}
