// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      name: json['name'] as String? ?? '',
      mail: json['mail'] as String? ?? '',
      pass: json['pass'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mail': instance.mail,
      'pass': instance.pass,
    };
