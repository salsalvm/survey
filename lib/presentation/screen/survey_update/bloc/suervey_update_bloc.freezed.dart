// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suervey_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuerveyUpdateEvent {
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

  /// Create a copy of SuerveyUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuerveyUpdateEventCopyWith<SuerveyUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuerveyUpdateEventCopyWith<$Res> {
  factory $SuerveyUpdateEventCopyWith(
          SuerveyUpdateEvent value, $Res Function(SuerveyUpdateEvent) then) =
      _$SuerveyUpdateEventCopyWithImpl<$Res, SuerveyUpdateEvent>;
  @useResult
  $Res call({SurveyModel body});

  $SurveyModelCopyWith<$Res> get body;
}

/// @nodoc
class _$SuerveyUpdateEventCopyWithImpl<$Res, $Val extends SuerveyUpdateEvent>
    implements $SuerveyUpdateEventCopyWith<$Res> {
  _$SuerveyUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuerveyUpdateEvent
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

  /// Create a copy of SuerveyUpdateEvent
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
    implements $SuerveyUpdateEventCopyWith<$Res> {
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
    extends _$SuerveyUpdateEventCopyWithImpl<$Res, _$AddSurveyImpl>
    implements _$$AddSurveyImplCopyWith<$Res> {
  __$$AddSurveyImplCopyWithImpl(
      _$AddSurveyImpl _value, $Res Function(_$AddSurveyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuerveyUpdateEvent
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
    return 'SuerveyUpdateEvent.addSurvey(body: $body)';
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

  /// Create a copy of SuerveyUpdateEvent
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

abstract class AddSurvey implements SuerveyUpdateEvent {
  const factory AddSurvey({required final SurveyModel body}) = _$AddSurveyImpl;

  @override
  SurveyModel get body;

  /// Create a copy of SuerveyUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSurveyImplCopyWith<_$AddSurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSurveyImplCopyWith<$Res>
    implements $SuerveyUpdateEventCopyWith<$Res> {
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
    extends _$SuerveyUpdateEventCopyWithImpl<$Res, _$UpdateSurveyImpl>
    implements _$$UpdateSurveyImplCopyWith<$Res> {
  __$$UpdateSurveyImplCopyWithImpl(
      _$UpdateSurveyImpl _value, $Res Function(_$UpdateSurveyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuerveyUpdateEvent
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
    return 'SuerveyUpdateEvent.updateSurvey(body: $body)';
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

  /// Create a copy of SuerveyUpdateEvent
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

abstract class UpdateSurvey implements SuerveyUpdateEvent {
  const factory UpdateSurvey({required final SurveyModel body}) =
      _$UpdateSurveyImpl;

  @override
  SurveyModel get body;

  /// Create a copy of SuerveyUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSurveyImplCopyWith<_$UpdateSurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SuerveyUpdateState {
  String get msg => throw _privateConstructorUsedError;
  LoadingState get isLoadingState => throw _privateConstructorUsedError;

  /// Create a copy of SuerveyUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuerveyUpdateStateCopyWith<SuerveyUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuerveyUpdateStateCopyWith<$Res> {
  factory $SuerveyUpdateStateCopyWith(
          SuerveyUpdateState value, $Res Function(SuerveyUpdateState) then) =
      _$SuerveyUpdateStateCopyWithImpl<$Res, SuerveyUpdateState>;
  @useResult
  $Res call({String msg, LoadingState isLoadingState});
}

/// @nodoc
class _$SuerveyUpdateStateCopyWithImpl<$Res, $Val extends SuerveyUpdateState>
    implements $SuerveyUpdateStateCopyWith<$Res> {
  _$SuerveyUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuerveyUpdateState
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
abstract class _$$SuerveyUpdateStateImplCopyWith<$Res>
    implements $SuerveyUpdateStateCopyWith<$Res> {
  factory _$$SuerveyUpdateStateImplCopyWith(_$SuerveyUpdateStateImpl value,
          $Res Function(_$SuerveyUpdateStateImpl) then) =
      __$$SuerveyUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg, LoadingState isLoadingState});
}

/// @nodoc
class __$$SuerveyUpdateStateImplCopyWithImpl<$Res>
    extends _$SuerveyUpdateStateCopyWithImpl<$Res, _$SuerveyUpdateStateImpl>
    implements _$$SuerveyUpdateStateImplCopyWith<$Res> {
  __$$SuerveyUpdateStateImplCopyWithImpl(_$SuerveyUpdateStateImpl _value,
      $Res Function(_$SuerveyUpdateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuerveyUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? isLoadingState = null,
  }) {
    return _then(_$SuerveyUpdateStateImpl(
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

class _$SuerveyUpdateStateImpl implements _SuerveyUpdateState {
  _$SuerveyUpdateStateImpl({required this.msg, required this.isLoadingState});

  @override
  final String msg;
  @override
  final LoadingState isLoadingState;

  @override
  String toString() {
    return 'SuerveyUpdateState(msg: $msg, isLoadingState: $isLoadingState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuerveyUpdateStateImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.isLoadingState, isLoadingState) ||
                other.isLoadingState == isLoadingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, isLoadingState);

  /// Create a copy of SuerveyUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuerveyUpdateStateImplCopyWith<_$SuerveyUpdateStateImpl> get copyWith =>
      __$$SuerveyUpdateStateImplCopyWithImpl<_$SuerveyUpdateStateImpl>(
          this, _$identity);
}

abstract class _SuerveyUpdateState implements SuerveyUpdateState {
  factory _SuerveyUpdateState(
      {required final String msg,
      required final LoadingState isLoadingState}) = _$SuerveyUpdateStateImpl;

  @override
  String get msg;
  @override
  LoadingState get isLoadingState;

  /// Create a copy of SuerveyUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuerveyUpdateStateImplCopyWith<_$SuerveyUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
