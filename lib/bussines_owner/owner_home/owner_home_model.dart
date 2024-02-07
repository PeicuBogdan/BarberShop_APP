import '/componente/servicii/servicii_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'owner_home_widget.dart' show OwnerHomeWidget;
import 'package:flutter/material.dart';

class OwnerHomeModel extends FlutterFlowModel<OwnerHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Servicii component.
  late ServiciiModel serviciiModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    serviciiModel = createModel(context, () => ServiciiModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    serviciiModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
