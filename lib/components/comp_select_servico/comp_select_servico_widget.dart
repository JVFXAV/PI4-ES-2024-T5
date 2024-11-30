import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'comp_select_servico_model.dart';
export 'comp_select_servico_model.dart';

class CompSelectServicoWidget extends StatefulWidget {
  const CompSelectServicoWidget({super.key});

  @override
  State<CompSelectServicoWidget> createState() =>
      _CompSelectServicoWidgetState();
}

class _CompSelectServicoWidgetState extends State<CompSelectServicoWidget> {
  late CompSelectServicoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompSelectServicoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Your Services',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Inter Tight',
                      letterSpacing: 0.0,
                    ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Choose the services you\'d like to offer to potential clients.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: FlutterFlowChoiceChips(
                    options: const [
                      ChipData('Construção', Icons.construction_sharp),
                      ChipData('Limpeza', Icons.cleaning_services),
                      ChipData('Eletricista', Icons.electric_bolt),
                      ChipData('Encanador', Icons.construction_sharp),
                      ChipData('Jardineiro', Icons.grass_outlined),
                      ChipData('Passeador de Pets', FontAwesomeIcons.dog)
                    ],
                    onChanged: (val) => safeSetState(
                        () => _model.choiceChipsValue = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).info,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                              ),
                      iconColor: FlutterFlowTheme.of(context).info,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: const Color(0x1A4B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).bodySmall.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primary,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    chipSpacing: 8.0,
                    rowSpacing: 12.0,
                    multiselect: false,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      [],
                    ),
                    wrapped: true,
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Save Services',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
