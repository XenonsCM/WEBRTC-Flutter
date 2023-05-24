import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _categoryControl =
        prefs.getString('ff_categoryControl') ?? _categoryControl;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _selectedDate = DateTime.fromMillisecondsSinceEpoch(1682024400000);
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? _value) {
    _selectedDate = _value;
  }

  String _categoryControl = '';
  String get categoryControl => _categoryControl;
  set categoryControl(String _value) {
    _categoryControl = _value;
    prefs.setString('ff_categoryControl', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
