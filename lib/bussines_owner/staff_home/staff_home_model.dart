import '/flutter_flow/flutter_flow_util.dart';
import 'staff_home_widget.dart' show StaffHomeWidget;
import 'package:flutter/material.dart';

class StaffHomeModel extends FlutterFlowModel<StaffHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
