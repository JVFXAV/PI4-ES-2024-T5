import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'sucess_pedido_model.dart';
export 'sucess_pedido_model.dart';

class SucessPedidoWidget extends StatefulWidget {
  const SucessPedidoWidget({super.key});

  @override
  State<SucessPedidoWidget> createState() => _SucessPedidoWidgetState();
}

class _SucessPedidoWidgetState extends State<SucessPedidoWidget> {
  late SucessPedidoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessPedidoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 140.0,
              height: 140.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Icon(
                      Icons.check_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 60.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Text(
                'Serviço Confirmado!',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Inter Tight',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'R\$',
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '120.20',
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
              child: Text(
                'Your payment has been confirmed, it may take 1-2 hours in order for your payment to go through and show up in your transation list.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Task_pro');
                      },
                      text: 'Ver Pedido',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).alternate,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Homepage');
                        },
                        text: 'Voltar ao menu',
                        options: FFButtonOptions(
                          width: 230.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).alternate,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
