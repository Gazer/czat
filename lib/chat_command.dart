import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_command.freezed.dart';

@freezed
sealed class ChatCommand with _$ChatCommand {
  const factory ChatCommand.text(
    String user,
    String text,
    String imageUrl,
    Map<dynamic, dynamic> emotes,
  ) = ChatText;
  const factory ChatCommand.question(
    String user,
    String text,
    String imageUrl,
    Map<dynamic, dynamic> emotes,
    String question,
    int emotesOffset,
  ) = ChatQuestion;
  const factory ChatCommand.vote(
    String user,
    String text,
    String imageUrl,
    Map<dynamic, dynamic> emotes,
    int questionId,
  ) = ChatVote;

  factory ChatCommand(
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
          var emotesOffset = command.length + 2;
          return ChatCommand.question(
              user, text, imageUrl, emotes, question, emotesOffset);
        case "vote":
        case "v":
          var questionId = int.tryParse(text.split(" ").sublist(1).join(" "));
          if (questionId != null) {
            return ChatCommand.vote(user, text, imageUrl, emotes, questionId);
          }
      }
    }
    return ChatCommand.text(user, text, imageUrl, emotes);
  }
}
