import 'package:czat/message_part.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextWithFormat extends StatelessWidget {
  final List<MessagePart> parts;
  final int fontSize;

  const TextWithFormat({
    required this.parts,
    required this.fontSize,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: parts
            .map(
              (part) => switch (part) {
                MessagePartText() => TextSpan(text: part.text),
                MessagePartEmoji() => EmoteSpan(part.imageUrl, fontSize * 1.0),
                MessagePartUrl() => UrlSpan(part.url, fontSize),
              },
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

  UrlWidget({required this.url, required this.fontSize}) : super();

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
            var uri = Uri.parse(widget.url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
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
              url,
              fit: BoxFit.cover,
            ),
          ),
        );
}
