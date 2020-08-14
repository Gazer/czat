import 'package:czat/message.dart';
import 'package:czat/message_part.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var message = Message(
    "TheUserName",
    "This is the message with love <3 and more! http://google.com/",
    "https://i.imgur.com/rD7b0Ki.png",
    {
      '3': ['30-31']
    },
  );

  test("parts should return 3 items", () {
    expect(message.parts().length, 3);
  });

  test("parts should return text as first item", () {
    expect(
      message.parts()[0],
      MessagePart.text("This is the message with love "),
    );
  });

  test("parts should return emoji as second item", () {
    expect(
      message.parts()[1],
      MessagePart.emoji(
          "https://static-cdn.jtvnw.net/emoticons/v1/555555584/1.0"),
    );
  });

  test("parts should return text as thrid item", () {
    expect(
      message.parts()[2],
      MessagePart.text(" and more! http://google.com/"),
    );
  });
}
