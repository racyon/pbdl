// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pbdl_frame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PBDLFrame _$PBDLFrameFromJson(Map<String, dynamic> json) {
  return PBDLFrame(
    constrainProportions: json['constrainProportions'] as bool,
    x: (json['x'] as num)?.toDouble(),
    y: (json['y'] as num)?.toDouble(),
    width: (json['width'] as num)?.toDouble(),
    height: (json['height'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$PBDLFrameToJson(PBDLFrame instance) => <String, dynamic>{
      'constrainProportions': instance.constrainProportions,
      'height': instance.height,
      'width': instance.width,
      'x': instance.x,
      'y': instance.y,
    };
