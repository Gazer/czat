import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_part.freezed.dart';

@freezed
abstract class MessagePart with _$MessagePart {
  const factory MessagePart.text(String text) = _Text;
  const factory MessagePart.emoji(String imageUrl) = _Emoji;
  const factory MessagePart.url(String url) = _Url;
}
