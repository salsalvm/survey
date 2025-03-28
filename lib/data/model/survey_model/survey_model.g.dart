// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyModelAdapter extends TypeAdapter<SurveyModel> {
  @override
  final int typeId = 0;

  @override
  SurveyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SurveyModel(
      schoolName: fields[0] as dynamic,
      totalStudents: fields[1] as int,
      totalTeachers: fields[2] as int,
      numberOfLos: fields[3] as int,
      numberOfWinners: fields[4] as int,
      schoolRank: fields[5] as int,
      id: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SurveyModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.schoolName)
      ..writeByte(1)
      ..write(obj.totalStudents)
      ..writeByte(2)
      ..write(obj.totalTeachers)
      ..writeByte(3)
      ..write(obj.numberOfLos)
      ..writeByte(4)
      ..write(obj.numberOfWinners)
      ..writeByte(5)
      ..write(obj.schoolRank)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyModelImpl _$$SurveyModelImplFromJson(Map<String, dynamic> json) =>
    _$SurveyModelImpl(
      schoolName: json['schoolName'] ?? '',
      totalStudents: (json['totalStudents'] as num?)?.toInt() ?? 0,
      totalTeachers: (json['totalTeachers'] as num?)?.toInt() ?? 0,
      numberOfLos: (json['numberOfLos'] as num?)?.toInt() ?? 0,
      numberOfWinners: (json['numberOfWinners'] as num?)?.toInt() ?? 0,
      schoolRank: (json['schoolRank'] as num?)?.toInt() ?? 0,
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$SurveyModelImplToJson(_$SurveyModelImpl instance) =>
    <String, dynamic>{
      'schoolName': instance.schoolName,
      'totalStudents': instance.totalStudents,
      'totalTeachers': instance.totalTeachers,
      'numberOfLos': instance.numberOfLos,
      'numberOfWinners': instance.numberOfWinners,
      'schoolRank': instance.schoolRank,
      'id': instance.id,
    };
