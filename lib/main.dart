import 'package:czat/chat_page.dart';
import 'package:flutter/material.dart';

import 'package:dotenv/dotenv.dart' show load, clean, isEveryDefined, env;

void main() {
  load();

  if (!isEveryDefined(['CLIENT_ID'])) {
    throw Exception("Please define CLIENT_ID in .env file");
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
