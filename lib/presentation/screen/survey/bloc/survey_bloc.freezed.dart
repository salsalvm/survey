// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SurveyEvent {
  SurveyModel get body => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurveyModel body) addSurvey,
    required TResult Function(SurveyModel body) updateSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurveyModel body)? addSurvey,
    TResult? Function(SurveyModel body)? updateSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurveyModel body)? addSurvey,
    TResult Function(SurveyModel body)? updateSurvey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSurvey value) addSurvey,
    required TResult Function(UpdateSurvey value) updateSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSurvey value)? addSurvey,
    TResult? Function(UpdateSurvey value)? updateSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSurvey value)? addSurvey,
    TResult Function(UpdateSurvey value)? updateSurvey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyEventCopyWith<SurveyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyEventCopyWith<$Res> {
  factory $SurveyEventCopyWith(
          SurveyEvent value, $Res Function(SurveyEvent) then) =
      _$SurveyEventCopyWithImpl<$Res, SurveyEvent>;
  @useResult
  $Res call({SurveyModel body});

  $SurveyModelCopyWith<$Res> get body;
}

/// @nodoc
class _$SurveyEventCopyWithImpl<$Res, $Val extends SurveyEvent>
    implements $SurveyEventCopyWith<$Res> {
  _$SurveyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SurveyModel,
    ) as $Val);
  }

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurveyModelCopyWith<$Res> get body {
    return $SurveyModelCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddSurveyImplCopyWith<$Res>
    implements $SurveyEventCopyWith<$Res> {
  factory _$$AddSurveyImplCopyWith(
          _$AddSurveyImpl value, $Res Function(_$AddSurveyImpl) then) =
      __$$AddSurveyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SurveyModel body});

  @override
  $SurveyModelCopyWith<$Res> get body;
}

/// @nodoc
class __$$AddSurveyImplCopyWithImpl<$Res>
    extends _$SurveyEventCopyWithImpl<$Res, _$AddSurveyImpl>
    implements _$$AddSurveyImplCopyWith<$Res> {
  __$$AddSurveyImplCopyWithImpl(
      _$AddSurveyImpl _value, $Res Function(_$AddSurveyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$AddSurveyImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SurveyModel,
    ));
  }
}

/// @nodoc

class _$AddSurveyImpl implements AddSurvey {
  const _$AddSurveyImpl({required this.body});

  @override
  final SurveyModel body;

  @override
  String toString() {
    return 'SurveyEvent.addSurvey(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSurveyImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSurveyImplCopyWith<_$AddSurveyImpl> get copyWith =>
      __$$AddSurveyImplCopyWithImpl<_$AddSurveyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurveyModel body) addSurvey,
    required TResult Function(SurveyModel body) updateSurvey,
  }) {
    return addSurvey(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurveyModel body)? addSurvey,
    TResult? Function(SurveyModel body)? updateSurvey,
  }) {
    return addSurvey?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurveyModel body)? addSurvey,
    TResult Function(SurveyModel body)? updateSurvey,
    required TResult orElse(),
  }) {
    if (addSurvey != null) {
      return addSurvey(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSurvey value) addSurvey,
    required TResult Function(UpdateSurvey value) updateSurvey,
  }) {
    return addSurvey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSurvey value)? addSurvey,
    TResult? Function(UpdateSurvey value)? updateSurvey,
  }) {
    return addSurvey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSurvey value)? addSurvey,
    TResult Function(UpdateSurvey value)? updateSurvey,
    required TResult orElse(),
  }) {
    if (addSurvey != null) {
      return addSurvey(this);
    }
    return orElse();
  }
}

abstract class AddSurvey implements SurveyEvent {
  const factory AddSurvey({required final SurveyModel body}) = _$AddSurveyImpl;

  @override
  SurveyModel get body;

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSurveyImplCopyWith<_$AddSurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSurveyImplCopyWith<$Res>
    implements $SurveyEventCopyWith<$Res> {
  factory _$$UpdateSurveyImplCopyWith(
          _$UpdateSurveyImpl value, $Res Function(_$UpdateSurveyImpl) then) =
      __$$UpdateSurveyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SurveyModel body});

  @override
  $SurveyModelCopyWith<$Res> get body;
}

/// @nodoc
class __$$UpdateSurveyImplCopyWithImpl<$Res>
    extends _$SurveyEventCopyWithImpl<$Res, _$UpdateSurveyImpl>
    implements _$$UpdateSurveyImplCopyWith<$Res> {
  __$$UpdateSurveyImplCopyWithImpl(
      _$UpdateSurveyImpl _value, $Res Function(_$UpdateSurveyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$UpdateSurveyImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SurveyModel,
    ));
  }
}

