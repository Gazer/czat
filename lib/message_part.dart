import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_part.freezed.dart';

@freezed
sealed class MessagePart with _$MessagePart {
  const factory MessagePart.text(String text) = MessagePartText;
  const factory MessagePart.emoji(String imageUrl) = MessagePartEmoji;
  const factory MessagePart.url(String url) = MessagePartUrl;
}
