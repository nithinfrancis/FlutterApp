import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class EduPlusSharedPreference {
  // Creating singleton object.
  static EduPlusSharedPreference _instance = new EduPlusSharedPreference.internal();

  EduPlusSharedPreference.internal();

  factory EduPlusSharedPreference() => _instance;

  Future<bool> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool(key) ?? false;
    return value;
  }

  Future<int> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int value = prefs.getInt(key) ?? -1;
    return value;
  }

  Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String value = prefs.getString(key) ?? "";
    return value;
  }

  setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  setBoolean(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  clearAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  clearPreferanceKey(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}

class PreferenceKey {
  static const String IS_USER_LOGGED_IN = "is_user_logged_in";
  static const String CURRENT_USER_ID = "current_user_id";
  static const String AUTH_TOKEN = "auth_token";
  static const String USER_ROLE = "user_role";
  static const String SELECTED_TRACKABLE_ID = "selected_trackable_id";
  static const String SELECTED_TRACKABLE_NAME = "selected_trackable_name";
  static const String SELECTED_TRACKABLE_PROFILE_IMAGE = "selected_trackable_profile_image";
  static const String SELECTED_LOCATION_ID = "selected_location_id";
  static const String SELECTED_GROUP_ID = "selected_group_id";
  static const String APP_LANGUAGE = "selected_app_locale";
  static const String SELECTED_TRACKABLE_IMAGE_URL = "selected_trackable_image_url";
  static const String IS_TRACKING_ENABLED = "is_tracking_enabled";
  static const String DOWNLOAD_LIST_LAST_UPDATED_FOR_LOCATION = "download_list_last_updated_for_location_%d";
  static const String PUSH_REGISTER_DEVICE_TOKEN = "push_register_status";
  static const String SELECTED_GROUP_NAME = "selected_group_name";
  static const String MESSAGE_LIST_LAST_UPDATED_KEY = "message_list_last_updated";
  static const String PERMISSION_LAST_UPDATED_DATE = "permission_last_updated_date";
  static const String IS_APP_VERSION_UPDATED = "is_version_updated";
  static const String HAS_MULTIPLE_ROLES = "has_multiple_roles";
  static const String PROFILE_IMAGE_URL = "user_profile_image_url";
  static const String PROFILE_NAME  = "user_profile_name";
  static const String IS_PARENT_EYE_ENABLED = "is_parenteye_enabled";
  static const String USER_PERMISSION_ARRAY = "user_permission_array";
  static const String CURRENT_DATE = "current_date";
}