/// @nodoc

class _$UpdateSurveyImpl implements UpdateSurvey {
  const _$UpdateSurveyImpl({required this.body});

  @override
  final SurveyModel body;

  @override
  String toString() {
    return 'SurveyEvent.updateSurvey(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSurveyImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSurveyImplCopyWith<_$UpdateSurveyImpl> get copyWith =>
      __$$UpdateSurveyImplCopyWithImpl<_$UpdateSurveyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurveyModel body) addSurvey,
    required TResult Function(SurveyModel body) updateSurvey,
  }) {
    return updateSurvey(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurveyModel body)? addSurvey,
    TResult? Function(SurveyModel body)? updateSurvey,
  }) {
    return updateSurvey?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurveyModel body)? addSurvey,
    TResult Function(SurveyModel body)? updateSurvey,
    required TResult orElse(),
  }) {
    if (updateSurvey != null) {
      return updateSurvey(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSurvey value) addSurvey,
    required TResult Function(UpdateSurvey value) updateSurvey,
  }) {
    return updateSurvey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSurvey value)? addSurvey,
    TResult? Function(UpdateSurvey value)? updateSurvey,
  }) {
    return updateSurvey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSurvey value)? addSurvey,
    TResult Function(UpdateSurvey value)? updateSurvey,
    required TResult orElse(),
  }) {
    if (updateSurvey != null) {
      return updateSurvey(this);
    }
    return orElse();
  }
}

abstract class UpdateSurvey implements SurveyEvent {
  const factory UpdateSurvey({required final SurveyModel body}) =
      _$UpdateSurveyImpl;

  @override
  SurveyModel get body;

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSurveyImplCopyWith<_$UpdateSurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurveyState {
  String get msg => throw _privateConstructorUsedError;
  LoadingState get isLoadingState => throw _privateConstructorUsedError;

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyStateCopyWith<SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyStateCopyWith<$Res> {
  factory $SurveyStateCopyWith(
          SurveyState value, $Res Function(SurveyState) then) =
      _$SurveyStateCopyWithImpl<$Res, SurveyState>;
  @useResult
  $Res call({String msg, LoadingState isLoadingState});
}

/// @nodoc
class _$SurveyStateCopyWithImpl<$Res, $Val extends SurveyState>
    implements $SurveyStateCopyWith<$Res> {
  _$SurveyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? isLoadingState = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingState: null == isLoadingState
          ? _value.isLoadingState
          : isLoadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyStateImplCopyWith<$Res>
    implements $SurveyStateCopyWith<$Res> {
  factory _$$SurveyStateImplCopyWith(
          _$SurveyStateImpl value, $Res Function(_$SurveyStateImpl) then) =
      __$$SurveyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg, LoadingState isLoadingState});
}

/// @nodoc
class __$$SurveyStateImplCopyWithImpl<$Res>
    extends _$SurveyStateCopyWithImpl<$Res, _$SurveyStateImpl>
    implements _$$SurveyStateImplCopyWith<$Res> {
  __$$SurveyStateImplCopyWithImpl(
      _$SurveyStateImpl _value, $Res Function(_$SurveyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? isLoadingState = null,
  }) {
    return _then(_$SurveyStateImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingState: null == isLoadingState
          ? _value.isLoadingState
          : isLoadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ));
  }
}

/// @nodoc

class _$SurveyStateImpl implements _SurveyState {
  _$SurveyStateImpl({required this.msg, required this.isLoadingState});

  @override
  final String msg;
  @override
  final LoadingState isLoadingState;

  @override
  String toString() {
    return 'SurveyState(msg: $msg, isLoadingState: $isLoadingState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyStateImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.isLoadingState, isLoadingState) ||
                other.isLoadingState == isLoadingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, isLoadingState);

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyStateImplCopyWith<_$SurveyStateImpl> get copyWith =>
      __$$SurveyStateImplCopyWithImpl<_$SurveyStateImpl>(this, _$identity);
}

abstract class _SurveyState implements SurveyState {
  factory _SurveyState(
      {required final String msg,
      required final LoadingState isLoadingState}) = _$SurveyStateImpl;

  @override
  String get msg;
  @override
  LoadingState get isLoadingState;

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyStateImplCopyWith<_$SurveyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
