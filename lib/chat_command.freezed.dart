// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChatCommandTearOff {
  const _$ChatCommandTearOff();

// ignore: unused_element
  _TextMessage text(
      String user, String text, String imageUrl, Map<dynamic, dynamic> emotes) {
    return _TextMessage(
      user,
      text,
      imageUrl,
      emotes,
    );
  }

// ignore: unused_element
  _QuestionMessage question(String user, String text, String imageUrl,
      Map<dynamic, dynamic> emotes, String question, int emotesOffset) {
    return _QuestionMessage(
      user,
      text,
      imageUrl,
      emotes,
      question,
      emotesOffset,
    );
  }

// ignore: unused_element
  _VoteMessage vote(String user, String text, String imageUrl,
      Map<dynamic, dynamic> emotes, int questionId) {
    return _VoteMessage(
      user,
      text,
      imageUrl,
      emotes,
      questionId,
    );
  }
}

// ignore: unused_element
const $ChatCommand = _$ChatCommandTearOff();

mixin _$ChatCommand {
  String get user;
  String get text;
  String get imageUrl;
  Map<dynamic, dynamic> get emotes;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result text(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes),
    @required
        Result question(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    @required
        Result vote(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes),
    Result question(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    Result vote(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, int questionId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_TextMessage value),
    @required Result question(_QuestionMessage value),
    @required Result vote(_VoteMessage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_TextMessage value),
    Result question(_QuestionMessage value),
    Result vote(_VoteMessage value),
    @required Result orElse(),
  });

  $ChatCommandCopyWith<ChatCommand> get copyWith;
}

abstract class $ChatCommandCopyWith<$Res> {
  factory $ChatCommandCopyWith(
          ChatCommand value, $Res Function(ChatCommand) then) =
      _$ChatCommandCopyWithImpl<$Res>;
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes});
}

class _$ChatCommandCopyWithImpl<$Res> implements $ChatCommandCopyWith<$Res> {
  _$ChatCommandCopyWithImpl(this._value, this._then);

  final ChatCommand _value;
  // ignore: unused_field
  final $Res Function(ChatCommand) _then;

  @override
  $Res call({
    Object user = freezed,
    Object text = freezed,
    Object imageUrl = freezed,
    Object emotes = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as String,
      text: text == freezed ? _value.text : text as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      emotes:
          emotes == freezed ? _value.emotes : emotes as Map<dynamic, dynamic>,
    ));
  }
}

abstract class _$TextMessageCopyWith<$Res>
    implements $ChatCommandCopyWith<$Res> {
  factory _$TextMessageCopyWith(
          _TextMessage value, $Res Function(_TextMessage) then) =
      __$TextMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes});
}

class __$TextMessageCopyWithImpl<$Res> extends _$ChatCommandCopyWithImpl<$Res>
    implements _$TextMessageCopyWith<$Res> {
  __$TextMessageCopyWithImpl(
      _TextMessage _value, $Res Function(_TextMessage) _then)
      : super(_value, (v) => _then(v as _TextMessage));

  @override
  _TextMessage get _value => super._value as _TextMessage;

  @override
  $Res call({
    Object user = freezed,
    Object text = freezed,
    Object imageUrl = freezed,
    Object emotes = freezed,
  }) {
    return _then(_TextMessage(
      user == freezed ? _value.user : user as String,
      text == freezed ? _value.text : text as String,
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      emotes == freezed ? _value.emotes : emotes as Map<dynamic, dynamic>,
    ));
  }
}

class _$_TextMessage implements _TextMessage {
  const _$_TextMessage(this.user, this.text, this.imageUrl, this.emotes)
      : assert(user != null),
        assert(text != null),
        assert(imageUrl != null),
        assert(emotes != null);

  @override
  final String user;
  @override
  final String text;
  @override
  final String imageUrl;
  @override
  final Map<dynamic, dynamic> emotes;

