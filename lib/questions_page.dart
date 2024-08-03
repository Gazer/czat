import 'package:czat/text_with_format.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'question.dart';

class QuestionsPage extends StatefulWidget {
  static MaterialPageRoute route() {
    return MaterialPageRoute(builder: (_) => QuestionsPage());
  }

  QuestionsPage() : super();

  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preguntas"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Hive.box<Question>("questions").clear();
            },
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<Question>("questions").listenable(),
        builder: (context, Box<Question> box, widget) {
          return ListView.separated(
            itemCount: box.values.length,
            itemBuilder: (_, int index) {
              var question = box.getAt(index);
              return ListTile(
                title: TextWithFormat(
                  parts: question!.parts(),
                  fontSize: 42,
                ),
                leading: Text(
                  "#${question.key}",
                  style: TextStyle(fontSize: 24),
                ),
                trailing: CircleAvatar(
                  child: Text("${question.votes}"),
                ),
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
