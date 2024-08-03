// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatCommand {
  String get user => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get emotes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)
        text,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)
        question,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)
        vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatText value) text,
    required TResult Function(ChatQuestion value) question,
    required TResult Function(ChatVote value) vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatText value)? text,
    TResult? Function(ChatQuestion value)? question,
    TResult? Function(ChatVote value)? vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatText value)? text,
    TResult Function(ChatQuestion value)? question,
    TResult Function(ChatVote value)? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCommandCopyWith<ChatCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCommandCopyWith<$Res> {
  factory $ChatCommandCopyWith(
          ChatCommand value, $Res Function(ChatCommand) then) =
      _$ChatCommandCopyWithImpl<$Res, ChatCommand>;
  @useResult
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes});
}

/// @nodoc
class _$ChatCommandCopyWithImpl<$Res, $Val extends ChatCommand>
    implements $ChatCommandCopyWith<$Res> {
  _$ChatCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? text = null,
    Object? imageUrl = null,
    Object? emotes = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      emotes: null == emotes
          ? _value.emotes
          : emotes // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatTextImplCopyWith<$Res>
    implements $ChatCommandCopyWith<$Res> {
  factory _$$ChatTextImplCopyWith(
          _$ChatTextImpl value, $Res Function(_$ChatTextImpl) then) =
      __$$ChatTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes});
}

/// @nodoc
class __$$ChatTextImplCopyWithImpl<$Res>
    extends _$ChatCommandCopyWithImpl<$Res, _$ChatTextImpl>
    implements _$$ChatTextImplCopyWith<$Res> {
  __$$ChatTextImplCopyWithImpl(
      _$ChatTextImpl _value, $Res Function(_$ChatTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? text = null,
    Object? imageUrl = null,
    Object? emotes = null,
  }) {
    return _then(_$ChatTextImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == emotes
          ? _value._emotes
          : emotes // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$ChatTextImpl implements ChatText {
  const _$ChatTextImpl(
      this.user, this.text, this.imageUrl, final Map<dynamic, dynamic> emotes)
      : _emotes = emotes;

  @override
  final String user;
  @override
  final String text;
  @override
  final String imageUrl;
  final Map<dynamic, dynamic> _emotes;
  @override
  Map<dynamic, dynamic> get emotes {
    if (_emotes is EqualUnmodifiableMapView) return _emotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emotes);
  }

  @override
  String toString() {
    return 'ChatCommand.text(user: $user, text: $text, imageUrl: $imageUrl, emotes: $emotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatTextImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._emotes, _emotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, text, imageUrl,
      const DeepCollectionEquality().hash(_emotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatTextImplCopyWith<_$ChatTextImpl> get copyWith =>
      __$$ChatTextImplCopyWithImpl<_$ChatTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)
        text,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)
        question,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)
        vote,
  }) {
    return text(user, this.text, imageUrl, emotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
  }) {
    return text?.call(user, this.text, imageUrl, emotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(user, this.text, imageUrl, emotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatText value) text,
    required TResult Function(ChatQuestion value) question,
    required TResult Function(ChatVote value) vote,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatText value)? text,
    TResult? Function(ChatQuestion value)? question,
    TResult? Function(ChatVote value)? vote,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatText value)? text,
    TResult Function(ChatQuestion value)? question,
    TResult Function(ChatVote value)? vote,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class ChatText implements ChatCommand {
  const factory ChatText(
      final String user,
      final String text,
      final String imageUrl,
      final Map<dynamic, dynamic> emotes) = _$ChatTextImpl;

  @override
  String get user;
  @override
  String get text;
  @override
  String get imageUrl;
  @override
  Map<dynamic, dynamic> get emotes;
  @override
  @JsonKey(ignore: true)
  _$$ChatTextImplCopyWith<_$ChatTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatQuestionImplCopyWith<$Res>
    implements $ChatCommandCopyWith<$Res> {
  factory _$$ChatQuestionImplCopyWith(
          _$ChatQuestionImpl value, $Res Function(_$ChatQuestionImpl) then) =
      __$$ChatQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes,
      String question,
      int emotesOffset});
}

