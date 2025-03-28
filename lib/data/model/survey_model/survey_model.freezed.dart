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
  int get totalStudents => throw _privateConstructorUsedError;
  @HiveField(2)
  int get totalTeachers => throw _privateConstructorUsedError;
  @HiveField(3)
  int get numberOfLos => throw _privateConstructorUsedError;
  @HiveField(4)
  int get numberOfWinners => throw _privateConstructorUsedError;
  @HiveField(5)
  int get schoolRank => throw _privateConstructorUsedError;
  @HiveField(6)
  String get id => throw _privateConstructorUsedError;

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
      @HiveField(1) int totalStudents,
      @HiveField(2) int totalTeachers,
      @HiveField(3) int numberOfLos,
      @HiveField(4) int numberOfWinners,
      @HiveField(5) int schoolRank,
      @HiveField(6) String id});
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
    Object? totalStudents = null,
    Object? totalTeachers = null,
    Object? numberOfLos = null,
    Object? numberOfWinners = null,
    Object? schoolRank = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalStudents: null == totalStudents
          ? _value.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int,
      totalTeachers: null == totalTeachers
          ? _value.totalTeachers
          : totalTeachers // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfLos: null == numberOfLos
          ? _value.numberOfLos
          : numberOfLos // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfWinners: null == numberOfWinners
          ? _value.numberOfWinners
          : numberOfWinners // ignore: cast_nullable_to_non_nullable
              as int,
      schoolRank: null == schoolRank
          ? _value.schoolRank
          : schoolRank // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      @HiveField(1) int totalStudents,
      @HiveField(2) int totalTeachers,
      @HiveField(3) int numberOfLos,
      @HiveField(4) int numberOfWinners,
      @HiveField(5) int schoolRank,
      @HiveField(6) String id});
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
    Object? totalStudents = null,
    Object? totalTeachers = null,
    Object? numberOfLos = null,
    Object? numberOfWinners = null,
    Object? schoolRank = null,
    Object? id = null,
  }) {
    return _then(_$SurveyModelImpl(
      schoolName: freezed == schoolName ? _value.schoolName! : schoolName,
      totalStudents: null == totalStudents
          ? _value.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int,
      totalTeachers: null == totalTeachers
          ? _value.totalTeachers
          : totalTeachers // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfLos: null == numberOfLos
          ? _value.numberOfLos
          : numberOfLos // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfWinners: null == numberOfWinners
          ? _value.numberOfWinners
          : numberOfWinners // ignore: cast_nullable_to_non_nullable
              as int,
      schoolRank: null == schoolRank
          ? _value.schoolRank
          : schoolRank // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyModelImpl implements _SurveyModel {
  const _$SurveyModelImpl(
      {@HiveField(0) this.schoolName = '',
      @HiveField(1) this.totalStudents = 0,
      @HiveField(2) this.totalTeachers = 0,
      @HiveField(3) this.numberOfLos = 0,
      @HiveField(4) this.numberOfWinners = 0,
      @HiveField(5) this.schoolRank = 0,
      @HiveField(6) this.id = ''});

  factory _$SurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final dynamic schoolName;
  @override
  @JsonKey()
  @HiveField(1)
  final int totalStudents;
  @override
  @JsonKey()
  @HiveField(2)
  final int totalTeachers;
  @override
  @JsonKey()
  @HiveField(3)
  final int numberOfLos;
  @override
  @JsonKey()
  @HiveField(4)
  final int numberOfWinners;
  @override
  @JsonKey()
  @HiveField(5)
  final int schoolRank;
  @override
  @JsonKey()
  @HiveField(6)
  final String id;

  @override
  String toString() {
    return 'SurveyModel(schoolName: $schoolName, totalStudents: $totalStudents, totalTeachers: $totalTeachers, numberOfLos: $numberOfLos, numberOfWinners: $numberOfWinners, schoolRank: $schoolRank, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyModelImpl &&
            const DeepCollectionEquality()
                .equals(other.schoolName, schoolName) &&
            (identical(other.totalStudents, totalStudents) ||
                other.totalStudents == totalStudents) &&
            (identical(other.totalTeachers, totalTeachers) ||
                other.totalTeachers == totalTeachers) &&
            (identical(other.numberOfLos, numberOfLos) ||
                other.numberOfLos == numberOfLos) &&
            (identical(other.numberOfWinners, numberOfWinners) ||
                other.numberOfWinners == numberOfWinners) &&
            (identical(other.schoolRank, schoolRank) ||
                other.schoolRank == schoolRank) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schoolName),
      totalStudents,
      totalTeachers,
      numberOfLos,
      numberOfWinners,
      schoolRank,
      id);

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
      @HiveField(1) final int totalStudents,
      @HiveField(2) final int totalTeachers,
      @HiveField(3) final int numberOfLos,
      @HiveField(4) final int numberOfWinners,
      @HiveField(5) final int schoolRank,
      @HiveField(6) final String id}) = _$SurveyModelImpl;

  factory _SurveyModel.fromJson(Map<String, dynamic> json) =
      _$SurveyModelImpl.fromJson;

  @override
  @HiveField(0)
  dynamic get schoolName;
  @override
  @HiveField(1)
  int get totalStudents;
  @override
  @HiveField(2)
  int get totalTeachers;
  @override
  @HiveField(3)
  int get numberOfLos;
  @override
  @HiveField(4)
  int get numberOfWinners;
  @override
  @HiveField(5)
  int get schoolRank;
  @override
  @HiveField(6)
  String get id;

  /// Create a copy of SurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyModelImplCopyWith<_$SurveyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
