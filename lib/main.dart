import 'package:czat/chat_page.dart';
import 'package:czat/message.dart';
import 'package:czat/question.dart';
import 'package:flutter/material.dart';

import 'package:dotenv/dotenv.dart' show load, isEveryDefined, env;
import 'package:hive/hive.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  load();

  if (!isEveryDefined(['CLIENT_ID'])) {
    throw Exception("Please define CLIENT_ID in .env file");
  }

  Hive.init("boxes.db");

  Hive.registerAdapter(MessageAdapter());
  Hive.registerAdapter(QuestionAdapter());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatPage(
        clientId: env['CLIENT_ID'],
      ),
    );
  }
}
