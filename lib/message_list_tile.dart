import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

import 'package:czat/message.dart';
import 'package:flutter/material.dart';

class MessageListTile extends StatelessWidget {
  final Message message;

  const MessageListTile({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(message.imageUrl),
      ),
      title: Text(message.user),
      subtitle: _messageWidget(message.text),
    );
  }

  Widget _messageWidget(String text) {
    var texts = [
      "This is the message with love ",
      "<3", // https://static-cdn.jtvnw.net/emoticons/v1/555555584/1.0
      " and more! ",
      "http://google.com/",
    ];
    return Text.rich(
      TextSpan(
        text: texts[0],
        children: [
          EmoteSpan(texts[1]),
          TextSpan(text: texts[2]),
          UrlSpan(texts[3]),
        ],
      ),
      style: TextStyle(
        fontSize: 22,
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
              fontSize: 22,
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
  static Map<String, String> _emoteUrls = {
    "<3": "https://static-cdn.jtvnw.net/emoticons/v1/555555584/1.0",
  };

  EmoteSpan(String emote)
      : super(
          child: SizedBox(
            height: 22,
            child: Image.network(
              _emoteUrls[emote] ??
                  "https://static-cdn.jtvnw.net/emoticons/v1/555555557/3.0",
              fit: BoxFit.cover,
            ),
          ),
        );
}
