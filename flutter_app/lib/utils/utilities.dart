import 'dart:async';

//import 'package:eduplus_app/dao/commons/ep_company_data.dart';
//import 'package:eduplus_app/dao/db_helper.dart';
//import 'package:eduplus_app/dao/ep_auth_user.dart';
//import 'package:eduplus_app/dao/ep_location.dart';
//import 'package:eduplus_app/dao/ep_message_details.dart';
//import 'package:eduplus_app/dao/ep_trackable.dart';
//import 'package:eduplus_app/utils/app_localization.dart';
//import 'package:eduplus_app/utils/app_preference.dart';
//import 'package:eduplus_app/utils/enumerators.dart';
//import 'package:eduplus_app/utils/globals.dart' as globals;
//import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
//import 'package:sprintf/sprintf.dart';
//
//String getFormattedDate(int timeInMillis, String dateFormat) {
//  if (timeInMillis != null) {
//    DateTime date = new DateTime.fromMillisecondsSinceEpoch(timeInMillis);
//    var format = new DateFormat(dateFormat);
//    return format.format(date);
//  }
//  return '';
//}

//double getDeviceWidth(BuildContext context) {
//  MediaQueryData media = MediaQuery.of(context);
//  return media.size.width;
//}
//
//double getDeviceHeight(BuildContext context) {
//  MediaQueryData media = MediaQuery.of(context);
//  return media.size.height;
//}

//List<Color> colors = const [
//  Colors.red,
//  Colors.green,
//  Colors.blue,
//  Colors.purple,
//  Colors.cyan,
//  Colors.yellow,
//  Colors.pink,
//  Colors.orange,
//  Colors.teal,
//  Colors.lightBlueAccent,
//  Colors.indigo,
//  Colors.grey,
//  Colors.blueGrey,
//];
//
//Color generateBgColor(String letter) {
//  int index = letter.hashCode % colors.length;
//  return colors[index];
//}

///This method return first day of month
firstDayofMonth(DateTime date) {
  var firstDay = new DateTime(date.year, date.month, 1);
  return firstDay;
}

///This method return last day of month
lastDayOfMonth(DateTime date) {
  var lastDay = new DateTime(date.year, date.month + 1, 0);
  return lastDay;
}

///This method is used to convert date to milliseconds
dateToMilliSeconds(DateTime date) {
  return date.millisecondsSinceEpoch;
}

///This method is used to convert seconds into HH:mm:ss format
String getFormattedTimeSpent(int timeSpent) {
  int totalMinutes = timeSpent ~/ 60;
  int seconds = timeSpent % 60;
  int hours = totalMinutes ~/ 60;
  int minutes = totalMinutes % 60;

  return ((hours < 10 ? "0" + hours.toString() : hours.toString()) +
      ":" +
      (minutes < 10 ? "0" + minutes.toString() : minutes.toString()) +
      ":" +
      (seconds < 10 ? "0" + seconds.toString() : seconds.toString()));
}

//String getFormattedCountry(Country country) {
//  if (Country.INDIA == country) {
//    return 'IND (+91)';
//  } else if (Country.JAPAN == country) {
//    return 'JPN (+81)';
//  } else if (Country.OMAN == country) {
//    return 'OMN (+968)';
//  } else {
//    return '';
//  }
//}

String getPushMapToString(Map<String, dynamic> pushMessage) {
  const String PUSH_MESSAGE_PARSE_EXP = "(badge|type|messageId|threadId|sendUserId|createDate)";
  if (pushMessage == null) {
    return "";
  }
  StringBuffer messageBuilder = new StringBuffer();
  int mapSize = pushMessage.length;
  int count = 0;
  RegExp messageRegExp = new RegExp(PUSH_MESSAGE_PARSE_EXP);
  messageBuilder.write('{"device":{');
  pushMessage.forEach((k, v) {
    count++;
    if (messageRegExp.hasMatch(k)) {
      messageBuilder.write('"$k":$v');
    } else {
      messageBuilder.write('"$k":"$v"');
    }
    if (count < mapSize) {
      messageBuilder.write(',');
    }
  });
  messageBuilder.write('}}');
  print(messageBuilder);
  String createdString = messageBuilder.toString();
  return createdString;
}
//
//EPChatMessage getChatMessageObject(Map<String, dynamic> pushMessageMap) {
//  if (pushMessageMap != null) {
//    int threadId = pushMessageMap["threadId"];
//    if (threadId != null) {
//      EPChatMessage epChatMessage = new EPChatMessage(
//          threadId: pushMessageMap["threadId"] ?? -1,
//          messageId: pushMessageMap["messageId"] ?? -1,
//          message: pushMessageMap["message"] ?? "",
//          userName: pushMessageMap["sendUserName"] ?? "",
//          messageDate: pushMessageMap["createDate"],
//          userId: pushMessageMap["sendUserId"]);
//      return epChatMessage;
//    } else {
//      return null;
//    }
//  }
//  return null;
//}
//
//Future<Null> clearAllTablesFromDB() async {
//  try {
//    await clearLocationSpecificPreference();
//    print("location specific Prefearnece cleared");
////    await DBHelper.dbhDeleteTables().then((status) async {
////      print("DB all tables cleared ");
////      globals.isLocationChangeApiSuccess = true;
////    });
//    List<String> tableNames = new List();
//    tableNames.add(EPAuthUser.tableName);
//    tableNames.add(EPUserRole.tableName);
//    tableNames.add(EPCompanyData.tableName);
//    await DBHelper.dbhDeleteNonSpecifiedTables(tableNames).then((status) async {
//      return true;
//    });
//  } catch (e) {
//    print("Error occur when reseting table...");
//  }
//}

