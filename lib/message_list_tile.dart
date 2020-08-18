import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

import 'package:czat/message.dart';
import 'package:flutter/material.dart';

double fontSize = 48;

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
          child: _messageWidget(),
        ),
      ],
    );
  }

  Widget _messageWidget() {
    return Text.rich(
      TextSpan(
        children: message
            .parts()
            .map(
              (part) => part.map(text: (value) {
                return TextSpan(text: value.text);
              }, emoji: (emoji) {
                return EmoteSpan(emoji.imageUrl);
              }, url: (value) {
                return UrlSpan(value.url);
              }),
            )
            .toList(),
      ),
      style: TextStyle(
        fontSize: fontSize * 0.7,
      ),
    );
  }
}

class UrlSpan extends WidgetSpan {
  UrlSpan(String url)
      : super(
          child: UrlWidget(url: url),
        );
}

class UrlWidget extends StatefulWidget {
  final String url;

  UrlWidget({Key key, this.url}) : super(key: key);

  @override
  _UrlWidgetState createState() => _UrlWidgetState();
}

class _UrlWidgetState extends State<UrlWidget> {
  Color color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            color = Colors.red;
          });
        },
        onExit: (_) {
          setState(() {
            color = Colors.blueAccent;
          });
        },
        child: GestureDetector(
          onTap: () async {
            if (await canLaunch(widget.url)) {
              await launch(widget.url);
            }
          },
          child: Text(
            widget.url,
            style: TextStyle(
              fontSize: fontSize * 0.7,
              color: color,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}

class EmoteSpan extends WidgetSpan {
  EmoteSpan(String url)
      : super(
          child: SizedBox(
            height: fontSize,
            child: Image.network(
              url ?? "https://static-cdn.jtvnw.net/emoticons/v1/555555557/3.0",
              fit: BoxFit.cover,
            ),
          ),
        );
}
