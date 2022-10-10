import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _cartItems =
        prefs.getStringList('ff_cartItems')?.map((path) => path.ref).toList() ??
            _cartItems;
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cartItems = [];
  List<DocumentReference> get cartItems => _cartItems;
  set cartItems(List<DocumentReference> _value) {
    _cartItems = _value;
    prefs.setStringList('ff_cartItems', _value.map((x) => x.path).toList());
  }

  void addToCartItems(DocumentReference _value) {
    _cartItems.add(_value);
    prefs.setStringList('ff_cartItems', _cartItems.map((x) => x.path).toList());
  }

  void removeFromCartItems(DocumentReference _value) {
    _cartItems.remove(_value);
    prefs.setStringList('ff_cartItems', _cartItems.map((x) => x.path).toList());
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
