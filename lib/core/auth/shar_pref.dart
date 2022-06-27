import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PumpMonitoringSharedPref {
  PumpMonitoringSharedPref._privateConstructor();

  static final PumpMonitoringSharedPref instance =
      PumpMonitoringSharedPref._privateConstructor();

  setStringValue(String key, String value) async {
    SharedPreferences klixPrefs = await SharedPreferences.getInstance();
    klixPrefs.setString(key, value);
  }

  Future<String?> getStringValue(String key) async {
    SharedPreferences gapPrefs = await SharedPreferences.getInstance();
    return gapPrefs.getString(key);
  }

  setIntegerValue(String key, int? value) async {
    SharedPreferences gapPrefs = await SharedPreferences.getInstance();
    gapPrefs.setInt(key, value!);
  }

  Future<int?> getIntegerValue(String? key) async {
    SharedPreferences gapPrefs = await SharedPreferences.getInstance();
    return gapPrefs.getInt(key!);
  }

  setBooleanValue(String key, bool? value) async {
    SharedPreferences gapPrefs = await SharedPreferences.getInstance();
    gapPrefs.setBool(key, value!);
  }

  Future<bool?> containsKey(String? key) async {
    SharedPreferences gapPrefs = await SharedPreferences.getInstance();
    return gapPrefs.getBool(key!) ?? false;
  }

  removeSharPrefValue(String? key) async {
    SharedPreferences klixPrefs = await SharedPreferences.getInstance();
    return klixPrefs.remove(key!);
  }

  removeAllSharPref() async {
    SharedPreferences gapPrefs = await SharedPreferences.getInstance();
    return gapPrefs.clear();
  }

  static Future<bool> saveImageToPrefs(String key, String? value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return await prefs.setString(key, value!);
  }

  static Future<bool> emptyPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return await prefs.clear();
  }

  static Future<String?> loadImageFromPrefs(String? key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key!);
  }

  static String base64String(Uint8List? data) {
    return base64Encode(data!);
  }

  static imageFrom64BaseString(String? base64String) {
    return Image.memory(
      base64Decode(base64String!),
      fit: BoxFit.fill,
    );
  }

  static imageProfileFrom64BaseString(String? base64String) {
    return Image.memory(
      base64Decode(base64String!),
      fit: BoxFit.fill,
    );
  }

  static imageFrom64BaseString2(Uint8List? base64String) {
    return base64Encode(base64String!);
  }
}
