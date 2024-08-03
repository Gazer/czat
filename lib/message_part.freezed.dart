// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessagePart {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String imageUrl) emoji,
    required TResult Function(String url) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String imageUrl)? emoji,
    TResult? Function(String url)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String imageUrl)? emoji,
    TResult Function(String url)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagePartText value) text,
    required TResult Function(MessagePartEmoji value) emoji,
    required TResult Function(MessagePartUrl value) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessagePartText value)? text,
    TResult? Function(MessagePartEmoji value)? emoji,
    TResult? Function(MessagePartUrl value)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagePartText value)? text,
    TResult Function(MessagePartEmoji value)? emoji,
    TResult Function(MessagePartUrl value)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagePartCopyWith<$Res> {
  factory $MessagePartCopyWith(
          MessagePart value, $Res Function(MessagePart) then) =
      _$MessagePartCopyWithImpl<$Res, MessagePart>;
}

/// @nodoc
class _$MessagePartCopyWithImpl<$Res, $Val extends MessagePart>
    implements $MessagePartCopyWith<$Res> {
  _$MessagePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MessagePartTextImplCopyWith<$Res> {
  factory _$$MessagePartTextImplCopyWith(_$MessagePartTextImpl value,
          $Res Function(_$MessagePartTextImpl) then) =
      __$$MessagePartTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$MessagePartTextImplCopyWithImpl<$Res>
    extends _$MessagePartCopyWithImpl<$Res, _$MessagePartTextImpl>
    implements _$$MessagePartTextImplCopyWith<$Res> {
  __$$MessagePartTextImplCopyWithImpl(
      _$MessagePartTextImpl _value, $Res Function(_$MessagePartTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$MessagePartTextImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessagePartTextImpl implements MessagePartText {
  const _$MessagePartTextImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'MessagePart.text(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePartTextImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePartTextImplCopyWith<_$MessagePartTextImpl> get copyWith =>
      __$$MessagePartTextImplCopyWithImpl<_$MessagePartTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String imageUrl) emoji,
    required TResult Function(String url) url,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String imageUrl)? emoji,
    TResult? Function(String url)? url,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String imageUrl)? emoji,
    TResult Function(String url)? url,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagePartText value) text,
    required TResult Function(MessagePartEmoji value) emoji,
    required TResult Function(MessagePartUrl value) url,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessagePartText value)? text,
    TResult? Function(MessagePartEmoji value)? emoji,
    TResult? Function(MessagePartUrl value)? url,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagePartText value)? text,
    TResult Function(MessagePartEmoji value)? emoji,
    TResult Function(MessagePartUrl value)? url,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class MessagePartText implements MessagePart {
  const factory MessagePartText(final String text) = _$MessagePartTextImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$MessagePartTextImplCopyWith<_$MessagePartTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagePartEmojiImplCopyWith<$Res> {
  factory _$$MessagePartEmojiImplCopyWith(_$MessagePartEmojiImpl value,
          $Res Function(_$MessagePartEmojiImpl) then) =
      __$$MessagePartEmojiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$MessagePartEmojiImplCopyWithImpl<$Res>
    extends _$MessagePartCopyWithImpl<$Res, _$MessagePartEmojiImpl>
    implements _$$MessagePartEmojiImplCopyWith<$Res> {
  __$$MessagePartEmojiImplCopyWithImpl(_$MessagePartEmojiImpl _value,
      $Res Function(_$MessagePartEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$MessagePartEmojiImpl(
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessagePartEmojiImpl implements MessagePartEmoji {
  const _$MessagePartEmojiImpl(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'MessagePart.emoji(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePartEmojiImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePartEmojiImplCopyWith<_$MessagePartEmojiImpl> get copyWith =>
      __$$MessagePartEmojiImplCopyWithImpl<_$MessagePartEmojiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String imageUrl) emoji,
    required TResult Function(String url) url,
  }) {
    return emoji(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String imageUrl)? emoji,
    TResult? Function(String url)? url,
  }) {
    return emoji?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String imageUrl)? emoji,
    TResult Function(String url)? url,
    required TResult orElse(),
  }) {
    if (emoji != null) {
      return emoji(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagePartText value) text,
    required TResult Function(MessagePartEmoji value) emoji,
    required TResult Function(MessagePartUrl value) url,
  }) {
    return emoji(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessagePartText value)? text,
    TResult? Function(MessagePartEmoji value)? emoji,
    TResult? Function(MessagePartUrl value)? url,
  }) {
    return emoji?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagePartText value)? text,
    TResult Function(MessagePartEmoji value)? emoji,
    TResult Function(MessagePartUrl value)? url,
    required TResult orElse(),
  }) {
    if (emoji != null) {
      return emoji(this);
    }
    return orElse();
  }
}

abstract class MessagePartEmoji implements MessagePart {
  const factory MessagePartEmoji(final String imageUrl) =
      _$MessagePartEmojiImpl;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$MessagePartEmojiImplCopyWith<_$MessagePartEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagePartUrlImplCopyWith<$Res> {
  factory _$$MessagePartUrlImplCopyWith(_$MessagePartUrlImpl value,
          $Res Function(_$MessagePartUrlImpl) then) =
      __$$MessagePartUrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$MessagePartUrlImplCopyWithImpl<$Res>
    extends _$MessagePartCopyWithImpl<$Res, _$MessagePartUrlImpl>
    implements _$$MessagePartUrlImplCopyWith<$Res> {
  __$$MessagePartUrlImplCopyWithImpl(
      _$MessagePartUrlImpl _value, $Res Function(_$MessagePartUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$MessagePartUrlImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessagePartUrlImpl implements MessagePartUrl {
  const _$MessagePartUrlImpl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'MessagePart.url(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePartUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePartUrlImplCopyWith<_$MessagePartUrlImpl> get copyWith =>
      __$$MessagePartUrlImplCopyWithImpl<_$MessagePartUrlImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String imageUrl) emoji,
    required TResult Function(String url) url,
  }) {
    return url(this.url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String imageUrl)? emoji,
    TResult? Function(String url)? url,
  }) {
    return url?.call(this.url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String imageUrl)? emoji,
    TResult Function(String url)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagePartText value) text,
    required TResult Function(MessagePartEmoji value) emoji,
    required TResult Function(MessagePartUrl value) url,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessagePartText value)? text,
    TResult? Function(MessagePartEmoji value)? emoji,
    TResult? Function(MessagePartUrl value)? url,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagePartText value)? text,
    TResult Function(MessagePartEmoji value)? emoji,
    TResult Function(MessagePartUrl value)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class MessagePartUrl implements MessagePart {
  const factory MessagePartUrl(final String url) = _$MessagePartUrlImpl;

  String get url;
  @JsonKey(ignore: true)
  _$$MessagePartUrlImplCopyWith<_$MessagePartUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
