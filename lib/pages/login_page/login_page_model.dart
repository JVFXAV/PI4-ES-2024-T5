import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailText widget.
  FocusNode? emailTextFocusNode;
  TextEditingController? emailTextTextController;
  String? Function(BuildContext, String?)? emailTextTextControllerValidator;
  // State field(s) for senhaText widget.
  FocusNode? senhaTextFocusNode;
  TextEditingController? senhaTextTextController;
  late bool senhaTextVisibility;
  String? Function(BuildContext, String?)? senhaTextTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaTextVisibility = false;
  }

  @override
  void dispose() {
    emailTextFocusNode?.dispose();
    emailTextTextController?.dispose();

    senhaTextFocusNode?.dispose();
    senhaTextTextController?.dispose();
  }
}
