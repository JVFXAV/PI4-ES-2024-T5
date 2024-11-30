import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'buttonconfig_model.dart';
export 'buttonconfig_model.dart';

class ButtonconfigWidget extends StatefulWidget {
  const ButtonconfigWidget({super.key});

  @override
  State<ButtonconfigWidget> createState() => _ButtonconfigWidgetState();
}

class _ButtonconfigWidgetState extends State<ButtonconfigWidget> {
  late ButtonconfigModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonconfigModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Configs');
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 8.0,
            buttonSize: 42.0,
            fillColor: const Color(0xFF181818),
            icon: Icon(
              Icons.settings_sharp,
              color: FlutterFlowTheme.of(context).info,
              size: 25.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ),
        Text(
          'Configurações',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).secondaryBackground,
                fontSize: 10.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
