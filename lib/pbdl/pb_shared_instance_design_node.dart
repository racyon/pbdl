import 'package:pbdl/input/sketch/entities/objects/override_value.dart';
import 'package:pbdl/input/sketch/helper/symbol_node_mixin.dart';
import 'package:pbdl/pbdl/pbdl_node.dart';
import 'abstract_design_node_factory.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pb_shared_instance_design_node.g.dart';

@JsonSerializable()
class PBSharedInstanceDesignNode extends PBDLNode
    with SymbolNodeMixin
    implements PBDLNodeFactory {
  String symbolID;
  List parameters;

  PBSharedInstanceDesignNode(
      {String UUID,
      this.overrideValues,
      String name,
      bool isVisible,
      boundaryRectangle,
      String type,
      style,
      prototypeNode,
      exportOptions,
      booleanOperation,
      bool isFixedToViewport,
      bool isFlippedVertical,
      bool isFlippedHorizontal,
      bool isLocked,
      layerListExpandedType,
      bool nameIsFixed,
      resizingConstraint,
      resizingType,
      num rotation,
      sharedStyleID,
      bool shouldBreakMaskChain,
      bool hasClippingMask,
      int clippingMaskMode,
      userInfo,
      bool maintainScrollPosition,
      num scale,
      this.symbolID,
      num verticalSpacing,
      num horizontalSpacing,
      this.pbdfType})
      : super(UUID, name, isVisible, boundaryRectangle, type, style,
            prototypeNode) {
    pbdfType = 'symbol_instance';
  }

  @override
  String pbdfType = 'symbol_instance';

  @override
  PBDLNode createPBDLNode(Map<String, dynamic> json) =>
      PBSharedInstanceDesignNode.fromJson(json);
  factory PBSharedInstanceDesignNode.fromJson(Map<String, dynamic> json) =>
      _$PBSharedInstanceDesignNodeFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PBSharedInstanceDesignNodeToJson(this);

  ///Converting the [OverridableValue] into [PBSharedParameterValue] to be processed in intermediate phase.
  // List<PBSharedParameterValue> _extractParameters() {
  //   Set<String> ovrNames = {};
  //   List<PBSharedParameterValue> sharedParameters = [];
  //   for (var overrideValue in overrideValues) {
  //     if (!ovrNames.contains(overrideValue.overrideName)) {
  //       var properties = extractParameter(overrideValue.overrideName);
  //       sharedParameters.add(PBSharedParameterValue(
  //           properties['type'],
  //           overrideValue.value,
  //           properties['uuid'],
  //           overrideValue.overrideName));
  //       ovrNames.add(overrideValue.overrideName);
  //     }
  //   }

  //   return sharedParameters;
  // }

  final List<OverridableValue> overrideValues;
}