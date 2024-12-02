import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'agendar_servico_cli_widget.dart' show AgendarServicoCliWidget;
import 'package:flutter/material.dart';

class AgendarServicoCliModel extends FlutterFlowModel<AgendarServicoCliWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
