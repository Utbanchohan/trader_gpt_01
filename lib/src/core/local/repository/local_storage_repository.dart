import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trader_gpt/src/core/local/providers/shared_pref.dart';
import 'package:trader_gpt/src/core/local/repository/shared_pref_repository.dart';

abstract interface class SharedPrefService {
  Future<bool> setLogout();
  Future<bool> setIsLogin();

  bool get isLogin;

  Future<bool> setAccessToken(String token);

  String? get accessToken;

  Future<bool> setAccessTokenMarket(String token);

  String? get marketAccessToken;

  Future<bool> setAccessTokenMarketNew(String token);

  String? get marketAccessTokenNew;

  Future<void> setIsFirstTime(bool value);

  bool getIsFirstTime();

  Future<bool> clearAllData();

  Future<void> saveUserName(String userName);

  String? get getUserName;

  Future<void> saveUserId(String userId);

  String get getUserId;

  Future<void> removeUserId(String userType);

  Future<void> saveUser(Map<String, dynamic> user) async {
    await SharedPreferences.getInstance().then((prefs) {
      prefs.setString('user', jsonEncode(user));
    });
  }

  Future<void> saveStock(List<Map<String, dynamic>> stocks) async {
    await SharedPreferences.getInstance().then((prefs) {
      prefs.setString('stocks', jsonEncode(stocks));
    });
  }

  Future<List<Map<String, dynamic>>?> getStocks() async {
    final prefs = await SharedPreferences.getInstance();
    String? stocksJson = prefs.getString('stocks');
    if (stocksJson != null) {
      return jsonDecode(stocksJson);
    }
    return null;
  }

  Future<Map<String, dynamic>?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? userJson = prefs.getString('user');
    if (userJson != null) {
      return jsonDecode(userJson);
    }
    return null;
  }
}

final localDataProvider = Provider<SharedPrefService>(
  (ref) => SharedPreferencesService(
    ref.read(sharedPreferencesProvider).requireValue,
  ),
);
