// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() getSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? getSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? getSurveyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logout value) logout,
    required TResult Function(GetSurveyList value) getSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logout value)? logout,
    TResult? Function(GetSurveyList value)? getSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logout value)? logout,
    TResult Function(GetSurveyList value)? getSurveyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'DashboardEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() getSurveyList,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? getSurveyList,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? getSurveyList,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logout value) logout,
    required TResult Function(GetSurveyList value) getSurveyList,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logout value)? logout,
    TResult? Function(GetSurveyList value)? getSurveyList,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logout value)? logout,
    TResult Function(GetSurveyList value)? getSurveyList,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements DashboardEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$GetSurveyListImplCopyWith<$Res> {
  factory _$$GetSurveyListImplCopyWith(
          _$GetSurveyListImpl value, $Res Function(_$GetSurveyListImpl) then) =
      __$$GetSurveyListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSurveyListImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetSurveyListImpl>
    implements _$$GetSurveyListImplCopyWith<$Res> {
  __$$GetSurveyListImplCopyWithImpl(
      _$GetSurveyListImpl _value, $Res Function(_$GetSurveyListImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSurveyListImpl implements GetSurveyList {
  const _$GetSurveyListImpl();

  @override
  String toString() {
    return 'DashboardEvent.getSurveyList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSurveyListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() getSurveyList,
  }) {
    return getSurveyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? getSurveyList,
  }) {
    return getSurveyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? getSurveyList,
    required TResult orElse(),
  }) {
    if (getSurveyList != null) {
      return getSurveyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logout value) logout,
    required TResult Function(GetSurveyList value) getSurveyList,
  }) {
    return getSurveyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logout value)? logout,
    TResult? Function(GetSurveyList value)? getSurveyList,
  }) {
    return getSurveyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logout value)? logout,
    TResult Function(GetSurveyList value)? getSurveyList,
    required TResult orElse(),
  }) {
    if (getSurveyList != null) {
      return getSurveyList(this);
    }
    return orElse();
  }
}

abstract class GetSurveyList implements DashboardEvent {
  const factory GetSurveyList() = _$GetSurveyListImpl;
}

/// @nodoc
mixin _$DashboardState {
  String get msg => throw _privateConstructorUsedError;
  LoadingState get isLoadingState => throw _privateConstructorUsedError;
  List<SurveyModel> get sureyList => throw _privateConstructorUsedError;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {String msg, LoadingState isLoadingState, List<SurveyModel> sureyList});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? isLoadingState = null,
    Object? sureyList = null,
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
      sureyList: null == sureyList
          ? _value.sureyList
          : sureyList // ignore: cast_nullable_to_non_nullable
              as List<SurveyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String msg, LoadingState isLoadingState, List<SurveyModel> sureyList});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? isLoadingState = null,
    Object? sureyList = null,
  }) {
    return _then(_$DashboardStateImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingState: null == isLoadingState
          ? _value.isLoadingState
          : isLoadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      sureyList: null == sureyList
          ? _value._sureyList
          : sureyList // ignore: cast_nullable_to_non_nullable
              as List<SurveyModel>,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {required this.msg,
      required this.isLoadingState,
      required final List<SurveyModel> sureyList})
      : _sureyList = sureyList;

  @override
  final String msg;
  @override
  final LoadingState isLoadingState;
  final List<SurveyModel> _sureyList;
  @override
  List<SurveyModel> get sureyList {
    if (_sureyList is EqualUnmodifiableListView) return _sureyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sureyList);
  }

  @override
  String toString() {
    return 'DashboardState(msg: $msg, isLoadingState: $isLoadingState, sureyList: $sureyList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.isLoadingState, isLoadingState) ||
                other.isLoadingState == isLoadingState) &&
            const DeepCollectionEquality()
                .equals(other._sureyList, _sureyList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, isLoadingState,
      const DeepCollectionEquality().hash(_sureyList));

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final String msg,
      required final LoadingState isLoadingState,
      required final List<SurveyModel> sureyList}) = _$DashboardStateImpl;

  @override
  String get msg;
  @override
  LoadingState get isLoadingState;
  @override
  List<SurveyModel> get sureyList;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
