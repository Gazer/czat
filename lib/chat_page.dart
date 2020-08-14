import 'package:czat/message.dart';
import 'package:czat/message_list_tile.dart';
import 'package:czat/twitch_service.dart';
import 'package:flutter/material.dart';

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
  List<Message> messages = [];

  @override
  void initState() {
    super.initState();

    _startService();
  }

  _startService() async {
    var stream = await startTwitchService(widget.clientId);

    stream.listen((data) {
      setState(() {
        messages.insert(
          0,
          Message(
            data['name'],
            data['text'],
            data['imageUrl'],
            data['emotes'],
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    stopTwitchService();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Czat"),
      ),
      body: ListView.separated(
        itemCount: messages.length + 1,
        itemBuilder: (_, int index) {
          if (index == 0) {
            var message = Message(
              "TheUserName",
              "This is the message with love <3 and more! http://google.com/",
              "https://i.imgur.com/rD7b0Ki.png",
              {},
            );
            return MessageListTile(message: message);
          } else {
            var message = messages[index - 1];
            return MessageListTile(
              message: message,
            );
            // ListTile(
            //   leading: CircleAvatar(
            //     backgroundImage: NetworkImage(message.imageUrl),
            //   ),
            //   title: Text(
            //     message.user,
            //     style: TextStyle(fontSize: 24),
            //   ),
            //   subtitle: Text(
            //     message.text,
            //     style: TextStyle(fontSize: 32),
            //   ),
            // );
          }
        },
        separatorBuilder: (_, __) {
          return Divider();
        },
      ),
    );
  }
}
