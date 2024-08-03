import 'package:czat/message.dart';
import 'package:czat/message_list_tile.dart';
import 'package:czat/chat_command.dart';
import 'package:czat/question.dart';
import 'package:czat/questions_page.dart';
import 'package:czat/twitch_service.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ChatPage extends StatefulWidget {
  final String clientId;

  const ChatPage({
    required this.clientId,
  }) : super();

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Box<Message>? messageBox;
  Box<Question>? questionBox;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController(initialScrollOffset: 0);

    _startService();
  }

  _startService() async {
    messageBox = await Hive.openBox('messages');
    questionBox = await Hive.openBox('questions');

    var stream = await startTwitchService(widget.clientId);

    stream.listen((data) {
      var command = ChatCommand(
        data['name'],
        data['text'],
        data['imageUrl'],
        data['emotes'],
      );

      switch (command) {
        case ChatText():
          break;
        case ChatQuestion():
          var question = Question(
            command.question,
            0,
            false,
            command.emotes,
            command.emotesOffset,
          );
          questionBox?.add(question);
        case ChatVote():
          var question = questionBox?.get(command.questionId);
          if (question != null) {
            question = question.vote();
            questionBox?.putAt(command.questionId, question);
          }
      }

      messageBox?.add(Message(
        command.user,
        command.text,
        command.imageUrl,
        command.emotes,
      ));

      setState(() {});
    });
  }

  @override
  void dispose() {
    stopTwitchService();
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Czat"),
        actions: [
          IconButton(
              icon: Icon(Icons.question_answer),
              onPressed: () {
                Navigator.of(context).push(QuestionsPage.route());
              }),
          IconButton(
            icon: Icon(Icons.vertical_align_top),
            onPressed: () {
              _scrollController?.animateTo(
                0,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              messageBox?.clear();
            },
          ),
        ],
      ),
      body: messageBox == null
          ? Center(child: CircularProgressIndicator())
          : ValueListenableBuilder(
              valueListenable: messageBox!.listenable(),
              builder: (context, Box<Message> box, widget) {
                return ListView.separated(
                  controller: _scrollController,
                  itemCount: box.values.length,
                  itemBuilder: (_, int index) {
                    var message = box.getAt(box.length - index - 1);
                    return MessageListTile(
                      message: message!,
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
