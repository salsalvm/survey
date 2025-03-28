import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'survey_model.freezed.dart';
part 'survey_model.g.dart';

@freezed
@HiveType(typeId: 0) // Hive type ID
class SurveyModel with _$SurveyModel {
  const factory SurveyModel({
    @HiveField(0) @Default('')  schoolName,
    @HiveField(1) @Default(0) int totalStudents,
    @HiveField(2) @Default(0)int totalTeachers,
    @HiveField(3) @Default(0)int numberOfLos,
    @HiveField(4) @Default(0) int numberOfWinners,
    @HiveField(5) @Default(0) int schoolRank,
    @HiveField(6) @Default('') String id,
  }) = _SurveyModel;

  factory SurveyModel.fromJson(Map<String, dynamic> json) =>
      _$SurveyModelFromJson(json);

  // Generate a 5-digit unique ID
  static String generateUniqueId() {
    final random = Random();
    return (random.nextInt(90000) + 10000).toString();
  }
}
