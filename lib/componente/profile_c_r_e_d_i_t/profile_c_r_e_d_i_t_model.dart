import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_c_r_e_d_i_t_widget.dart' show ProfileCREDITWidget;
import 'package:flutter/material.dart';

class ProfileCREDITModel extends FlutterFlowModel<ProfileCREDITWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for yourPhone widget.
  FocusNode? yourPhoneFocusNode;
  TextEditingController? yourPhoneTextController;
  String? Function(BuildContext, String?)? yourPhoneTextControllerValidator;
  // State field(s) for yourLocation widget.
  String? yourLocationValue;
  FormFieldController<String>? yourLocationValueController;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourPhoneFocusNode?.dispose();
    yourPhoneTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
