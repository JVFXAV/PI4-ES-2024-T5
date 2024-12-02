import '/flutter_flow/flutter_flow_util.dart';
import 'payment_pro_page_widget.dart' show PaymentProPageWidget;
import 'package:flutter/material.dart';

class PaymentProPageModel extends FlutterFlowModel<PaymentProPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
