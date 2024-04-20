import '/flutter_flow/flutter_flow_util.dart';
import 'servicii_widget.dart' show ServiciiWidget;
import 'package:flutter/material.dart';

class ServiciiModel extends FlutterFlowModel<ServiciiWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for title_1 widget.
  FocusNode? title1FocusNode;
  TextEditingController? title1TextController;
  String? Function(BuildContext, String?)? title1TextControllerValidator;
  // State field(s) for time_1 widget.
  FocusNode? time1FocusNode;
  TextEditingController? time1TextController;
  String? Function(BuildContext, String?)? time1TextControllerValidator;
  // State field(s) for price_1 widget.
  FocusNode? price1FocusNode;
  TextEditingController? price1TextController;
  String? Function(BuildContext, String?)? price1TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    title1FocusNode?.dispose();
    title1TextController?.dispose();

    time1FocusNode?.dispose();
    time1TextController?.dispose();

    price1FocusNode?.dispose();
    price1TextController?.dispose();
  }
}
