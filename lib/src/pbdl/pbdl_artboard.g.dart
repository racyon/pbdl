// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pbdl_artboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PBDLArtboard _$PBDLArtboardFromJson(Map<String, dynamic> json) {
  return PBDLArtboard(
    backgroundColor: json['backgroundColor'] == null
        ? null
        : PBDLColor.fromJson(json['backgroundColor'] as Map<String, dynamic>),
    isFlowHome: json['isFlowHome'],
    UUID: json['UUID'],
    boundaryRectangle: json['boundaryRectangle'] == null
        ? null
        : PBDLFrame.fromJson(json['boundaryRectangle'] as Map<String, dynamic>),
    isVisible: json['isVisible'],
    name: json['name'],
    prototypeNodeUUID: json['prototypeNodeUUID'],
    type: json['type'],
    style: json['style'] == null
        ? null
        : PBDLStyle.fromJson(json['style'] as Map<String, dynamic>),
    children: (json['children'] as List)
        ?.map((e) =>
            e == null ? null : PBDLNode.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..child = json['child'] == null
        ? null
        : PBDLNode.fromJson(json['child'] as Map<String, dynamic>)
    ..pbdfType = json['pbdfType'] as String;
}

Map<String, dynamic> _$PBDLArtboardToJson(PBDLArtboard instance) =>
    <String, dynamic>{
      'UUID': instance.UUID,
      'name': instance.name,
      'isVisible': instance.isVisible,
      'type': instance.type,
      'style': instance.style?.toJson(),
      'prototypeNodeUUID': instance.prototypeNodeUUID,
      'child': instance.child?.toJson(),
      'backgroundColor': instance.backgroundColor?.toJson(),
      'boundaryRectangle': instance.boundaryRectangle?.toJson(),
      'isFlowHome': instance.isFlowHome,
      'children': instance.children?.map((e) => e?.toJson())?.toList(),
      'pbdfType': instance.pbdfType,
    };
