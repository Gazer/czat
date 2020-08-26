import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_message.freezed.dart';

@freezed
abstract class NewMessage with _$NewMessage {
  const factory NewMessage.text(String user, String text, String imageUrl,
      Map<dynamic, dynamic> emotes) = _TextMessage;
  const factory NewMessage.question(String user, String text, String imageUrl,
      Map<dynamic, dynamic> emotes, String question) = _QuestionMessage;
  const factory NewMessage.vote(String user, String text, String imageUrl,
      Map<dynamic, dynamic> emotes, int questionId) = _VoteMessage;

  factory NewMessage(
    String user,
    String text,
    String imageUrl,
    Map<dynamic, dynamic> emotes,
  ) {
    String command = text.split(" ").first;
    if (command[0] == "!") {
      command = command.substring(1);
      switch (command) {
        case "question":
        case "q":
        case "?":
          var question = text.split(" ").sublist(1).join(" ");
          return NewMessage.question(user, text, imageUrl, emotes, question);
        case "vote":
        case "v":
          var questionId = int.tryParse(text.split(" ").sublist(1).join(" "));
          if (questionId != null) {
            return NewMessage.vote(user, text, imageUrl, emotes, questionId);
          }
      }
    }
    return NewMessage.text(user, text, imageUrl, emotes);
  }
}
