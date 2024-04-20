import '/flutter_flow/flutter_flow_util.dart';
import 'appointments_view_widget.dart' show AppointmentsViewWidget;
import 'package:flutter/material.dart';

class AppointmentsViewModel extends FlutterFlowModel<AppointmentsViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
