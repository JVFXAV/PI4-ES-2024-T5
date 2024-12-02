import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_profissional_widget.dart' show CadastroProfissionalWidget;
import 'package:flutter/material.dart';

class CadastroProfissionalModel
    extends FlutterFlowModel<CadastroProfissionalWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeText widget.
  FocusNode? nomeTextFocusNode;
  TextEditingController? nomeTextTextController;
  String? Function(BuildContext, String?)? nomeTextTextControllerValidator;
  // State field(s) for emailText widget.
  FocusNode? emailTextFocusNode;
  TextEditingController? emailTextTextController;
  String? Function(BuildContext, String?)? emailTextTextControllerValidator;
  // State field(s) for cpfText widget.
  FocusNode? cpfTextFocusNode;
  TextEditingController? cpfTextTextController;
  String? Function(BuildContext, String?)? cpfTextTextControllerValidator;
  // State field(s) for profissao widget.
  FocusNode? profissaoFocusNode;
  TextEditingController? profissaoTextController;
  String? Function(BuildContext, String?)? profissaoTextControllerValidator;
  // State field(s) for cepText widget.
  FocusNode? cepTextFocusNode;
  TextEditingController? cepTextTextController;
  String? Function(BuildContext, String?)? cepTextTextControllerValidator;
  // State field(s) for enderecoText widget.
  FocusNode? enderecoTextFocusNode;
  TextEditingController? enderecoTextTextController;
  String? Function(BuildContext, String?)? enderecoTextTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for comissao widget.
  FocusNode? comissaoFocusNode;
  TextEditingController? comissaoTextController;
  String? Function(BuildContext, String?)? comissaoTextControllerValidator;
  // State field(s) for complementoText widget.
  FocusNode? complementoTextFocusNode;
  TextEditingController? complementoTextTextController;
  String? Function(BuildContext, String?)?
      complementoTextTextControllerValidator;
  // State field(s) for senhaText widget.
  FocusNode? senhaTextFocusNode;
  TextEditingController? senhaTextTextController;
  late bool senhaTextVisibility;
  String? Function(BuildContext, String?)? senhaTextTextControllerValidator;
  // State field(s) for confSenhaText widget.
  FocusNode? confSenhaTextFocusNode;
  TextEditingController? confSenhaTextTextController;
  late bool confSenhaTextVisibility;
  String? Function(BuildContext, String?)? confSenhaTextTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaTextVisibility = false;
    confSenhaTextVisibility = false;
  }

  @override
  void dispose() {
    nomeTextFocusNode?.dispose();
    nomeTextTextController?.dispose();

    emailTextFocusNode?.dispose();
    emailTextTextController?.dispose();

    cpfTextFocusNode?.dispose();
    cpfTextTextController?.dispose();

    profissaoFocusNode?.dispose();
    profissaoTextController?.dispose();

    cepTextFocusNode?.dispose();
    cepTextTextController?.dispose();

    enderecoTextFocusNode?.dispose();
    enderecoTextTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    comissaoFocusNode?.dispose();
    comissaoTextController?.dispose();

    complementoTextFocusNode?.dispose();
    complementoTextTextController?.dispose();

    senhaTextFocusNode?.dispose();
    senhaTextTextController?.dispose();

    confSenhaTextFocusNode?.dispose();
    confSenhaTextTextController?.dispose();
  }
}
