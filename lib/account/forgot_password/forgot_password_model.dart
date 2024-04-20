import '/componente/title_author/title_author_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Title_Author component.
  late TitleAuthorModel titleAuthorModel;
  // State field(s) for emailAddress_recover widget.
  FocusNode? emailAddressRecoverFocusNode;
  TextEditingController? emailAddressRecoverTextController;
  String? Function(BuildContext, String?)?
      emailAddressRecoverTextControllerValidator;

  @override
  void initState(BuildContext context) {
    titleAuthorModel = createModel(context, () => TitleAuthorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titleAuthorModel.dispose();
    emailAddressRecoverFocusNode?.dispose();
    emailAddressRecoverTextController?.dispose();
  }
}
