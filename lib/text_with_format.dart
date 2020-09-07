import 'package:czat/message_part.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextWithFormat extends StatelessWidget {
  final List<MessagePart> parts;
  final int fontSize;

  const TextWithFormat({
    Key key,
    @required this.parts,
    @required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: parts
            .map(
              (part) => part.map(text: (value) {
                return TextSpan(text: value.text);
              }, emoji: (emoji) {
                return EmoteSpan(emoji.imageUrl, fontSize * 1.0);
              }, url: (value) {
                return UrlSpan(value.url, fontSize);
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
  UrlSpan(String url, int fontSize)
      : super(
          child: UrlWidget(
            url: url,
            fontSize: fontSize,
          ),
        );
}

class UrlWidget extends StatefulWidget {
  final String url;
  final int fontSize;

  UrlWidget({Key key, this.url, this.fontSize}) : super(key: key);

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
              fontSize: widget.fontSize * 0.7,
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
  EmoteSpan(String url, double fontSize)
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
