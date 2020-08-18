import 'package:czat/message.dart';
import 'package:czat/message_list_tile.dart';
import 'package:czat/twitch_service.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
  Box<Message> messageBox;

  @override
  void initState() {
    super.initState();

    _startService();
  }

  _startService() async {
    messageBox = await Hive.openBox('messages');

    var stream = await startTwitchService(widget.clientId);

    stream.listen((data) {
      var message = Message(
        data['name'],
        data['text'],
        data['imageUrl'],
        data['emotes'],
      );
      messageBox.add(message);
    });

    setState(() {});
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
      body: messageBox == null
          ? Center(child: CircularProgressIndicator())
          : ValueListenableBuilder(
              valueListenable: messageBox.listenable(),
              builder: (context, Box<Message> box, widget) {
                return ListView.separated(
                  itemCount: box.values.length,
                  itemBuilder: (_, int index) {
                    var message = box.getAt(box.length - index - 1);
                    return MessageListTile(
                      message: message,
                    );
                  },
                  separatorBuilder: (_, __) {
                    return Divider();
                  },
                );
              },
            ),
    );
  }
}
