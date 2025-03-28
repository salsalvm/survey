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
      place: fields[1] as String,
      schoolRank: fields[2] as int,
      id: fields[3] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, SurveyModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.schoolName)
      ..writeByte(1)
      ..write(obj.place)
      ..writeByte(2)
      ..write(obj.schoolRank)
      ..writeByte(3)
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
      place: json['place'] as String? ?? '',
      schoolRank: (json['schoolRank'] as num?)?.toInt() ?? 0,
      id: json['id'] ?? '',
    );

Map<String, dynamic> _$$SurveyModelImplToJson(_$SurveyModelImpl instance) =>
    <String, dynamic>{
      'schoolName': instance.schoolName,
      'place': instance.place,
      'schoolRank': instance.schoolRank,
      'id': instance.id,
    };
