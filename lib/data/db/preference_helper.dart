import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


@lazySingleton
class PreferencesHelper {
  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  Future<void> setBool(String key, bool value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool(key, value);
  }

  Future<bool> getBool(String key, {bool defaultValue = false}) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getBool(key) ?? defaultValue;
  }

  Future<void> setString(String key, String value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, value);
  }

  Future<String> getString(String key, {String defaultValue = ''}) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(key) ?? defaultValue;
  }

  Future<void> setInt(String key, int value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setInt(key, value);
  }

  Future<int> getInt(String key, {int defaultValue = 0}) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getInt(key) ?? defaultValue;
  }

  Future<void> setObject(String key, dynamic object) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, jsonEncode(object));
  }

  Future<T?> getObject<T>(
      String key, T Function(Map<String, dynamic>) fromJson) async {
    final SharedPreferences prefs = await _prefs;
    final String? jsonString = prefs.getString(key);
    if (jsonString == null) {
      return null;
    }
    return fromJson(jsonDecode(jsonString) as Map<String, dynamic> );
  }

  Future<void> remove(String key) async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(key);
  }

  Future<void> clearAll() async {
    final SharedPreferences prefs = await _prefs;
    prefs.clear();
  }
}
