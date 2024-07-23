import 'package:cache_layer_app/home/cache/shared_manager_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedManager {
  SharedPreferences? preferences;

  SharedManager(){
    init();
  }
  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void checkPreferences(){
    if(preferences == null) throw SharedManagerException().toString();
  }

  Future<void> saveString(String key, String value) async {
    checkPreferences();
    await preferences?.setString(key, value);
  }

  String? getString(String key){
    checkPreferences();
    return preferences?.getString(key);
  }

}