///clear all Location Specific data from Sharedpreferance
//Future<Null> clearLocationSpecificPreference() async {
//  EduPlusSharedPreference prefs = new EduPlusSharedPreference();
//
//  if (globals.epRole == "PARENT") {
//    await EPTrackable.fillFromTable().then((List<EPTrackable> list) async {
//      if (list != null) {
//        for (EPTrackable student in list) {
//          String diaryKey = sprintf(PreferenceKey.PARENT_DIARIES_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          String homeworkKey = sprintf(PreferenceKey.PARENT_HOMEWORK_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          String leaveKey = sprintf(PreferenceKey.PARENT_LEAVE_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          String alertKey = sprintf(PreferenceKey.PARENT_ALERT_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          await prefs.clearPreferanceKey(diaryKey);
//          await prefs.clearPreferanceKey(homeworkKey);
//          await prefs.clearPreferanceKey(leaveKey);
//          await prefs.clearPreferanceKey(alertKey);
//        }
//      }
//    }).catchError((e) {
//      print("Error occur in loading students");
//    });
//    await EPLocation.listAllLocations().then((List<EPLocation> data) async {
//      if (data != null) {
//        for (EPLocation location in data) {
//          String locationkey = sprintf(PreferenceKey.SCHOOL_CIRCULAR_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          String downloadkey = sprintf(PreferenceKey.DOWNLOAD_LIST_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          await prefs.clearPreferanceKey(downloadkey);
//          await prefs.clearPreferanceKey(locationkey);
//        }
//      }
//    }).catchError((e) {
//      print("Error occur in loading locations");
//    });
//    await prefs.clearPreferanceKey(PreferenceKey.MESSAGE_LIST_LAST_UPDATED_KEY);
//  } else {
//    await prefs.clearPreferanceKey(PreferenceKey.MESSAGE_LIST_LAST_UPDATED_KEY);
//    await prefs.clearPreferanceKey(PreferenceKey.SCHOOL_CIRCULAR_LAST_UPDATED_FOR_LOCATION);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_ALERT_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_HOMEWORK_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_LEAVE_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_DIARIES_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.STUDENT_LIST_LAST_UPDATED);
//    await EPLocation.listAllLocations().then((List<EPLocation> data) async {
//      if (data != null) {
//        for (EPLocation location in data) {
//          String locationkey = sprintf(PreferenceKey.SCHOOL_CIRCULAR_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          await prefs.clearPreferanceKey(locationkey);
//          String downloadkey = sprintf(PreferenceKey.DOWNLOAD_LIST_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          await prefs.clearPreferanceKey(downloadkey);
//        }
//      }
//    }).catchError((e) {
//      print("Error occur in loading locations");
//    });
//  }
//  return null;
//  //TODO check for more
//}
//
//Future<bool> switchToTeacherAccount() async {
//  try {
//    EduPlusSharedPreference prefs = new EduPlusSharedPreference();
//    EPAuthUser epAuthUser = new EPAuthUser();
//    await epAuthUser.fetchUsers().then((List<EPAuthUser> userList) {
//      print("userlist fetched checkpoint 1 ");
//      if (userList != null && userList.isNotEmpty) {
//        print("userlist length = ${userList.length}");
//        for (EPAuthUser user in userList) {
//          print("User $user");
//          if (user != null) {
//            if (user.roleId == 4) {
//              print("user selected");
//              epAuthUser = user;
//              break;
//            }
//          }
//        }
//      }
//    });
//
//    print("checkpoint 2");
//    await EPTrackable.fillFromTable().then((List<EPTrackable> list) async {
//      if (list != null) {
//        for (EPTrackable student in list) {
//          String diaryKey = sprintf(PreferenceKey.PARENT_DIARIES_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          String homeworkKey = sprintf(PreferenceKey.PARENT_HOMEWORK_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          String leaveKey = sprintf(PreferenceKey.PARENT_LEAVE_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          String alertKey = sprintf(PreferenceKey.PARENT_ALERT_LAST_UPDATED_FOR_TRACKABLE, [student?.trackableId ?? -1]);
//          await prefs.clearPreferanceKey(diaryKey);
//          await prefs.clearPreferanceKey(homeworkKey);
//          await prefs.clearPreferanceKey(leaveKey);
//          await prefs.clearPreferanceKey(alertKey);
//        }
//      }
//    }).catchError((e) {
//      print("Error occur in loading students");
//    });
//    await EPLocation.listAllLocations().then((List<EPLocation> data) async {
//      if (data != null) {
//        for (EPLocation location in data) {
//          String locationkey = sprintf(PreferenceKey.SCHOOL_CIRCULAR_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          String downloadkey = sprintf(PreferenceKey.DOWNLOAD_LIST_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          await prefs.clearPreferanceKey(downloadkey);
//          await prefs.clearPreferanceKey(locationkey);
//        }
//      }
//    }).catchError((e) {
//      print("Error occur in loading locations");
//      return false;
//    });
//    print("User = $epAuthUser");
//    await prefs.clearPreferanceKey(PreferenceKey.MESSAGE_LIST_LAST_UPDATED_KEY);
//    await prefs.clearPreferanceKey(PreferenceKey.PERMISSION_LAST_UPDATED_DATE);
//    EduplusLocalizations.setAppLanguage(epAuthUser.language.toString());
//    await prefs.setInt(PreferenceKey.CURRENT_USER_ID, epAuthUser?.userId ?? -1);
//    globals.epUserId = epAuthUser?.userId ?? -1;
//    await prefs.setString(PreferenceKey.USER_ROLE, "TEACHER");
//    globals.epRole = "TEACHER";
//    await prefs.setString(PreferenceKey.AUTH_TOKEN, epAuthUser.authToken);
//    List<String> tableNames = new List();
//    tableNames.add(EPAuthUser.tableName);
//    tableNames.add(EPUserRole.tableName);
//    tableNames.add(EPCompanyData.tableName);
//    await DBHelper.dbhDeleteNonSpecifiedTables(tableNames).then((status) async {
//      return true;
//    });
//  } catch (e) {
//    print("Error occur when reseting table...");
//    return false;
//  }
//  return false;
//}
//
//Future<bool> switchToParentAccount() async {
//  try {
//    EduPlusSharedPreference prefs = new EduPlusSharedPreference();
//    await prefs.clearPreferanceKey(PreferenceKey.MESSAGE_LIST_LAST_UPDATED_KEY);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_ALERT_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_HOMEWORK_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_LEAVE_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.TEACHER_DIARIES_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.STUDENT_LIST_LAST_UPDATED);
//    await prefs.clearPreferanceKey(PreferenceKey.PERMISSION_LAST_UPDATED_DATE);
//    EPAuthUser epAuthUser = new EPAuthUser();
//    List<EPAuthUser> userList = await epAuthUser.fetchUsers();
//    if (userList != null && userList.isNotEmpty) {
//      for (EPAuthUser user in userList) {
//        if (user.roleId == 5) {
//          epAuthUser = user;
//          break;
//        }
//      }
//    }
//    await EPLocation.listAllLocations().then((List<EPLocation> data) async {
//      if (data != null) {
//        for (EPLocation location in data) {
//          String locationkey = sprintf(PreferenceKey.SCHOOL_CIRCULAR_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          await prefs.clearPreferanceKey(locationkey);
//          String downloadkey = sprintf(PreferenceKey.DOWNLOAD_LIST_LAST_UPDATED_FOR_LOCATION, [location?.locationId ?? -1]);
//          await prefs.clearPreferanceKey(downloadkey);
//        }
//      }
//    }).catchError((e) {
//      print("Error occur in loading locations");
//    });
//    EduplusLocalizations.setAppLanguage(epAuthUser.language.toString());
//    await prefs.setInt(PreferenceKey.CURRENT_USER_ID, epAuthUser?.userId ?? -1);
//    globals.epUserId = epAuthUser?.userId ?? -1;
//    await prefs.setString(PreferenceKey.USER_ROLE, "PARENT");
//    globals.epRole = "PARENT";
//    await prefs.setString(PreferenceKey.AUTH_TOKEN, epAuthUser.authToken);
//    List<String> tableNames = new List();
//    tableNames.add(EPAuthUser.tableName);
//    tableNames.add(EPUserRole.tableName);
//    tableNames.add(EPCompanyData.tableName);
//    await DBHelper.dbhDeleteNonSpecifiedTables(tableNames).then((status) async {
//      return true;
//    }).catchError((e) {
//      print("Error in parseing");
//    });
//    return false;
//  } catch (e) {
//    print("Error caught in parent switching");
//    print("Error $e");
//    return false;
//  }
//}
