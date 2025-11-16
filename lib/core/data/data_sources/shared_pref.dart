
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton

class SharedPref {
  static SharedPref? _instance;
  static SharedPreferences? _preferences;

  static Future<SharedPref> getInstance() async {
    _instance ??= SharedPref();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await _preferences!.setString(key, value);
    if (value is int) return await _preferences!.setInt(key, value);
    if (value is bool) return await _preferences!.setBool(key, value);
    return await _preferences!.setDouble(key, value);
  }

  static dynamic getData({
    required String key,
  }) {
    return _preferences?.get(key);
  }

  static Future<bool> removeData({
    required String key,
  }) async {
    return await _preferences!.remove(key);
  }

//  static Future<void> saveUserRole(AuthCredentialsModel model) async {
//     debugPrint("cccccccccccccccccccccccccccccccc${model.role}");

//     await _preferences!
//         .setString(CacheKeys.userRole, UserRole.fromValue(model.role).name);
//   }

  // String? getUserRole() {

  //   return _preferences!.getString(CacheKeys.userRole);

  // }

  void deleteLoginInfo() {
    _preferences!.remove('user_role');
  }
}