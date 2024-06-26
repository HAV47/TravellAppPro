import 'package:hive_flutter/adapters.dart';

class LocalStorageHelper {
  LocalStorageHelper._internal();
  static final LocalStorageHelper _shared = LocalStorageHelper._internal();
  factory LocalStorageHelper(){
    return _shared;
  }
  Box<dynamic>? hiveBox;
  static initLocalStorageHelper() async{
    _shared.hiveBox = await Hive.openBox('travelApp');
  }
  static dynamic getValue(String key){
    return _shared.hiveBox?.get(key);
  }
  static setValue(String key, dynamic val){
    _shared.hiveBox?.put(key, val);
  }
}