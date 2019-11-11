import 'dart:async';
import 'dart:io';

//import 'package:eduplus_app/dao/commons/ep_company_data.dart';
//import 'package:eduplus_app/dao/commons/ep_trackable_data.dart';
//import 'package:eduplus_app/dao/commons/ep_user_data.dart';
//import 'package:eduplus_app/dao/ep_activity_timeline.dart';
//import 'package:eduplus_app/dao/ep_alerts.dart';
//import 'package:eduplus_app/dao/ep_attendance.dart';
//import 'package:eduplus_app/dao/ep_auth_user.dart';
//import 'package:eduplus_app/dao/ep_diary.dart';
//import 'package:eduplus_app/dao/ep_download.dart';
//import 'package:eduplus_app/dao/ep_floor.dart';
//import 'package:eduplus_app/dao/ep_group.dart';
//import 'package:eduplus_app/dao/ep_holiday.dart';
//import 'package:eduplus_app/dao/ep_homework.dart';
//import 'package:eduplus_app/dao/ep_leave.dart';
//import 'package:eduplus_app/dao/ep_location.dart';
//import 'package:eduplus_app/dao/ep_message.dart';
//import 'package:eduplus_app/dao/ep_message_details.dart';
//import 'package:eduplus_app/dao/ep_monthly_activity.dart';
//import 'package:eduplus_app/dao/ep_monthly_report.dart';
//import 'package:eduplus_app/dao/ep_school_circular.dart';
//import 'package:eduplus_app/dao/ep_spot.dart';
//import 'package:eduplus_app/dao/ep_subject.dart';
//import 'package:eduplus_app/dao/ep_teacher.dart';
//import 'package:eduplus_app/dao/ep_teacher_trackable.dart';
//import 'package:eduplus_app/dao/ep_timetableEntry.dart';
//import 'package:eduplus_app/dao/ep_trackable.dart';
//import 'package:eduplus_app/dao/ep_trackable_activity.dart';
//import 'package:eduplus_app/dao/ep_trackable_type.dart';
//import 'package:eduplus_app/dao/ep_trip.dart';
//import 'package:eduplus_app/utils/app_preference.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
    /// Database details of the EduPlus application
    static const String DATABASE_NAME = "db_test_app.db";
    static const int DATABASE_VERSION = 2;

    /// An instance of database to perform operations
    static Database _db;

    /// Use this method to get the database file's path
    static Future<String> _dbhGetDatabasePath() async {
        Directory privateDocumentsDirectory = await getApplicationDocumentsDirectory();
        String testDatabasePath = join(privateDocumentsDirectory.path, DATABASE_NAME);
        return testDatabasePath;
    }

    /// Call to this method will remove the database file from local storage
    // ignore: unused_element
    static Future _dbhDeleteDatabase() async {
        String databasePath = await _dbhGetDatabasePath();
        await deleteDatabase(databasePath);
    }

    /// Open the database
    static dbhOpenDatabase() async {
        /* get the database file path */
        print("DB Connection database path called :: $_db");
        String databasePath = await _dbhGetDatabasePath();
//    print(databasePath);
        print("DB Connection Open databse called  :: $_db");
        /* Open database */
        _db = await openDatabase(databasePath, version: DATABASE_VERSION, onCreate: (Database db, int version) async {
            /* On database creation, execute all of the create table queries */
//            await db.execute(getCreateTableQuery(EPAuthUser.tableName, EPAuthUser.tableSchema));
//            await db.execute(getCreateTableQuery(EPUserRole.tableName, EPUserRole.tableSchema));
//            await db.execute(getCreateTableQuery(EPDiary.tableName, EPDiary.tableSchema));
//            await db.execute(getCreateTableQuery(EPDiaryTarget.tableName, EPDiaryTarget.tableSchema));
//            //await db.execute(getCreateTableQuery(EPTeacherGroup.tableName, EPTeacherGroup.tableSchema));
//            await db.execute(getCreateTableQuery(EPSchoolCircular.tableName, EPSchoolCircular.tableSchema));
//            await db.execute(getCreateTableQuery(EPTrackable.tableName, EPTrackable.tableSchema));
//            await db.execute(getCreateTableQuery(EPLeave.tableName, EPLeave.tableSchema));
//            await db.execute(getCreateTableQuery(EPCompanyData.tableName, EPCompanyData.tableSchema));
//            await db.execute(getCreateTableQuery(EPTrackableData.tableName, EPTrackableData.tableSchema));
//            await db.execute(getCreateTableQuery(EPUserData.tableName, EPUserData.tableSchema));
//            await db.execute(getCreateTableQuery(EPAlert.tableName, EPAlert.tableSchema));
//            await db.execute(getCreateTableQuery(EPHoliday.tableName, EPHoliday.tableSchema));
//            await db.execute(getCreateTableQuery(EPMonthlyCountReport.tableName, EPMonthlyCountReport.tableSchema));
//            await db.execute(getCreateTableQuery(EPMonthlyActivity.tableName, EPMonthlyActivity.tableSchema));
//            await db.execute(getCreateTableQuery(EPTrip.tableName, EPTrip.tableSchema));
//            await db.execute(getCreateTableQuery(EPLocation.tableName, EPLocation.tableSchema));
//            await db.execute(getCreateTableQuery(EPFloor.tableName, EPFloor.tableSchema));
//            await db.execute(getCreateTableQuery(EPSpot.tableName, EPSpot.tableSchema));
//            await db.execute(getCreateTableQuery(EPTrackableType.tableName, EPTrackableType.tableSchema));
//            await db.execute(getCreateTableQuery(EPMessage.tableName, EPMessage.tableSchema));
//            await db.execute(getCreateTableQuery(EPGroup.tableName, EPGroup.tableSchema));
//            await db.execute(getCreateTableQuery(EPSubject.tableName, EPSubject.tableSchema));
//            await db.execute(getCreateTableQuery(EPTimeTableEntry.tableName, EPTimeTableEntry.tableSchema));
//            await db.execute(getCreateTableQuery(EPChatMessage.tableName, EPChatMessage.tableSchema));
//            await db.execute(getCreateTableQuery(EPHomeworkAttachment.tableName, EPHomeworkAttachment.tableSchema));
//            await db.execute(getCreateTableQuery(EPStudentAttendance.tableName, EPStudentAttendance.tableSchema));
//            await db.execute(getCreateTableQuery(EPTrackableActivity.tableName, EPTrackableActivity.tableSchema));
//            await db.execute(getCreateTableQuery(EPTeacher.tableName, EPTeacher.tableSchema));
//            await db.execute(getCreateTableQuery(EPActivityTimeline.tableName, EPActivityTimeline.tableSchema));
//            await db.execute(getCreateTableQuery(EPDownload.tableName, EPDownload.tableSchema));
//            await db.execute(getCreateTableQuery(EPTeacherTrackable.tableName, EPTeacherTrackable.tableSchema));
//            await db.execute(getCreateTableQuery(EPCircularAttachment.tableName, EPCircularAttachment.tableSchema));
        }, onUpgrade: (Database db, int oldVersion, int newVersion) async {
            /* TODO: Alter table queries for eduplus application DB. For future. */
            int old = oldVersion;
            for (int i = 1; i < newVersion; i++) {
                if (old == i) {
                    if (i == 1) {
                        // Changes for version 1-2 update
                        /*
                 * Changes for app version 2.0.1 on Android and 1.0.1 on iOS
                 * ------------------------------------------------------
                 * 1) Added a new alert type
                 *    ==> new Alert type BusNearBy added
                 *    ==> alert_stopDistance column added of type INTEGER
                 *    ==> alert_tripName column added of type TEXT
                 * 2) Added new table ep_circular_attachment
                 *    ==> table to store circular attachments
                 * 3) Added 2 new columns in Trackable table
                 *    ==> columns to store blood group and address of trackables
                 * 4) Added 2 new columns in ep_user table for user switching
                 *     between teacher and parent
                 *    ==> columns to store authToken and roleId of the user
                 **/

                        ///This method is used for clear all previous circular from DB
                        /// and clear circular lastupdatedate for fetching all previous circular
//                        EduPlusSharedPreference prefs = new EduPlusSharedPreference();
//                        await prefs.setBoolean(PreferenceKey.IS_APP_VERSION_UPDATED, true);
//                        await db.execute(getCreateTableQuery(EPCircularAttachment.tableName, EPCircularAttachment.tableSchema));
//                        await db.rawQuery("ALTER TABLE ${EPAlert.tableName} ADD alert_stopDistance INTEGER;");
//                        await db.rawQuery("ALTER TABLE ${EPAlert.tableName} ADD alert_tripName TEXT;");
//                        await db.rawQuery("ALTER TABLE ${EPTrackable.tableName} ADD blood TEXT;");
//                        await db.rawQuery("ALTER TABLE ${EPTrackable.tableName} ADD address TEXT;");
//                        await db.rawQuery("ALTER TABLE ${EPAuthUser.tableName} ADD authToken TEXT;");
//                        await db.rawQuery("ALTER TABLE ${EPAuthUser.tableName} ADD roleId INTEGER;");
                    }
                }
                old++;
            }
        });
        print("DB Connection Opened $_db");
        return _db;
    }

    /// Use this method to insert values into the given table.
    /// If a conflict occurs in UNIQUE constraint, then it will be replaced
    /// Should call the dbhOpenDatabase() method before calling any other methods
    static Future<int> dbhInsert(String tableName, Map<String, dynamic> values) async {
        int insertedId = -1;
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            try {
                insertedId = await txn.insert(tableName, values, nullColumnHack: null, conflictAlgorithm: ConflictAlgorithm.fail);
//        print("inserted : $insertedId");
            } catch (ex) {
                List<String> uniqueKeys = getUniqueKeys(tableName);
                int affected = await txn.update(tableName, values,
                    where: generateWhereClause(uniqueKeys),
                    whereArgs: generateWhereArgs(uniqueKeys, values),
                    conflictAlgorithm: ConflictAlgorithm.ignore);
//        print("updated : $affected");
            }
        });

        return insertedId;
    }

    /// Use this method to delete values from the given table.
    /// Should call the dbhOpenDatabase() method before calling any other methods
    /// Return the rows affected
    static Future<int> dbhDelete(String tableName, {String where, List whereArgs}) async {
        int affectedRows = 0;
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            affectedRows = await txn.delete(
                tableName,
                where: where,
                whereArgs: whereArgs,
            );
//      print("deleted : $affectedRows from $tableName");
        });

        return affectedRows;
    }

    /// Use this method to insert values into the given table.
    /// If a conflict occurs in UNIQUE constraint, then it will be replaced
    /// Should call the dbhOpenDatabase() method before calling any other methods
    static Future<int> dbhInsertTransaction(Map<String, List<Map<String, dynamic>>> data) async {
        int insertCount = 0;
        int updateCount = 0;
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            for (String tableName in data.keys) {
//        print("Table Name: $tableName");
                for (dynamic map in data[tableName]) {
//          print("Table Row: $map");

                    try {
                        int insertedId = await txn.insert(tableName, map, nullColumnHack: null, conflictAlgorithm: ConflictAlgorithm.fail);
//            print("inserted : $insertedId");
                        if (insertedId > -1) insertCount++;
                    } catch (ex) {
                        List<String> uniqueKeys = getUniqueKeys(tableName);
                        int affected = await txn.update(tableName, map,
                            where: generateWhereClause(uniqueKeys),
                            whereArgs: generateWhereArgs(uniqueKeys, map),
                            conflictAlgorithm: ConflictAlgorithm.ignore);
                        updateCount += affected;
//            print("updated : $affected");
                    }
                }
            }
        });

        print("TOTAL INSERTIONS : $insertCount");
        print("TOTAL UPDATION : $updateCount");

        return insertCount + updateCount;
    }

    /// Use this method to insert values into the given table.
    /// If a conflict occurs in UNIQUE constraint, then it will be replaced
    /// Should call the dbhOpenDatabase() method before calling any other methods
    static Future<int> dbhDeleteInsertTransaction(Map<String, List<Map<String, dynamic>>> data, List<Map<String, dynamic>> deleteData) async {
        int insertCount = 0;
        int updateCount = 0;
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            for (Map item in deleteData) {
                try {
                    int deleteRowCount = await txn.delete(item["tableName"], where: item["where"], whereArgs: item["whereArgs"]);
                    print("deleted : $deleteRowCount rows from ${item["tableName"]}");
                } catch (ex) {
                    print("Caught exception while deleting table entries ::: " + ex.toString());
                }
            }

            for (String tableName in data.keys) {
//        print("Table Name: $tableName");
                for (dynamic map in data[tableName]) {
//          print("Table Row: $map");

                    try {
                        int insertedId = await txn.insert(tableName, map, nullColumnHack: null, conflictAlgorithm: ConflictAlgorithm.fail);
//            print("inserted : $insertedId");
                        if (insertedId > -1) insertCount++;
                    } catch (ex) {
                        List<String> uniqueKeys = getUniqueKeys(tableName);
                        int affected = await txn.update(tableName, map,
                            where: generateWhereClause(uniqueKeys),
                            whereArgs: generateWhereArgs(uniqueKeys, map),
                            conflictAlgorithm: ConflictAlgorithm.ignore);
                        updateCount += affected;
//            print("updated : $affected");
                    }
                }
            }
        });

