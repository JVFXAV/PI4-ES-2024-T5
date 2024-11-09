import '/flutter_flow/flutter_flow_util.dart';
import 'comp_esqueci_senha_widget.dart' show CompEsqueciSenhaWidget;
import 'package:flutter/material.dart';

class CompEsqueciSenhaModel extends FlutterFlowModel<CompEsqueciSenhaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailText widget.
  FocusNode? emailTextFocusNode;
  TextEditingController? emailTextTextController;
  String? Function(BuildContext, String?)? emailTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailTextFocusNode?.dispose();
    emailTextTextController?.dispose();
  }
}