/// @nodoc
class __$$ChatQuestionImplCopyWithImpl<$Res>
    extends _$ChatCommandCopyWithImpl<$Res, _$ChatQuestionImpl>
    implements _$$ChatQuestionImplCopyWith<$Res> {
  __$$ChatQuestionImplCopyWithImpl(
      _$ChatQuestionImpl _value, $Res Function(_$ChatQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? text = null,
    Object? imageUrl = null,
    Object? emotes = null,
    Object? question = null,
    Object? emotesOffset = null,
  }) {
    return _then(_$ChatQuestionImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == emotes
          ? _value._emotes
          : emotes // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      null == emotesOffset
          ? _value.emotesOffset
          : emotesOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatQuestionImpl implements ChatQuestion {
  const _$ChatQuestionImpl(this.user, this.text, this.imageUrl,
      final Map<dynamic, dynamic> emotes, this.question, this.emotesOffset)
      : _emotes = emotes;

  @override
  final String user;
  @override
  final String text;
  @override
  final String imageUrl;
  final Map<dynamic, dynamic> _emotes;
  @override
  Map<dynamic, dynamic> get emotes {
    if (_emotes is EqualUnmodifiableMapView) return _emotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emotes);
  }

  @override
  final String question;
  @override
  final int emotesOffset;

  @override
  String toString() {
    return 'ChatCommand.question(user: $user, text: $text, imageUrl: $imageUrl, emotes: $emotes, question: $question, emotesOffset: $emotesOffset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatQuestionImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._emotes, _emotes) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.emotesOffset, emotesOffset) ||
                other.emotesOffset == emotesOffset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, text, imageUrl,
      const DeepCollectionEquality().hash(_emotes), question, emotesOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatQuestionImplCopyWith<_$ChatQuestionImpl> get copyWith =>
      __$$ChatQuestionImplCopyWithImpl<_$ChatQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)
        text,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)
        question,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)
        vote,
  }) {
    return question(
        user, this.text, imageUrl, emotes, this.question, emotesOffset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
  }) {
    return question?.call(
        user, this.text, imageUrl, emotes, this.question, emotesOffset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(
          user, this.text, imageUrl, emotes, this.question, emotesOffset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatText value) text,
    required TResult Function(ChatQuestion value) question,
    required TResult Function(ChatVote value) vote,
  }) {
    return question(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatText value)? text,
    TResult? Function(ChatQuestion value)? question,
    TResult? Function(ChatVote value)? vote,
  }) {
    return question?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatText value)? text,
    TResult Function(ChatQuestion value)? question,
    TResult Function(ChatVote value)? vote,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(this);
    }
    return orElse();
  }
}

abstract class ChatQuestion implements ChatCommand {
  const factory ChatQuestion(
      final String user,
      final String text,
      final String imageUrl,
      final Map<dynamic, dynamic> emotes,
      final String question,
      final int emotesOffset) = _$ChatQuestionImpl;

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
  @JsonKey(ignore: true)
  _$$ChatQuestionImplCopyWith<_$ChatQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatVoteImplCopyWith<$Res>
    implements $ChatCommandCopyWith<$Res> {
  factory _$$ChatVoteImplCopyWith(
          _$ChatVoteImpl value, $Res Function(_$ChatVoteImpl) then) =
      __$$ChatVoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String user,
      String text,
      String imageUrl,
      Map<dynamic, dynamic> emotes,
      int questionId});
}

/// @nodoc
class __$$ChatVoteImplCopyWithImpl<$Res>
    extends _$ChatCommandCopyWithImpl<$Res, _$ChatVoteImpl>
    implements _$$ChatVoteImplCopyWith<$Res> {
  __$$ChatVoteImplCopyWithImpl(
      _$ChatVoteImpl _value, $Res Function(_$ChatVoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? text = null,
    Object? imageUrl = null,
    Object? emotes = null,
    Object? questionId = null,
  }) {
    return _then(_$ChatVoteImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == emotes
          ? _value._emotes
          : emotes // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatVoteImpl implements ChatVote {
  const _$ChatVoteImpl(this.user, this.text, this.imageUrl,
      final Map<dynamic, dynamic> emotes, this.questionId)
      : _emotes = emotes;

  @override
  final String user;
  @override
  final String text;
  @override
  final String imageUrl;
  final Map<dynamic, dynamic> _emotes;
  @override
  Map<dynamic, dynamic> get emotes {
    if (_emotes is EqualUnmodifiableMapView) return _emotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emotes);
  }

  @override
  final int questionId;

  @override
  String toString() {
    return 'ChatCommand.vote(user: $user, text: $text, imageUrl: $imageUrl, emotes: $emotes, questionId: $questionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatVoteImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._emotes, _emotes) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, text, imageUrl,
      const DeepCollectionEquality().hash(_emotes), questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatVoteImplCopyWith<_$ChatVoteImpl> get copyWith =>
      __$$ChatVoteImplCopyWithImpl<_$ChatVoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)
        text,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)
        question,
    required TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)
        vote,
  }) {
    return vote(user, this.text, imageUrl, emotes, questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult? Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
  }) {
    return vote?.call(user, this.text, imageUrl, emotes, questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes)?
        text,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, String question, int emotesOffset)?
        question,
    TResult Function(String user, String text, String imageUrl,
            Map<dynamic, dynamic> emotes, int questionId)?
        vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(user, this.text, imageUrl, emotes, questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatText value) text,
    required TResult Function(ChatQuestion value) question,
    required TResult Function(ChatVote value) vote,
  }) {
    return vote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatText value)? text,
    TResult? Function(ChatQuestion value)? question,
    TResult? Function(ChatVote value)? vote,
  }) {
    return vote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatText value)? text,
    TResult Function(ChatQuestion value)? question,
    TResult Function(ChatVote value)? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(this);
    }
    return orElse();
  }
}

abstract class ChatVote implements ChatCommand {
  const factory ChatVote(
      final String user,
      final String text,
      final String imageUrl,
      final Map<dynamic, dynamic> emotes,
      final int questionId) = _$ChatVoteImpl;

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
  @JsonKey(ignore: true)
  _$$ChatVoteImplCopyWith<_$ChatVoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
