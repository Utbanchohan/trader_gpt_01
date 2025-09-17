import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get accessToken => _prefs.getString('accessToken') ?? '';

  Future<void> setAccessToken(String token) async {
    await _prefs.setString('accessToken', token);
  }
}
