// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurveyModel _$SurveyModelFromJson(Map<String, dynamic> json) {
  return _SurveyModel.fromJson(json);
}

/// @nodoc
mixin _$SurveyModel {
  @HiveField(0)
  dynamic get schoolName => throw _privateConstructorUsedError;
  @HiveField(1)
  String get place => throw _privateConstructorUsedError;
  @HiveField(2)
  int get schoolRank => throw _privateConstructorUsedError;
  @HiveField(3)
  dynamic get id => throw _privateConstructorUsedError;

  /// Serializes this SurveyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyModelCopyWith<SurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyModelCopyWith<$Res> {
  factory $SurveyModelCopyWith(
          SurveyModel value, $Res Function(SurveyModel) then) =
      _$SurveyModelCopyWithImpl<$Res, SurveyModel>;
  @useResult
  $Res call(
      {@HiveField(0) dynamic schoolName,
      @HiveField(1) String place,
      @HiveField(2) int schoolRank,
      @HiveField(3) dynamic id});
}

/// @nodoc
class _$SurveyModelCopyWithImpl<$Res, $Val extends SurveyModel>
    implements $SurveyModelCopyWith<$Res> {
  _$SurveyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? place = null,
    Object? schoolRank = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      schoolRank: null == schoolRank
          ? _value.schoolRank
          : schoolRank // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyModelImplCopyWith<$Res>
    implements $SurveyModelCopyWith<$Res> {
  factory _$$SurveyModelImplCopyWith(
          _$SurveyModelImpl value, $Res Function(_$SurveyModelImpl) then) =
      __$$SurveyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) dynamic schoolName,
      @HiveField(1) String place,
      @HiveField(2) int schoolRank,
      @HiveField(3) dynamic id});
}

/// @nodoc
class __$$SurveyModelImplCopyWithImpl<$Res>
    extends _$SurveyModelCopyWithImpl<$Res, _$SurveyModelImpl>
    implements _$$SurveyModelImplCopyWith<$Res> {
  __$$SurveyModelImplCopyWithImpl(
      _$SurveyModelImpl _value, $Res Function(_$SurveyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? place = null,
    Object? schoolRank = null,
    Object? id = freezed,
  }) {
    return _then(_$SurveyModelImpl(
      schoolName: freezed == schoolName ? _value.schoolName! : schoolName,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      schoolRank: null == schoolRank
          ? _value.schoolRank
          : schoolRank // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyModelImpl implements _SurveyModel {
  const _$SurveyModelImpl(
      {@HiveField(0) this.schoolName = '',
      @HiveField(1) this.place = '',
      @HiveField(2) this.schoolRank = 0,
      @HiveField(3) this.id = ''});

  factory _$SurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final dynamic schoolName;
  @override
  @JsonKey()
  @HiveField(1)
  final String place;
  @override
  @JsonKey()
  @HiveField(2)
  final int schoolRank;
  @override
  @JsonKey()
  @HiveField(3)
  final dynamic id;

  @override
  String toString() {
    return 'SurveyModel(schoolName: $schoolName, place: $place, schoolRank: $schoolRank, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyModelImpl &&
            const DeepCollectionEquality()
                .equals(other.schoolName, schoolName) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.schoolRank, schoolRank) ||
                other.schoolRank == schoolRank) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schoolName),
      place,
      schoolRank,
      const DeepCollectionEquality().hash(id));

  /// Create a copy of SurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyModelImplCopyWith<_$SurveyModelImpl> get copyWith =>
      __$$SurveyModelImplCopyWithImpl<_$SurveyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyModelImplToJson(
      this,
    );
  }
}

abstract class _SurveyModel implements SurveyModel {
  const factory _SurveyModel(
      {@HiveField(0) final dynamic schoolName,
      @HiveField(1) final String place,
      @HiveField(2) final int schoolRank,
      @HiveField(3) final dynamic id}) = _$SurveyModelImpl;

  factory _SurveyModel.fromJson(Map<String, dynamic> json) =
      _$SurveyModelImpl.fromJson;

  @override
  @HiveField(0)
  dynamic get schoolName;
  @override
  @HiveField(1)
  String get place;
  @override
  @HiveField(2)
  int get schoolRank;
  @override
  @HiveField(3)
  dynamic get id;

  /// Create a copy of SurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyModelImplCopyWith<_$SurveyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
