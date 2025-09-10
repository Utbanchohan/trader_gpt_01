import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';

class SharedPreferencesService implements SharedPrefService {
  SharedPreferencesService(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  final _tokenKey = 'access-token';
  final _isFirstTimeKey = 'is-first-time';
  final idKey = 'id-user';
  final login = 'login';
  final _userKey = 'user';

  @override
  String? get accessToken => sharedPreferences.getString(_tokenKey);

  @override
  Future<bool> setAccessToken(String token) async {
    return await sharedPreferences.setString(_tokenKey, token);
  }

  @override
  Future<bool> setLogout() async {
     await sharedPreferences.setBool(login, true);
   await setAccessToken('');


     return true;
  }
  @override
  Future<bool> setIsLogin() async {
    return await sharedPreferences.setBool(login, true);
  }

  @override
  bool get isLogin => sharedPreferences.getBool(login) ?? false;

  @override
  bool getIsFirstTime() {
    return sharedPreferences.getBool(_isFirstTimeKey) ?? true;
  }

  @override
  Future<void> setIsFirstTime(bool value) async {
    await sharedPreferences.setBool(_isFirstTimeKey, value);
  }

  @override
  Future<bool> clearAllData() async {
    return await sharedPreferences.clear();
  }

  @override
  String get getUserId => sharedPreferences.getString(idKey) ?? "";

  @override
  Future<void> saveUserId(String userId) {
    return sharedPreferences.setString(idKey, userId);
  }

  @override
  Future<void> removeUserId(String userId) {
    return sharedPreferences.remove(idKey);
  }

  @override
  Future<void> saveUser(Map<String, dynamic> user) {
    String userJson = jsonEncode(user);
    return sharedPreferences.setString(_userKey, userJson);
  }

  @override
  Future<Map<String, dynamic>?> getUser() async {
    String? userJson = sharedPreferences.getString(_userKey);
    if (userJson != null) {
      return jsonDecode(userJson);
    }
    return null;
  }
}
