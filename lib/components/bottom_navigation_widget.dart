import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation_model.dart';
export 'bottom_navigation_model.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  late BottomNavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavigationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348.0,
      height: 78.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Configs');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Icon(
                      Icons.settings_sharp,
                      color: Color(0xFFFBFAFA),
                      size: 40.0,
                    ),
                  ),
                  Text(
                    'Configurações',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Pedidos_user');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Icon(
                      Icons.content_paste,
                      color: Color(0xFFFBFAFA),
                      size: 40.0,
                    ),
                  ),
                  Text(
                    'Meus Pedidos',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Icon(
                    Icons.person,
                    color: Color(0xFFFBFAFA),
                    size: 40.0,
                  ),
                ),
                Text(
                  'Perfil',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
