// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pbdl_override_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PBDLOverrideProperty _$PBDLOverridePropertyFromJson(Map<String, dynamic> json) {
  return PBDLOverrideProperty(
    json['UUID'] as String,
    json['name'] as String,
    json['type'] as String,
    json['value'],
  )..child = json['child'] == null
      ? null
      : PBDLNode.fromJson(json['child'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PBDLOverridePropertyToJson(
        PBDLOverrideProperty instance) =>
    <String, dynamic>{
      'UUID': instance.UUID,
      'name': instance.name,
      'child': instance.child?.toJson(),
      'value': instance.value,
      'type': instance.type,
    };