import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _professions = '';
  String get professions => _professions;
  set professions(String value) {
    _professions = value;
  }

  String _valorProfissional = '';
  String get valorProfissional => _valorProfissional;
  set valorProfissional(String value) {
    _valorProfissional = value;
  }
}
