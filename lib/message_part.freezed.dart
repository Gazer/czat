// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessagePartTearOff {
  const _$MessagePartTearOff();

// ignore: unused_element
  _Text text(String text) {
    return _Text(
      text,
    );
  }

// ignore: unused_element
  _Emoji emoji(String imageUrl) {
    return _Emoji(
      imageUrl,
    );
  }

// ignore: unused_element
  _Url url(String url) {
    return _Url(
      url,
    );
  }
}

// ignore: unused_element
const $MessagePart = _$MessagePartTearOff();

mixin _$MessagePart {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(String text),
    @required Result emoji(String imageUrl),
    @required Result url(String url),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String text),
    Result emoji(String imageUrl),
    Result url(String url),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_Text value),
    @required Result emoji(_Emoji value),
    @required Result url(_Url value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_Text value),
    Result emoji(_Emoji value),
    Result url(_Url value),
    @required Result orElse(),
  });
}

abstract class $MessagePartCopyWith<$Res> {
  factory $MessagePartCopyWith(
          MessagePart value, $Res Function(MessagePart) then) =
      _$MessagePartCopyWithImpl<$Res>;
}

class _$MessagePartCopyWithImpl<$Res> implements $MessagePartCopyWith<$Res> {
  _$MessagePartCopyWithImpl(this._value, this._then);

  final MessagePart _value;
  // ignore: unused_field
  final $Res Function(MessagePart) _then;
}

abstract class _$TextCopyWith<$Res> {
  factory _$TextCopyWith(_Text value, $Res Function(_Text) then) =
      __$TextCopyWithImpl<$Res>;
  $Res call({String text});
}

class __$TextCopyWithImpl<$Res> extends _$MessagePartCopyWithImpl<$Res>
    implements _$TextCopyWith<$Res> {
  __$TextCopyWithImpl(_Text _value, $Res Function(_Text) _then)
      : super(_value, (v) => _then(v as _Text));

  @override
  _Text get _value => super._value as _Text;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_Text(
      text == freezed ? _value.text : text as String,
    ));
  }
}

class _$_Text implements _Text {
  const _$_Text(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'MessagePart.text(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Text &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @override
  _$TextCopyWith<_Text> get copyWith =>
      __$TextCopyWithImpl<_Text>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(String text),
    @required Result emoji(String imageUrl),
    @required Result url(String url),
  }) {
    assert(text != null);
    assert(emoji != null);
    assert(url != null);
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String text),
    Result emoji(String imageUrl),
    Result url(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_Text value),
    @required Result emoji(_Emoji value),
    @required Result url(_Url value),
  }) {
    assert(text != null);
    assert(emoji != null);
    assert(url != null);
    return text(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_Text value),
    Result emoji(_Emoji value),
    Result url(_Url value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _Text implements MessagePart {
  const factory _Text(String text) = _$_Text;

  String get text;
  _$TextCopyWith<_Text> get copyWith;
}

abstract class _$EmojiCopyWith<$Res> {
  factory _$EmojiCopyWith(_Emoji value, $Res Function(_Emoji) then) =
      __$EmojiCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

class __$EmojiCopyWithImpl<$Res> extends _$MessagePartCopyWithImpl<$Res>
    implements _$EmojiCopyWith<$Res> {
  __$EmojiCopyWithImpl(_Emoji _value, $Res Function(_Emoji) _then)
      : super(_value, (v) => _then(v as _Emoji));

  @override
  _Emoji get _value => super._value as _Emoji;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_Emoji(
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

class _$_Emoji implements _Emoji {
  const _$_Emoji(this.imageUrl) : assert(imageUrl != null);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'MessagePart.emoji(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Emoji &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @override
  _$EmojiCopyWith<_Emoji> get copyWith =>
      __$EmojiCopyWithImpl<_Emoji>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(String text),
    @required Result emoji(String imageUrl),
    @required Result url(String url),
  }) {
    assert(text != null);
    assert(emoji != null);
    assert(url != null);
    return emoji(imageUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String text),
    Result emoji(String imageUrl),
    Result url(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emoji != null) {
      return emoji(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_Text value),
    @required Result emoji(_Emoji value),
    @required Result url(_Url value),
  }) {
    assert(text != null);
    assert(emoji != null);
    assert(url != null);
    return emoji(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_Text value),
    Result emoji(_Emoji value),
    Result url(_Url value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emoji != null) {
      return emoji(this);
    }
    return orElse();
  }
}

abstract class _Emoji implements MessagePart {
  const factory _Emoji(String imageUrl) = _$_Emoji;

  String get imageUrl;
  _$EmojiCopyWith<_Emoji> get copyWith;
}

abstract class _$UrlCopyWith<$Res> {
  factory _$UrlCopyWith(_Url value, $Res Function(_Url) then) =
      __$UrlCopyWithImpl<$Res>;
  $Res call({String url});
}

class __$UrlCopyWithImpl<$Res> extends _$MessagePartCopyWithImpl<$Res>
    implements _$UrlCopyWith<$Res> {
  __$UrlCopyWithImpl(_Url _value, $Res Function(_Url) _then)
      : super(_value, (v) => _then(v as _Url));

  @override
  _Url get _value => super._value as _Url;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_Url(
      url == freezed ? _value.url : url as String,
    ));
  }
}

class _$_Url implements _Url {
  const _$_Url(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString() {
    return 'MessagePart.url(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Url &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$UrlCopyWith<_Url> get copyWith =>
      __$UrlCopyWithImpl<_Url>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(String text),
    @required Result emoji(String imageUrl),
    @required Result url(String url),
  }) {
    assert(text != null);
    assert(emoji != null);
    assert(url != null);
    return url(this.url);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String text),
    Result emoji(String imageUrl),
    Result url(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (url != null) {
      return url(this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_Text value),
    @required Result emoji(_Emoji value),
    @required Result url(_Url value),
  }) {
    assert(text != null);
    assert(emoji != null);
    assert(url != null);
    return url(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_Text value),
    Result emoji(_Emoji value),
    Result url(_Url value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class _Url implements MessagePart {
  const factory _Url(String url) = _$_Url;

  String get url;
  _$UrlCopyWith<_Url> get copyWith;
}
