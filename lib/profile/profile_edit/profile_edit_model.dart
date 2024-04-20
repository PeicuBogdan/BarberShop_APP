import '/componente/profile_c_r_e_d_i_t/profile_c_r_e_d_i_t_widget.dart';
import '/componente/title_author/title_author_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_edit_widget.dart' show ProfileEditWidget;
import 'package:flutter/material.dart';

class ProfileEditModel extends FlutterFlowModel<ProfileEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Title_Author component.
  late TitleAuthorModel titleAuthorModel;
  // Model for Profile_CR_EDIT component.
  late ProfileCREDITModel profileCREDITModel;

  @override
  void initState(BuildContext context) {
    titleAuthorModel = createModel(context, () => TitleAuthorModel());
    profileCREDITModel = createModel(context, () => ProfileCREDITModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titleAuthorModel.dispose();
    profileCREDITModel.dispose();
  }
}
