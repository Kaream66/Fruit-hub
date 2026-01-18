import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences? _instance;
  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  setBool(String key, bool value) {
    _instance?.setBool(key, value);
  }

  getBool(String key) {
    return _instance?.getBool(key) ?? false;
  }
}