//    print("TOTAL INSERTIONS : $insertCount");
//    print("TOTAL UPDATION : $updateCount");

        return insertCount + updateCount;
    }

    /// Use this method to update values into the given table.
    /// If a conflict occurs in UNIQUE constraint, then it will be ignored
    /// Should call the dbhOpenDatabase() method before calling any other methods
    static Future<int> dbhUpdate(String tableName, Map<String, dynamic> values) async {
        int updatedCount = -1;
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            try {
                List<String> uniqueKeys = getUniqueKeys(tableName);
                updatedCount = await txn.update(tableName, values,
                    where: generateWhereClause(uniqueKeys),
                    whereArgs: generateWhereArgs(uniqueKeys, values),
                    conflictAlgorithm: ConflictAlgorithm.ignore);
            } catch (ex) {
                print(ex);
            }
        });

        return updatedCount;
    }

    static Future<List<Map>> dbhQuery(String table,
        {bool distinct,
            List<String> columns,
            String where,
            List whereArgs,
            String groupBy,
            String having,
            String orderBy,
            int limit,
            int offset}) async {
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        return await _db.query(table,
            distinct: distinct,
            columns: columns,
            where: where,
            whereArgs: whereArgs,
            groupBy: groupBy,
            having: having,
            orderBy: orderBy,
            limit: limit,
            offset: offset);
    }

    static Future<List<Map>> dbhRawQuery(String sql, [List arguments]) async {
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        return await _db.rawQuery(sql, arguments);
    }

    /// Generate the CREATE TABLE query by providing a table name and schema
    static String getCreateTableQuery(String tableName, dynamic tableSchema) {
        String query = "CREATE TABLE IF NOT EXISTS '$tableName'(";
        for (int i = 0; i < tableSchema.length; i++) {
            dynamic row = tableSchema[i];
            String columnName = row[0];
            String columnDataType = row[1];
            String columnConstraints = row[2];
            query += "'$columnName' $columnDataType $columnConstraints";

            if (i + 1 < tableSchema.length) {
                query += ", ";
            }
        }

        query += ")";
//    print(query);

        return query;
    }

    static List<String> getUniqueKeys(String tableName) {
        Map<String, List<String>> keyMap = new Map<String, List<String>>();
//        keyMap[EPAuthUser.tableName] = ["userId"];
//        keyMap[EPUserRole.tableName] = ["roleId"];
//        keyMap[EPDiary.tableName] = ["diaryId", "trackableId"];
//        keyMap[EPDiaryTarget.tableName] = ["diaryId", "trackableId"];
//        keyMap[EPHomeworkAttachment.tableName] = ["diaryId", "attachmentId"];
//        keyMap[EPSchoolCircular.tableName] = ["notificationId"];
//        keyMap[EPTrackable.tableName] = ["trackableId"];
//        keyMap[EPLeave.tableName] = ["leave_leaveId"];
//        keyMap[EPCompanyData.tableName] = ["comp_companyId"];
//        keyMap[EPTrackableData.tableName] = ["track_trackableId"];
//        keyMap[EPUserData.tableName] = ["user_userId"];
//        keyMap[EPAlert.tableName] = ["alert_historyId"];
//        keyMap[EPHoliday.tableName] = ["holi_locationId", "holi_date"];
//        keyMap[EPMonthlyCountReport.tableName] = ["groupId", "date"];
//        keyMap[EPMonthlyActivity.tableName] = ["trackableId", "date"];
//        keyMap[EPTrip.tableName] = ["tripId", "trackableId"];
//        keyMap[EPLocation.tableName] = ["locationId"];
//        keyMap[EPFloor.tableName] = ["floorId"];
//        keyMap[EPSpot.tableName] = ["spotId"];
//        keyMap[EPTrackableType.tableName] = ["typeId"];
//        keyMap[EPMessage.tableName] = ["message_threadId"];
//        keyMap[EPChatMessage.tableName] = ["message_threadId", "message_messageId"];
//        keyMap[EPGroup.tableName] = ["groupId", "locationId"];
//        keyMap[EPSubject.tableName] = ["subjectId"];
//        keyMap[EPStudentAttendance.tableName] = ["trackableId", "date"];
//        keyMap[EPTrackableActivity.tableName] = ["trackableId"];
//        keyMap[EPTeacher.tableName] = ["userId"];
//        keyMap[EPDownload.tableName] = ["documentId"];
//        keyMap[EPTeacherTrackable.tableName] = ["userId", "trackableId"];
//        keyMap[EPCircularAttachment.tableName] = ["notificationId", "attachmentId"];
        return keyMap[tableName];
    }

    static String generateWhereClause(List<String> uniqueKeys) {
        String where = "";

        bool first = true;
        for (String key in uniqueKeys) {
            if (first) {
                first = false;
            } else {
                where += " AND ";
            }

            where += " $key = ?";
        }

        return where;
    }

    static List generateWhereArgs(List<String> uniqueKeys, Map map) {
        List whereArgs = new List();
        for (String key in uniqueKeys) {
            whereArgs.add(map[key]);
        }

        return whereArgs;
    }

    static Future<bool> dbhDeleteTables() async {
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            try {
                List<Map> names = await txn.rawQuery("SELECT name FROM sqlite_master WHERE type='table' ORDER BY name;");
                print("names : $names");
                if (names != null && names.length > 0) {
                    for (var o in names) {
                        if (o["name"] != "android_metadata") {
                            try {
                                int changes = await txn.rawDelete("DELETE From ${o["name"]}");
                                print("Changes to table ${o["name"]} on deleting: $changes");
                            } catch (ex) {
                                print("Caught exception deleting table ${ex.toString()}");
                            }
                        }
                    }
                }
            } catch (exception) {
//        print("Caught exception fetching table names ${exception.toString()}");
            }
        });
        return true;
    }

    /// Use this method to delete values into the given table.
    /// Should call the dbhOpenDatabase() method before calling any other methods
    static Future<int> dbhDeleteInTransaction(List<Map<String, dynamic>> deleteData) async {
        int deleteCount = 0;
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            for (Map item in deleteData) {
                try {
                    deleteCount = await txn.delete(item["tableName"], where: item["where"], whereArgs: item["whereArgs"]);
                    print("deleted : $deleteCount rows from ${item["tableName"]}");
                } catch (ex) {
                    print("Caught exception while deleting table entries ::: " + ex.toString());
                }
            }
        });
        return deleteCount;
    }

    ///use this this method for delete table data the table names
    /// provided as [tableNames]  will not be cleared
    static Future<bool> dbhDeleteNonSpecifiedTables(List<String> tableNames) async {
        print("tablenames $tableNames");
        if (null == _db) {
            await DBHelper.dbhOpenDatabase();
        }
        await _db.transaction((txn) async {
            try {
                List<Map> names = await txn.rawQuery("SELECT name FROM sqlite_master WHERE type='table' ORDER BY name;");
                print("names : $names");
                if (names != null && names.length > 0) {
                    for (var o in names) {
                        bool isInTableNames = false;
                        if (o["name"] != "android_metadata") {
                            for (var tableName in tableNames) {
                                print("table name = $tableName = o[name] = ${o["name"]} ");
                                if (tableName == o["name"]) {
                                    isInTableNames = true;
                                    break;
                                }
                            }
                            if (isInTableNames == false) {
                                try {
                                    int changes = await txn.rawDelete("DELETE From ${o["name"]}");
                                    print("Changes to table ${o["name"]} on deleting: $changes");
                                } catch (ex) {
                                    print("Caught exception deleting table ${ex.toString()}");
                                }
                            }
                        }
                    }
                }
            } catch (exception) {
//        print("Caught exception fetching table names ${exception.toString()}");
            }
        });
        return true;
    }
}