  @override
  String toString() {
    return 'ChatCommand.text(user: $user, text: $text, imageUrl: $imageUrl, emotes: $emotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextMessage &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.emotes, emotes) ||
                const DeepCollectionEquality().equals(other.emotes, emotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(emotes);

  @override
  _$TextMessageCopyWith<_TextMessage> get copyWith =>
      __$TextMessageCopyWithImpl<_TextMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result text(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes),
    @required
        Result question(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    @required
        Result vote(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId),
  }) {
    assert(text != null);
    assert(question != null);
    assert(vote != null);
    return text(user, this.text, imageUrl, emotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes),
    Result question(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    Result vote(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, int questionId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(user, this.text, imageUrl, emotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_TextMessage value),
    @required Result question(_QuestionMessage value),
    @required Result vote(_VoteMessage value),
  }) {
    assert(text != null);
    assert(question != null);
    assert(vote != null);
    return text(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_TextMessage value),
    Result question(_QuestionMessage value),
    Result vote(_VoteMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _TextMessage implements ChatCommand {
  const factory _TextMessage(String user, String text, String imageUrl,
      Map<dynamic, dynamic> emotes) = _$_TextMessage;

  @override
  String get user;
  @override
  String get text;
  @override
  String get imageUrl;
  @override
  Map<dynamic, dynamic> get emotes;
  @override
  _$TextMessageCopyWith<_TextMessage> get copyWith;
}

abstract class _$QuestionMessageCopyWith<$Res>
    implements $ChatCommandCopyWith<$Res> {
  factory _$QuestionMessageCopyWith(
          _QuestionMessage value, $Res Function(_QuestionMessage) then) =
      __$QuestionMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes,
      String question,
      int emotesOffset});
}

class __$QuestionMessageCopyWithImpl<$Res>
    extends _$ChatCommandCopyWithImpl<$Res>
    implements _$QuestionMessageCopyWith<$Res> {
  __$QuestionMessageCopyWithImpl(
      _QuestionMessage _value, $Res Function(_QuestionMessage) _then)
      : super(_value, (v) => _then(v as _QuestionMessage));

  @override
  _QuestionMessage get _value => super._value as _QuestionMessage;

  @override
  $Res call({
    Object user = freezed,
    Object text = freezed,
    Object imageUrl = freezed,
    Object emotes = freezed,
    Object question = freezed,
    Object emotesOffset = freezed,
  }) {
    return _then(_QuestionMessage(
      user == freezed ? _value.user : user as String,
      text == freezed ? _value.text : text as String,
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      emotes == freezed ? _value.emotes : emotes as Map<dynamic, dynamic>,
      question == freezed ? _value.question : question as String,
      emotesOffset == freezed ? _value.emotesOffset : emotesOffset as int,
    ));
  }
}

class _$_QuestionMessage implements _QuestionMessage {
  const _$_QuestionMessage(this.user, this.text, this.imageUrl, this.emotes,
      this.question, this.emotesOffset)
      : assert(user != null),
        assert(text != null),
        assert(imageUrl != null),
        assert(emotes != null),
        assert(question != null),
        assert(emotesOffset != null);

  @override
  final String user;
  @override
  final String text;
  @override
  final String imageUrl;
  @override
  final Map<dynamic, dynamic> emotes;
  @override
  final String question;
  @override
  final int emotesOffset;

  @override
  String toString() {
    return 'ChatCommand.question(user: $user, text: $text, imageUrl: $imageUrl, emotes: $emotes, question: $question, emotesOffset: $emotesOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionMessage &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.emotes, emotes) ||
                const DeepCollectionEquality().equals(other.emotes, emotes)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.emotesOffset, emotesOffset) ||
                const DeepCollectionEquality()
                    .equals(other.emotesOffset, emotesOffset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(emotes) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(emotesOffset);

  @override
  _$QuestionMessageCopyWith<_QuestionMessage> get copyWith =>
      __$QuestionMessageCopyWithImpl<_QuestionMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result text(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes),
    @required
        Result question(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    @required
        Result vote(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId),
  }) {
    assert(text != null);
    assert(question != null);
    assert(vote != null);
    return question(
        user, this.text, imageUrl, emotes, this.question, emotesOffset);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes),
    Result question(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    Result vote(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, int questionId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (question != null) {
      return question(
          user, this.text, imageUrl, emotes, this.question, emotesOffset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_TextMessage value),
    @required Result question(_QuestionMessage value),
    @required Result vote(_VoteMessage value),
  }) {
    assert(text != null);
    assert(question != null);
    assert(vote != null);
    return question(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_TextMessage value),
    Result question(_QuestionMessage value),
    Result vote(_VoteMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (question != null) {
      return question(this);
    }
    return orElse();
  }
}

abstract class _QuestionMessage implements ChatCommand {
  const factory _QuestionMessage(
      String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes,
      String question,
      int emotesOffset) = _$_QuestionMessage;

  @override
  String get user;
  @override
  String get text;
  @override
  String get imageUrl;
  @override
  Map<dynamic, dynamic> get emotes;
  String get question;
  int get emotesOffset;
  @override
  _$QuestionMessageCopyWith<_QuestionMessage> get copyWith;
}

abstract class _$VoteMessageCopyWith<$Res>
    implements $ChatCommandCopyWith<$Res> {
  factory _$VoteMessageCopyWith(
          _VoteMessage value, $Res Function(_VoteMessage) then) =
      __$VoteMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes,
      int questionId});
}

class __$VoteMessageCopyWithImpl<$Res> extends _$ChatCommandCopyWithImpl<$Res>
    implements _$VoteMessageCopyWith<$Res> {
  __$VoteMessageCopyWithImpl(
      _VoteMessage _value, $Res Function(_VoteMessage) _then)
      : super(_value, (v) => _then(v as _VoteMessage));

  @override
  _VoteMessage get _value => super._value as _VoteMessage;

  @override
  $Res call({
    Object user = freezed,
    Object text = freezed,
    Object imageUrl = freezed,
    Object emotes = freezed,
    Object questionId = freezed,
  }) {
    return _then(_VoteMessage(
      user == freezed ? _value.user : user as String,
      text == freezed ? _value.text : text as String,
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      emotes == freezed ? _value.emotes : emotes as Map<dynamic, dynamic>,
      questionId == freezed ? _value.questionId : questionId as int,
    ));
  }
}

class _$_VoteMessage implements _VoteMessage {
  const _$_VoteMessage(
      this.user, this.text, this.imageUrl, this.emotes, this.questionId)
      : assert(user != null),
        assert(text != null),
        assert(imageUrl != null),
        assert(emotes != null),
        assert(questionId != null);

  @override
  final String user;
  @override
  final String text;
  @override
  final String imageUrl;
  @override
  final Map<dynamic, dynamic> emotes;
  @override
  final int questionId;

  @override
  String toString() {
    return 'ChatCommand.vote(user: $user, text: $text, imageUrl: $imageUrl, emotes: $emotes, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VoteMessage &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.emotes, emotes) ||
                const DeepCollectionEquality().equals(other.emotes, emotes)) &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(emotes) ^
      const DeepCollectionEquality().hash(questionId);

  @override
  _$VoteMessageCopyWith<_VoteMessage> get copyWith =>
      __$VoteMessageCopyWithImpl<_VoteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result text(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes),
    @required
        Result question(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    @required
        Result vote(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId),
  }) {
    assert(text != null);
    assert(question != null);
    assert(vote != null);
    return vote(user, this.text, imageUrl, emotes, questionId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes),
    Result question(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, String question, int emotesOffset),
    Result vote(String user, String text, String imageUrl,
        Map<dynamic, dynamic> emotes, int questionId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (vote != null) {
      return vote(user, this.text, imageUrl, emotes, questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(_TextMessage value),
    @required Result question(_QuestionMessage value),
    @required Result vote(_VoteMessage value),
  }) {
    assert(text != null);
    assert(question != null);
    assert(vote != null);
    return vote(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(_TextMessage value),
    Result question(_QuestionMessage value),
    Result vote(_VoteMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (vote != null) {
      return vote(this);
    }
    return orElse();
  }
}

abstract class _VoteMessage implements ChatCommand {
  const factory _VoteMessage(String user, String text, String imageUrl,
      Map<dynamic, dynamic> emotes, int questionId) = _$_VoteMessage;

  @override
  String get user;
  @override
  String get text;
  @override
  String get imageUrl;
  @override
  Map<dynamic, dynamic> get emotes;
  int get questionId;
  @override
  _$VoteMessageCopyWith<_VoteMessage> get copyWith;
}
