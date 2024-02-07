import '/flutter_flow/flutter_flow_util.dart';
import 'servicii_widget.dart' show ServiciiWidget;
import 'package:flutter/material.dart';

class ServiciiModel extends FlutterFlowModel<ServiciiWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for title_1 widget.
  FocusNode? title1FocusNode;
  TextEditingController? title1Controller;
  String? Function(BuildContext, String?)? title1ControllerValidator;
  // State field(s) for time_1 widget.
  FocusNode? time1FocusNode;
  TextEditingController? time1Controller;
  String? Function(BuildContext, String?)? time1ControllerValidator;
  // State field(s) for price_1 widget.
  FocusNode? price1FocusNode;
  TextEditingController? price1Controller;
  String? Function(BuildContext, String?)? price1ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    title1FocusNode?.dispose();
    title1Controller?.dispose();

    time1FocusNode?.dispose();
    time1Controller?.dispose();

    price1FocusNode?.dispose();
    price1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
