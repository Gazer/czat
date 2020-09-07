import 'dart:ui';

import 'package:czat/text_with_format.dart';

import 'package:czat/message.dart';
import 'package:flutter/material.dart';

class MessageListTile extends StatelessWidget {
  final Message message;

  const MessageListTile({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(message.imageUrl),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Text(
                  message.user,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Container(width: 20, height: 20, child: Placeholder()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
          child: TextWithFormat(
            parts: message.parts(),
            fontSize: 48,
          ),
        ),
      ],
    );
  }
}
