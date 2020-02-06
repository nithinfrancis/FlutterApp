import 'dart:async';
import 'dart:ui';

import 'package:eduplus_app/api/eduplus_error.dart';
import 'package:eduplus_app/utils/eduplus_preference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class EduplusLocalizations {
  EduplusLocalizations(this.locale);

  final Locale locale;
  static List<String> supportedLanguages = ['en', 'ja', 'ml', 'ar'];
  static String eduplusAppLocale;

  static EduplusLocalizations of(BuildContext context) {
    return Localizations.of<EduplusLocalizations>(context, EduplusLocalizations);
  }

  static Map<String, Map<String, String>> get localizedValues => _localizedValues;

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'payments':'Fee',
      'eduplus': 'EduPlus',
      'ok': 'OK',
      'home': 'Home',
      'otp_sented': 'One-Time-Password(OTP) has been send to your registered mobile number',
      'success': 'Success',
      'getotp': 'Get OTP',
      'password': 'Password',
      'signin': 'Signing in...',
      'profile_edit': 'Profile Edit',
      'submit': 'SUBMIT',
      'timezone': 'Timezone',
      'language': 'Language',
      'mobile': 'Mobile',
      'email': 'Email',
      'registered': 'Registered',
      'name': 'Name',
      'select_lang': 'Select Language',
      'select_time_zone': 'Select timezone',
      'please_provide_valid_name': 'Please provide a valid name',
      'loading': 'Loading...',
      'signing': 'Signing in...',
      'login': 'LOGIN',
      'invalid_email_password': 'Invalid email or password',
      'mobile_not_registered': 'The mobile number you have entered is not registered',
      'provide_valid_mobileno': 'Invalid Mobile number',
      'mobileno': 'Mobile number',
      'provide_valid_password': 'Please provide a valid password',
      'check_network': 'Please check your network connection and try again',
      'provide_valid_confirm_password': 'Please provide a valid confirm password.',
      'password_mismatch': 'The passwords don\'t match',
      'change_password': 'Change password',
      'current_password': 'Current password',
      'confirm_password': 'Confirm password',
      'new_password': 'New password',
      'password_validation':
          '*Password must have at least one upper case character, one lower case character, one number and a special character. Minimum 8 characters and maximum 20 characters.',
      'retry': 'RETRY',
      'cancel': 'Cancel',
      'edit': 'EDIT',
      'search': 'Search...',
      'all': 'All',
      'today': 'Today',
      'close': 'Close',
      'send': 'Send',
      'refresh': 'Refresh',
      'password_change': 'Password Change',
      'authentication_error': 'Authentication error',
      'emptylist': 'Empty list',
      'cant_load_data': 'Cant load data',
      'saving': 'Saving',
      'save': 'Save',
      'otp_info': 'We need to text you the OTP to authenticate your account',

      //sidemenu
      'profile': 'Profile',
      'dashboard': 'Dashboard',
      'school_diary': 'School Diary',
      'homework': 'Homework',
      'messages': 'Messages',
      'alerts': 'Alerts',
      'leaves': 'Leaves',
      'school_circulars': 'Notice Board',
      'downloads': 'Downloads',
      'logout': 'Logout',
      'students': 'Students',
      'staff':'Staff',
      'monthly_report': 'Monthly Report',
      'monthly_attendance': 'Monthly Attendance',
      'activity_timeline': 'Activity Timeline',
      'bus_monitoring': 'Bus Monitoring',
      'monthly_activity': 'Monthly Activity',
      'circulars': 'Notice Board',
      'files': 'Files',
      'timeline': 'Timeline',

      //homescreen
      'live_students': 'Live Students',
      'attendence': 'Attendence',
      'total': 'Total',
      'live': 'Live',
      'present': 'Present',
      'absent': 'Absent',
      'timetable': 'Timetable',
      'no_students_added': 'No students added in',
      'group_data_not_available': 'Group data is not available',
      'no_data_available_selectedday': 'No data available for the selected day',
      'select_location': 'Select location',
      'subject_allreday_select': 'Subject allready selected',
       'subject_not_map': 'Subject not mapped to grade',

      //diary_list_screen
      'add_diary': 'Add Diary',
      'select_class': 'Select class',
      'try_again': 'TRY AGAIN',
      'network_error': 'Network Error',
      'oops': 'Oopss...',
      'load_failed': 'Can\'t load data at this moment',
      'diary_cancel_succes': 'Diary cancelled successfully',
      'confirm': 'Confirm',
      'confirm_cancel_diary': 'Are you sure to cancel this diary?',
      'please_wait': 'Please wait...',

      //diary_list_parent
      'diary': 'Diary',

      //diary_create_screen_teacher
      'create_diary': 'Creating Diary...',
      'title': 'Title',
      'message': 'Message',
      'select_students': 'Select Students',
      'create_new_diary': 'Create New Diary',
      'enter_diary_title': 'Please provide a valid Title / Description for the diary',
      'select_class_diary': 'Please select a class for the diary',
      'select_student_for_diary': 'Please select a student for the diary',
      'diary_create_sucess': 'Diary created successfully',
      'select_student': 'Select Student',
      'select_all': 'Select All',
      'deselect_all': 'Deselect All',
      'done': 'Done',

      //dashboard parent
      'no_activity_found': 'Sorry, no activity found',
      'check_previous_day_activity': 'Check previous day activity',
      'kid_is_in': 'Student is in',
      'check_activity_timeline': 'Check activity timeline',
      'home_work': 'HOMEWORK',

      //profile
      'remove_profile_pic': 'Remove Profile Picture',
      'select_from_gallery': 'Select from Gallery',
      'take_a_picture': 'Take a Picture',
      'updating_profile_picture': 'Updating Profile Picture...',
      'profile_image_size_exceed': 'Maximum 5MB allowed for profile image',

      //homework
      'add_homework': 'Add Homework',

      //homework create screen
      'only_5_files_allowed': 'Maximum of 5 files are allowed',
      'gallery': 'Gallery',
      'camera': 'Camera',
      'browse': 'Browse',
      'video': 'Video',
      'multi_file_upload_unsupport': 'Multiple file upload is unsupported',
      'attach_file_failed': 'Failed to attach file',
      'attachement_size_exceed': 'Maximum 5MB is allowed as an attachment',
      'message_attachement_size_exceed': 'Maximum 5MB is allowed as an attachment',
      'description': 'Description',
      'reference': 'Reference',
      'add_attachment': 'Add Attachment',
      'add_maximum_5_attachments': 'Maximum 5 files can attach',
      'class': 'Class',
      'subject': 'Subject',
      'select_subject': 'Select Subject',
      'student': 'Student',
      'submission_date': 'Submission Date',
      'submission': 'Submission',
      'date': 'Date',
      'create_homework': 'Add Homework',
      'edit_homework': 'Edit Homework',
      'homework_validation': 'Please enter a valid title/ description /reference for the homework',
      'select_homework_class': 'Please select a class for the homework',
      'select_homework_subject': 'Please select a subject for the homework',
      'homework_edit_cancel': 'Are you sure to cancel? The edited data will be lost',
      'homework_create_success': 'Homework created successfully',
      'homework_edit_success': 'Homework edited successfully',

      'unable_attach_file': 'Unable to attach file',

      //diary details screen
      'assigned_to': 'Assigned to',
      'diary_details': 'Diary Details',
      'nothing': 'NOTHING!',
      'diary_list_empty': 'Your diary list is empty',
      'homework_list_empty': 'Your homework list is empty',
      'attachments': 'Attachments',
      'homework_details': 'Homework Details',
      'confirm_cancel_homework': 'Are you sure to cancel this homework',
      'homework_cancel_success': 'Homework cancelled successfully',

      //messages
      'new_message': 'New message',
      'select_teacher': 'Select teacher',
      'select_role': 'Select role',
      'teacher': 'TEACHER',
      'parent': 'PARENT',
      'please_select_teacher': 'Please select a teacher',
      'please_add_message': 'Please add a message',
      'enter_message': ' Type the message',
      'message_validation_alert': 'Looks like you have entered unsupported characters',
      'message_load_fail': 'Unable to load Messages..Try again',
      'loading_messages': 'Loading Messages...',
      'start_messaging': 'Start Messaging...',
      'student_list_empty': 'Your student list is empty',
      'staff_list_empty':'Your staff list is empty',
      'a_month_ago': 'a month ago',
      'months_ago': ' months ago',
      'ago': ' ago',
      'second': 'second',
      'seconds': 'seconds',
      'minute': 'minute',
      'minutes': 'minute',
      'hour': 'hour',
      'hours': 'hours',
      'day': 'day',
      'days': 'days',
      'search_teacher': 'Search Teacher',
      'add_teacher': 'Add Teacher',

      //students
      'activity': 'Activity',
      'choose_activity': 'Choose an activity',
      'gender': 'GENDER',
      'male': 'Male',
      'female': 'Female',
      'floor': 'FLOOR',
      'spot': 'SPOT',
      'last_seen': 'LAST SEEN',
      'Attendence': 'ATTENDANCE',
      'student_details': 'Student details',
      'created_on': 'Created on',
      'assigned_by': 'Assigned by',

      //password change
      'provide_valid_otp': 'Please provide a valid otp',
      'create_password': 'Create password',
      'otp': 'OTP',

      //edupluserror
      'unauthorized_access': 'Unauthorized access',
      'user_not_found': 'User not found',
      'diary_not_found': 'Diary not found',
      'password_does_not_match': 'Password does not match',
      'server_communication_failed': 'Unable to communicate with the server',
      'unexpected_error_try_agin': 'An unexpected error had occured. Please try again later.',
      'leave_already_exist_or_invalid_date': 'Leave already exist or invalid date ranges',
      'resultPublishedError': 'Subjects result already published',

      //Leaves
      'Requesting_leave': 'Requesting leave',
      'from': 'From',
      'to': 'To',
      'duration': 'Duration',
      'half_day': 'HalfDay',
      'half_day_options': 'Halfday Options',
      'reason': "Reason",
      'request': "Request",
      'request_leave': "Request Leave",
      'first_half': "First-Half",
      'second_half': "Second-Half",
      'provide_a_valid_date': "Please select a valid date range, from date should be lower than to date",
      'provide_a_valid_duration': "Please provide a valid duration",
      'provide_a_valid_session_day': "Please select a valid session",
      'which_teacher_to_request_the_leave_to': "Please select which teacher to request the leave to",
      'please_enter_a_valid_reason': "Please enter a valid reason",
      'are_you_sure_to_cancel_this_leave': "Are you sure to cancel this leave?",
      'leave_added_successfully': 'Leave added successfully',
      'add_leave': 'Add Leave',

      //Activity Timeline
      'no_feeds': "No activity recorded yet",

      //Monthly Activity
      'check_data_before_submitting': "Check data before submitting",
      'mark_attendence': "Mark Attendence",
      'time_slots': 'Time slots',
      'rule': 'Rule',
      'start_time': 'Start time',
      'end_time': 'End time',
      'choose_student': 'Choose Student',
      'attendance': 'Attendance',
      'monthly_activity_class': 'Monthly Activity Class',
      'activity_list_empty': 'Sorry,no activity found',
      'monthly_activity_history': 'Monthly Activity History',
      'select_month': 'Select Month',
      'history': 'History',
      'summary': 'Summary',
      'movement': 'Movement',
      'choose_an_activity': 'Choose An Activity',
      'no_activities_found': 'No Activities found on this class',

      //downloads
      'welcome_downloads': 'welcome_downloads',

      //diary
      'diary_created_successfully': 'Diary created successfully',

      //monthly report
      'choose_student_class': 'Choose student class',

      //logout
      'logout_message': 'Oops! Your current session is no longer valid.Please log in again',
      'logout_from_user_added': 'A new role is added to your account ,you need to login again to reflect that in your app.',
      'signing_out': 'Signing out. Please wait...',

      //student details
      'get_history': 'Get history',
      'get_summary': 'Get Summary',
      'entry': 'Entry',
      'exit': 'Exit',
      'first_entry': 'First entry',
      'last_exit': 'Last exit',
      'time_spent': 'Time spent',
      'no_diaries': 'No diaries',
      'no_homeworks': 'No homeworks',
      'all_spots': 'All spots',
      'select_spot': 'Select spot',
      'choose_a_spot': 'Choose a spot',
      'holiday': 'Holiday',

      //ep_alerts
      'presence': 'Presence',
      'alone': 'Alone',
      'late_stay': 'Late Stay',
      'bus_entry': 'Bus Entry',
      'bus_exit': 'Bus Exit',
      'bus_in_previous_stop': 'Bus in previous stop',
      'bus_invalid_entry': 'Bus invalid entry',
      'bus_invalid_exit': 'Bus invalid exit',
      'bus_invalid_stay': 'Bus invalid stay',
      'bus_student_not_entered': 'Bus student not entered',
      'staying_late_at_floor': '%s is staying late at floor %s"',
      'entered_floor': '%s entered floor %s',
      'is_present_in_floor': '%s is present in floor %s',
      'exited_from_floor': '%s exited from floor %s',
      'is_absent_from_floor': '%s is absent from floor %s',
      'is_alone_at_floor': '%s is alone at floor %s',
      'entered_bus_from_floor': '%s entered bus from floor %s',
      'exited_bus_from_floor': '%s exited bus from floor %s',
      'x_is_present_from': '%s is present on %s in timeslot %s',

      //ep_alert_bus
      'x_entered_bus_at_stop': '%s entered bus at stop %s',
      'x_got_down_from_bus_at_stop': '%s got down from bus at stop %s',
      'bus_in_previous_stop_x': 'Bus in previous stop %s',
      'bus_invalid_entry_for_x_at_stop_x': 'Bus invalid entry for %s at stop %s',
      'bus_invalid_exit_for_x_at_stop_x': 'Bus invalid exit for %s at stop %s',
      'x_is_still_on_bus_after_stop_x': 't1 is still on bus after stop s1',
      'x_not_entered_at_stop_x': '%s not entered at stop %s',
      'student_not_entered_in_bus': 'Student not entered in bus',

      //ep_trip
      'finished': 'FINISHED',
      'on_time': 'ON TIME',
      'late_by': 'LATE BY',
      'early_by': 'EARLY BY',
      'not_started': 'NOT STARTED',
      'not_available': 'NOT AVAILABLE',

      //ep_activity_timeline
      'bus_reached_location_alert': '"Bus has reached l1 @t1 ". Will reach your pickup point soon."',
      'bus_passed_destination_kid_still_in_bus': 'Bus has passed your assigned destination @t1. Student is still on the bus.',
      'kid_entered_bus': 'Student entered bus from %s @ %s',
      'bus_will_reach_your_dropdown_point_soon': 'Bus has reached %s @%s. Will reach your dropdown point soon.',
      'kid_not_enterd_bus_from_stop': 'Student has not entered the bus from the assigned stop',
      'kid_entered_from_wrong_pickup_point': 'Student entered bus from a wrong pickup point %s @%s',
      'kid_alighted_from_bus_wrong_destination': 'Student has alighted the bus at wrong destination %s @%s',
      'kid_reached_school': 'Student reached school @%s',
      'kid_is_in_location': 'Student is in l1 @t1',
      'kid_entered_bus_from_school': 'Student has entered the bus from school @%s',
      'bus_started_from_school_kid_not_entered': 'Bus has started from the school @%s. Student has not entered the bus.',
      'bus_started_kid_entered': 'Bus has started from the school. Student has entered bus from l1 @t1',
      'kid_alighted_from_bus': 'Student has alighted from bus at l1 @t1',

      //ep_school_circular
      'published_by': 'Published by',
      'published_on': 'Published on',
      'on': 'on',
      'th': 'th',

      //ep_leave
      'days_from': 'days from',
      'date_to': 'to',
      'day_on': 'day on',
      'end': '',

      //ep_diary
      'invalid': 'Invalid',
      'nil': 'Nil',

      //Settings
      'settings': 'Settings',
      'school': 'School',
      'about': 'About',
      'privacy_policy': 'Privacy Policy',
      'terms_of_use': 'Terms of use',
      'version': 'Version',
      'locations': 'Locations',
      'smartcalendar':'Smart Calendar',

    },
    'ja': {
      'payments':'料金の支払い',
      'eduplus': 'EduPlus',
      'ok': 'OK',
      'home': 'Home',
      'otp_sented': 'One-Time-Password(OTP) has been send to your registered email and mobile number',
      'success': '成功',
      'getotp': 'Get OTP',
      'password': 'パスワード',
      'signin': 'Signing in...',
      'profile_edit': '編集',
      'submit': '登録',
      'timezone': 'タイムゾーン',
      'language': '言語',
      'mobile': 'Mobile',
      'email': '電子メール',
      'registered': '登録',
      'name': '名前',
      'select_lang': 'Select Language',
      'select_time_zone': 'タイムゾーンの選択',
      'please_provide_valid_name': '正しい名前を入力してください',
      'loading': 'Loading...',
      'signing': 'Signing in...',
      'login': 'ログイン',
      'invalid_email_password': 'Invalid email or password',
      'mobile_not_registered': 'The mobile number you have entered is not registered',
      'provide_valid_email_mobileno': 'Invalid Email or Mobile number',
      'mobileno': 'Mobile number',
      'provide_valid_password': '正しいパスワードを入力してください',
      'check_network': 'Please check your network connection and try again',
      'provide_valid_confirm_password': '正しいパスワードを入力してください',
      'password_mismatch': 'The passwords don\'t match',
      'change_password': 'パスワード変更',
      'current_password': '現在のパスワード',
      'confirm_password': 'パスワード（確認）',
      'new_password': '新しいパスワード',
      'password_validation': '*パスワードには、少なくとも1つの大文字、1つの小文字、1つの数字、および特殊文字が必要です。 長さは8から20文字です。',
      'retry': 'RETRY',
      'cancel': 'キャンセル',
      'edit': '編集',
      'search': '検索...',
      'all': 'すべて',
      'today': 'Today',
      'close': '閉じる',
      'send': '送信',
      'refresh': '更新',
      'password_change': 'Password Change',
      'authentication_error': 'Authentication error',
      'emptylist': 'Empty list',
      'cant_load_data': 'Cant load data',
      'saving': 'Saving',
      'save': '保存',
      'otp_info': 'We need to text you the OTP to authenticate your account',

      //sidemenu
      'profile': 'プロファイル',
      'dashboard': 'ダッシュボード',
      'school_diary': 'School Diary',
      'homework': 'Homework',
      'messages': 'Messages',
      'alerts': 'アラート',
      'leaves': 'Leaves',
      'school_circulars': 'Notice Board',
      'downloads': 'Downloads',
      'logout': 'Logout',
      'students': 'Students',
      'staff':'Staff',
      'monthly_report': 'Monthly Report',
      'activity_timeline': 'Activity Timeline',
      'bus_monitoring': 'Bus Monitoring',
      'monthly_activity': 'Monthly Activity',
      'circulars': 'Notice Board',
      'files': 'Files',
      'timeline': 'Timeline',

      //homescreen
      'live_students': 'Live Students',
      'attendence': '出席',
      'total': '合計',
      'present': '存在',
      'live': 'Live',
      'absent': '不在',
      'timetable': 'Timetable',
      'no_students_added': 'No students added in',
      'group_data_not_available': 'Group data is not available',
      'no_data_available_selectedday': 'No data available for the selected day',
      'select_location': 'Select location',

      //diary_list_screen
      'add_diary': 'Add Diary',
      'select_class': 'Select class',
      'try_again': 'TRY AGAIN',
      'network_error': 'Network Error',
      'oops': 'Oopss...',
      'load_failed': 'Can\'t load data at this moment',
      'diary_cancel_succes': 'Diary cancelled successfully',
      'confirm': 'Confirm',
      'confirm_cancel_diary': 'Are you sure to cancel this diary?',
      'please_wait': 'Please wait...',

      //diary_list_parent
      'diary': 'Diary',

      //diary_create_screen_teacher
      'create_diary': 'Creating Diary...',
      'title': 'タイトル',
      'message': 'メッセージ',
      'select_students': 'Select Students',
      'create_new_diary': 'Create New Diary',
      'enter_diary_title': 'Please enter a title for the diary',
      'select_class_diary': 'Please select a class for the diary',
      'select_student_for_diary': 'Please select a student for the diary',
      'diary_create_sucess': 'Diary created successfully',
      'select_student': 'Select Student',
      'select_all': 'Select All',
      'deselect_all': 'Deselect All',
      'done': 'Done',

      //dashboard parent
      'no_activity_found': 'Sorry, no activity found',
      'check_previous_day_activity': 'Check previous day activity',
      'kid_is_in': 'Student is in',
      'check_activity_timeline': 'Check activity timeline',
      'home_work': 'HOMEWORK',

      //profile
      'remove_profile_pic': 'Remove Profile Picture',
      'select_from_gallery': 'Select from Gallery',
      'take_a_picture': 'Take a Picture',
      'updating_profile_picture': 'Updating Profile Picture...',
      'profile_image_size_exceed': 'Maximum 5MB allowed for profile image',

      //homework
      'add_homework': 'Add Homework',

      //homework create screen
      'only_5_files_allowed': 'Maximum of 5 files are allowed',
      'gallery': 'Gallery',
      'camera': 'カメラ',
      'browse': 'Browse',
      'video': 'Video',
      'multi_file_upload_unsupport': 'Multiple file upload is unsupported',
      'attach_file_failed': 'Failed to attach file',
      'attachement_size_exceed': 'Maximum 5 MB is allowed as an attachment',
      'message_attachement_size_exceed': 'Maximum 5MB is allowed as an attachment',
      'description': '説明',
      'reference': 'Reference',
      'add_attachment': 'Add Attachment',
      'add_maximum_5_attachments': 'Maximum 5 files can attach',
      'class': 'Class',
      'subject': 'Subject',
      'select_subject': 'Select Subject',
      'student': 'Student',
      'submission_date': 'Submission Date',
      'submission': 'Submission',
      'date': '日付',
      'create_homework': 'Add Homework',
      'edit_homework': 'Edit Homework',
      'homework_validation': 'Please enter a valid title/ description /reference for the homework',
      'select_homework_class': 'Please select a class for the homework',
      'select_homework_subject': 'Please select a subject for the homework',
      'homework_edit_cancel': 'Are you sure to cancel? The edited data will be lost',
      'homework_create_success': 'Homework created successfully',
      'homework_edit_success': 'Homework edited successfully',

      'unable_attach_file': 'Unable to attach file',

      //diary details screen
      'assigned_to': 'Assigned to',
      'diary_details': 'Diary Details',
      'nothing': 'NOTHING!',
      'diary_list_empty': 'Your diary list is empty',
      'homework_list_empty': 'Your homework list is empty',
      'attachments': 'Attachments',
      'homework_details': 'Homework Details',
      'confirm_cancel_homework': 'Are you sure to cancel this homework',
      'homework_cancel_success': 'Homework cancelled successfully',

      //messages
      'new_message': 'New message',
      'select_teacher': 'Select teacher',
      'select_role': '役割の選択',
      'teacher': 'TEACHER',
      'parent': 'PARENT',
      'please_select_teacher': 'Please select a teacher',
      'please_add_message': 'Please add a message',
      'enter_message': 'Enter Message',
      'message_validation_alert': 'Looks like you have entered unsupported characters',
      'message_load_fail': 'Unable to load Messages..Try again',
      'loading_messages': 'Loading Messages...',
      'start_messaging': 'Start Messaging...',
      'student_list_empty': 'Your student list is empty',
      'staff_list_empty':'Your staff list is empty',
      'a_month_ago': 'a month ago',
      'months_ago': ' months ago',
      'ago': 'ago',
      'second': 'second',
      'seconds': 'seconds',
      'minute': 'minute',
      'minutes': '分',
      'hour': 'hour',
      'hours': 'hours',
      'day': 'day',
      'days': 'days',
      'search_teacher': 'Search Teacher',
      'add_teacher': 'Add Teacher',

      //students
      'activity': 'アクティビティ',
      'choose_activity': 'Choose an activity',
      'gender': '性別',
      'male': '男性',
      'female': '女性',
      'floor': 'フロア',
      'spot': 'スポット',
      'last_seen': '最後に見たもの',
      'Attendence': '出席',
      'student_details': 'Student details',
      'created_on': 'Created on',
      'assigned_by': 'Assigned by',

      //password change
      'provide_valid_otp': 'Please provide a valid otp',
      'create_password': 'Create password',
      'otp': 'OTP',

      //edupluserror
      'unauthorized_access': 'Unauthorized access',
      'user_not_found': 'User not found',
      'diary_not_found': 'Diary not found',
      'password_does_not_match': 'Password does not match',
      'server_communication_failed': 'Unable to communicate with the server',
      'unexpected_error_try_agin': 'An unexpected error had occured. Please try again later.',
      'leave_already_exist_or_invalid_date': 'Leave already exist or invalid date ranges',

      //Leaves
      'Requesting_leave': 'Requesting leave',
      'from': '送信元',
      'to': '送信先',
      'duration': '期間',
      'half_day': 'HalfDay',
      'half_day_options': 'Halfday Options',
      'reason': "Reason",
      'request': "Request",
      'request_leave': "Request Leave",
      'first_half': "first-half",
      'second_half': "second-half",
      'provide_a_valid_date': "正しい日付を選択してください",
      'provide_a_valid_duration': "Please provide a valid duration",
      'provide_a_valid_session_day': "Please select a valid session",
      'which_teacher_to_request_the_leave_to': "Please select which teacher to request the leave to",
      'please_enter_a_valid_reason': "正当な理由を提示してください",
      'are_you_sure_to_cancel_this_leave': "Are you sure to cancel this leave?",
      'leave_added_successfully': 'Leave added successfully',
      'add_leave': 'Add Leave',
      //Activity Timeline
      'no_feeds': "No activity recorded yet",

      //Bus Monitoring

      //Monthly Activity
      'check_data_before_submitting': "Check data before submitting",
      'mark_attendence': "出席者をマークする",
      'time_slots': 'タイムスロット',
      'rule': 'ルール',
      'start_time': '開始時間',
      'end_time': '終了時間',
      'choose_student': 'Choose Student',
      'attendance': '出席',
      'monthly_activity_class': 'Monthly Activity Class',
      'activity_list_empty': 'Sorry,no activity found',
      'monthly_activity_history': 'Monthly Activity History',
      'select_month': 'Select Month',
      'history': '履歴',
      'summary': '概要',
      'movement': '行動',
      'choose_an_activity': 'Choose An Activity',
      'no_activities_found': 'No Activities found on this class',

      //downloads
      'welcome_downloads': 'welcome_downloads',

      //monthly report
      'choose_student_class': 'Choose student class',

      //diary
      'diary_created_successfully': 'Diary created successfully',

      //logout
      'logout_message': 'Oops! Seems something went wrong.Please log in again',
      'logout_from_user_added': 'A new role is added to your account ,you need to login again to reflect that in your app.',
      'signing_out': 'Signing out. Please wait...',

      //student details
      'get_history': 'Get history',
      'get_summary': 'Get Summary',
      'entry': 'エントリー',
      'exit': '退出',
      'first_entry': '最初の入室',
      'last_exit': '最終退出',
      'time_spent': '時間経過',
      'no_diaries': 'No diaries',
      'no_homeworks': 'No homeworks',
      'all_spots': 'All spots',
      'select_spot': 'スポットの選択',
      'choose_a_spot': 'Choose a spot',
      'holiday': '休日',

      //ep_alerts
      'presence': '不在',
      'alone': '一人です',
      'late_stay': '遅くまで滞在しています',
      'bus_entry': 'Bus Entry',
      'bus_exit': 'Bus Exit',
      'bus_in_previous_stop': 'Bus in previous stop',
      'bus_invalid_entry': 'Bus invalid entry',
      'bus_invalid_exit': 'Bus invalid exit',
      'bus_invalid_stay': 'Bus invalid stay',
      'bus_student_not_entered': 'Bus student not entered',
      'staying_late_at_floor': '%s is staying late at floor %s"',
      'entered_floor': '%s entered floor %s',
      'is_present_in_floor': '%s is present in floor %s',
      'exited_from_floor': '%s exited from floor %s',
      'is_absent_from_floor': '%s is absent from floor %s',
      'is_alone_at_floor': '%s is alone at floor %s',
      'entered_bus_from_floor': '%s entered bus from floor %s',
      'exited_bus_from_floor': '%s exited bus from floor %s',
      'x_is_present_from': '%s is present from %s to %s',

      //ep_alert_bus
      'x_entered_bus_at_stop': '%s entered bus at stop %s',
      'x_got_down_from_bus_at_stop': '%s got down from bus at stop %s',
      'bus_in_previous_stop_x': 'Bus in previous stop %s',
      'bus_invalid_entry_for_x_at_stop_x': 'Bus invalid entry for %s at stop %s',
      'bus_invalid_exit_for_x_at_stop_x': 'Bus invalid exit for %s at stop %s',
      'x_is_still_on_bus_after_stop_x': 't1 is still on bus after stop s1',
      'x_not_entered_at_stop_x': '%s not entered at stop %s',
      'student_not_entered_in_bus': 'Student not entered in bus',

      //ep_activity_timeline
      'bus_reached_location_alert': '"Bus has reached l1 @t1 ". Will reach your pickup point soon."',
      'bus_passed_destination_kid_still_in_bus': 'Bus has passed your assigned destination @t1. Student is still on the bus.',
      'kid_entered_bus': 'Student entered bus from %s @%s',
      'bus_will_reach_your_dropdown_point_soon': 'Bus has reached %s @%s. Will reach your dropdown point soon.',
      'kid_not_enterd_bus_from_stop': 'Student has not entered the bus from the assigned stop',
      'kid_entered_from_wrong_pickup_point': '"Student entered bus from a wrong pickup point %s @%s',
      'kid_alighted_from_bus_wrong_destination': 'Student has alighted the bus at wrong destination %s @%s',
      'kid_reached_school': 'Student reached school @%s',
      'kid_is_in_location': 'Student is in l1 @t1',
      'kid_entered_bus_from_school': 'Student has entered the bus from school @%s',
      'bus_started_from_school_kid_not_entered': 'Bus has started from the school @%s. Student has not entered the bus.',
      'bus_started_kid_entered': 'Bus has started from the school. Student has entered bus from l1 @t1',
      'kid_alighted_from_bus': 'Student has alighted from bus at l1 @t1',

      //ep_trip
      'finished': 'FINISHED',
      'on_time': 'ON TIME',
      'late_by': 'LATE BY',
      'early_by': 'EARLY BY',
      'not_started': 'NOT STARTED',
      'not_available': 'NOT AVAILABLE',

      //ep_school_circular
      'published_by': 'Published by',
      'published_on': 'Published on',
      'on': 'on',
      'th': 'th',

      //ep_leave
      'days_from': 'days from',
      'date_to': 'to',
      'day_on': 'day on',
      'end': '',

      //ep_diary
      'invalid': 'Invalid',
      'nil': 'Nil',

      //Settings
      'settings': 'Settings',
      'school': 'School',
      'about': 'About',
      'privacy_policy': 'Privacy Policy',
      'terms_of_use': 'Terms of use',
      'version': 'Version',
      'locations': 'Locations',
      'smartcalendar':'Smart Calendar',

    },
    'ml': {
      'payments':'ഫീസ്',
      'eduplus': 'എഡുപ്ലസ് ',
      'password': 'പാസ്സ്‌വേർഡ്',
      'success': 'സക്‌സസ് ',
      'ok': 'ശരി',
      'home': 'Home',
      'getotp': 'OTP നേടുക',
      'otp_sented': 'നിങ്ങളുടെ രജിസ്റ്റർ ചെയ്ത ഇമെയിലേക്കും മൊബൈൽ നമ്പറിലേക്കും OTP അയച്ചിട്ടുണ്ട്',
      'signin': 'സൈൻ ഇൻ ചെയ്യുന്നു...',
      'profile_edit': 'പ്രൊഫൈൽ തിരുത്തുക',
      'submit': 'സമർപ്പിക്കുക',
      'timezone': 'സമയ മേഖല',
      'language': 'ഭാഷ',
      'mobile': 'മൊബൈൽ',
      'email': 'ഇമെയിൽ',
      'registered': 'രജിസ്റ്റർ ചെയ്തിരിക്കുന്നു',
      'name': 'പേര്',
      'select_lang': 'ഭാഷ തിരഞ്ഞെടുക്കുക',
      'select_time_zone': 'സമയമേഖല തിരഞ്ഞെടുക്കുക',
      'please_provide_valid_name': 'ദയവായി ശരിയായ പേര് നൽകുക',
      'loading': 'ലോഡിംഗ്...',
      'signing': 'സൈൻ ഇൻ ചെയ്യുന്നു...',
      'login': 'ലോഗിൻ',
      'invalid_email_password': 'നിങ്ങൾ നൽകിയ മൊബൈൽ നമ്പർ അല്ലെങ്കിൽ ഇമെയിൽ അസാധുവാണ്',
      'mobile_not_registered': 'നിങ്ങൾ നൽകിയ മൊബൈൽ നമ്പർ രജിസ്റ്റർ ചെയ്തിട്ടില്ല',
      'provide_valid_email_mobileno': 'അസാധുവായ ഇമെയിൽ അല്ലെങ്കിൽ മൊബൈൽ നമ്പർ',
      'mobileno': 'ഇമെയിൽ അല്ലെങ്കിൽ മൊബൈൽ നമ്പർ',
      'provide_valid_password': 'ദയവായി ശരിയായ പാസ്സ്‌വേർഡ് നൽകുക ',
      'check_network': 'നിങ്ങളുടെ നെറ്റ്‌വർക്ക് കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക',
      'provide_valid_confirm_password': 'ദയവായി ശരിയായ പാസ്സ്‌വേർഡ്  സ്ഥിതികരണം നടത്തുക',
      'password_mismatch': 'പാസ്സ്‌വേർഡ് പൊരുത്തപ്പെടുന്നില്ല',
      'change_password': 'പാസ്സ്‌വേർഡ് മാറ്റുക',
      'current_password': 'ഇപ്പോഴത്തെ പാസ്സ്‌വേർഡ്',
      'confirm_password': 'പാസ്സ്‌വേർഡ് സ്ഥിരീകരിക്കുക',
      'new_password': 'പുതിയ പാസ്സ്‌വേർഡ്',
      'password_validation':
          '* പാസ്സ്‌വേർഡ് കുറഞ്ഞത് ഒരു വലിയ അക്ഷരം, ഒരു ചെറിയ അക്ഷരം, ഒരു അക്കം, പ്രത്യേക പ്രതീകം എന്നിവ ഉണ്ടായിരിക്കണം. കുറഞ്ഞത് 8 പ്രതീകങ്ങളും പരമാവധി 20 പ്രതീകങ്ങളും.',
      'retry': 'വീണ്ടും ശ്രമിക്കുക',
      'cancel': 'റദ്ദാക്കുക',
      'edit': 'എഡിറ്റ്',
      'search': 'തിരയുക..',
      'all': 'എല്ലാം',
      'today': 'ഇന്ന്',
      'close': 'അടയ്ക്കുക',
      'send': 'അയക്കുക',
      'refresh': 'പുതുക്കുക',
      'password_change': 'പാസ്സ്‌വേർഡ് മാറ്റുക',
      'authentication_error': 'Authentication error',
      'emptylist': 'ലിസ്റ്റിൽ ഒന്നും ഇല്ല',
      'cant_load_data': 'Cant load data',
      'saving': 'Saving',
      'save': 'സേവ്',
      'otp_info': 'We need to text you the OTP to authenticate your account',

      //sidemenu
      'profile': 'പ്രൊഫൈൽ',
      'dashboard': 'ഡാഷ്ബോർഡ്',
      'school_diary': 'സ്കൂൾ ഡയറി',
      'homework': 'ഹോംവർക്ക്',
      'messages': 'സന്ദേശങ്ങൾ',
      'alerts': 'അലേർട്ടുകൾ',
      'leaves': 'അവധികൾ',
      'school_circulars': 'സ്കൂൾ സർക്കുലറുകൾ',
      'downloads': 'ഡൗൺലോഡുകൾ',
      'logout': 'ലോഗ്ഔട്ട്',
      'students': 'വിദ്യാർത്ഥികൾ',
      'staff':'Staff',
      'monthly_report': 'പ്രതിമാസ റിപ്പോർട്ട്',
      'activity_timeline': 'പ്രവർത്തന ടൈംലൈൻ',
      'bus_monitoring': 'ബസ് നിരീക്ഷണം',
      'monthly_activity': 'പ്രതിമാസ \n പ്രവർത്തനം',
      'circulars': 'Notice Board',
      'files': 'Files',
      'timeline': 'Timeline',

      //homescreen
      'live_students': 'ലൈവ്  വിദ്യാർത്ഥികൾ',
      'attendence': 'ഹാജർനില',
      'total': 'ആകെ',
      'live': 'Live',
      'present': 'ഹാജരാണ് ',
      'absent': 'ഹാജരല്ല',
      'timetable': 'ടൈംടേബിൾ',
      'no_students_added': 'വിദ്യാർത്ഥികളൊന്നും ചേർത്തിട്ടില്ല',
      'group_data_not_available': 'ഗ്രൂപ്പ് ഡാറ്റ ലഭ്യമല്ല',
      'no_data_available_selectedday': 'തിരഞ്ഞെടുത്ത ദിവസം ഡാറ്റയൊന്നും ലഭ്യമല്ല',
      'select_location': 'ലൊക്കേഷൻ തിരഞ്ഞെടുക്കുക',

      //diary_list_screen
      'add_diary': 'ഡയറി ചേർക്കുക',
      'select_class': 'ക്ലാസ് തിരഞ്ഞെടുക്കുക',
      'try_again': 'വീണ്ടും ശ്രമിക്കുക',
      'network_error': 'നെറ്റ്‌വർക്ക് ലഭ്യമല്ല',
      'oops': 'Oopss...',
      'load_failed': 'ഈ നിമിഷം ഡാറ്റ ലോഡ് ചെയ്യാൻ കഴിയില്ല',
      'diary_cancel_succes': 'ഡയറി വിജയകരമായി റദ്ദാക്കി',
      'confirm': 'സ്ഥിരീകരിക്കുക',
      'confirm_cancel_diary': 'ഈ ഡയറി റദ്ദാക്കാൻ നിങ്ങൾക്കുറപ്പാണോ?',
      'please_wait': 'കാത്തിരിക്കൂ...',

      //diary_list_parent
      'diary': 'ഡയറി',

      //diary_create_screen_teacher
      'create_diary': 'ഡയറി സൃഷ്ടിക്കുന്നു...',
      'title': 'തലക്കെട്ട്',
      'message': 'സന്ദേശം',
      'select_students': 'വിദ്യാർത്ഥികളെ തിരഞ്ഞെടുക്കുക',
      'create_new_diary': 'പുതിയ ഡയറി സൃഷ്ടിക്കുക',
      'enter_diary_title': 'ദയവായി ഡയറിക്ക് ഒരു തലക്കെട്ട് നൽകുക',
      'select_class_diary': 'ദയവായി ഡയറിക്ക് ഒരു ക്ലാസ് തിരഞ്ഞെടുക്കുക',
      'select_student_for_diary': 'ഡയറിക്ക് ഒരു വിദ്യാർത്ഥി തിരഞ്ഞെടുക്കുക',
      'diary_create_sucess': 'ഡയറി വിജയകരമായി സൃഷ്ടിച്ചു',
      'select_student': 'വിദ്യാർത്ഥിയെ തിരഞ്ഞെടുക്കുക',
      'select_all': 'എല്ലാവരെയും തിരഞ്ഞെടുക്കുക',
      'deselect_all': 'തിരഞ്ഞെടുത്ത എല്ലാം മായ്ക്കുക',
      'done': 'ചെയ്തുകഴിഞ്ഞു',

      //dashboard parent
      'no_activity_found': 'ക്ഷമിക്കണം, പ്രവർത്തനമൊന്നും കണ്ടെത്തിയില്ല',
      'check_previous_day_activity': 'മുമ്പത്തെ ദിവസത്തെ പ്രവർത്തനം പരിശോധിക്കുക',
      'kid_is_in': 'Student is in',
      'check_activity_timeline': 'പ്രവർത്തന ടൈംലൈൻ പരിശോധിക്കുക',
      'home_work': 'ഹോംവർക്ക്',

      //Leaves
      'Requesting_leave': 'Requesting leave',
      'from': 'മുതൽ',
      'to': 'വരെ',
      'duration': 'ദൈർഘ്യം',
      'half_day_options': 'പകുതി ദിവസം',
      'select_teacher': 'ടീച്ചറേ  തിരഞ്ഞെടുക്കുക',
      'reason': "കാരണം",
      'request': "അപേക്ഷിക്കുക",
      'request_leave': "അവധിക്ക് അപേക്ഷിക്കുക",
      'first_half': "ആദ്യ പകുതി",
      'second_half': "രണ്ടാം പകുതി",
      'provide_a_valid_date': "ദയവായി ശരിയായ ഒരു തിയതി നൽകുക",
      'provide_a_valid_duration': "ദയവായി ഒരു സാധുവായ കാലാവധി നൽകുക",
      'provide_a_valid_session_day': "ശരിയായ ഒരു സെഷൻ  തിരഞ്ഞെടുക്കുക ",
      'which_teacher_to_request_the_leave_to': "Please select which teacher to request the leave to",
      'please_enter_a_valid_reason': "സാധുവായ ഒരു കാരണം നൽകുക",
      'are_you_sure_to_cancel_this_leave': "Are you sure to cancel this leave?",
      'leave_added_successfully': 'Leave added successfully',
      'add_leave': 'Add Leave',

      //Activity Timeline
      'no_feeds': "No activity recorded yet",

      //Monthly Activity
      'check_data_before_submitting': "Check data before submitting",
      'mark_attendence': "അറ്റെൻഡൻസ് മാർക്ക് ചെയ്യുക",
      'date': 'തീയതി',
      'time_slots': 'സമയങ്ങൾ',
      'rule': 'റൂൾ',
      'start_time': 'ആരംഭ സമയം',
      'end_time': 'അവസാന സമയം',
      'choose_student': 'Choose Student',
      'attendance': 'ഹാജർനില',
      'monthly_activity_class': 'Monthly Activity Class',
      'activity_list_empty': 'Sorry,no activity found',
      'monthly_activity_history': 'Monthly Activity History',
      'select_month': 'Select Month',
      'history': 'ഹിസ്റ്ററി',
      'summary': 'സംഗ്രഹം',
      'movement': 'സഞ്ചാരം',
      'activity': 'പ്രവർത്തനം',
      'choose_an_activity': 'Choose An Activity',
      'gender': 'ലിംഗഭേദം',
      'male': 'പുരുഷൻ',
      'female': 'സ്ത്രീ',
      'no_activities_found': 'No Activities found on this class',

      //logout
      'logout_message': 'Oops! Seems something went wrong.Please log in again',
      'logout_from_user_added': 'A new role is added to your account ,you need to login again to reflect that in your app.',
      'signing_out': 'Signing out. Please wait...',

      //profile
      'remove_profile_pic': 'പ്രൊഫൈൽ ചിത്രം നീക്കംചെയ്യുക',
      'select_from_gallery': 'ഗാലറിയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക',
      'take_a_picture': 'ഒരു ചിത്രമെടുക്കൂ',
      'updating_profile_picture': 'പ്രൊഫൈൽ ചിത്രം അപ്ഡേറ്റ് ചെയ്യുന്നു ...',
      'profile_image_size_exceed': 'പ്രൊഫൈൽ ചിത്രത്തിന് പരമാവധി 5MB അനുവദിക്കു',

      //homework
      'add_homework': 'ഗൃഹപാഠം ചേർക്കുക',

      //homework create screen
      'only_5_files_allowed': 'പരമാവധി 5 ഫയലുകൾ അനുവദനീയമാണ്',
      'gallery': 'ഗാലറി',
      'camera': 'ക്യാമറ',
      'browse': 'ബ്രൌസ് ചെയ്യുക',
      'video':'വീഡിയോ',
      'multi_file_upload_unsupport': 'ഒന്നിലധികം ഫയൽ അപ്ലോഡ് പിന്തുണയ്ക്കാത്തതാണ്',
      'attach_file_failed': 'ഫയൽ അറ്റാച്ചുചെയ്യുന്നത് പരാജയപ്പെട്ടു',
      'attachement_size_exceed': 'ഒരു അറ്റാച്ച്മെൻറിനായി പരമാവധി  5 MB അനുവദിച്ചിട്ടുണ്ട്',
      'message_attachement_size_exceed': 'ഒരു അറ്റാച്ച്മെൻറിനായി പരമാവധി 5MB അനുവദിച്ചിട്ടുണ്ട്',
      'description': 'വിവരണം',
      'reference': 'റഫറൻസ്',
      'add_attachment': 'അറ്റാച്ചുമെന്റ് ചേർക്കുക',
      'add_maximum_5_attachments': 'പരമാവധി 5 ഫയലുകൾ അനുവദനീയമാണ്',
      'class': 'ക്ലാസ്',
      'subject': 'വിഷയം',
      'select_subject': 'വിഷയം തിരഞ്ഞെടുക്കുക',
      'student': 'വിദ്യാർത്ഥി',
      'submission_date': 'സമർപ്പിക്കൽ തീയതി',
      'submission': 'സമർപ്പിക്കൽ',
      'create_homework': 'ഹോംവർക്  ഉണ്ടാക്കുക',
      'edit_homework': 'ഹോംവർക് തിരുത്തുക',
      'homework_validation': 'ഹോംവർകിനായി സാധുവായ ഒരു തലക്കെട്ട് / വിവരണം / റഫറൻസ് നൽകുക',
      'select_homework_class': 'ഹോംവർകിനായി ഒരു ക്ലാസ് തിരഞ്ഞെടുക്കുക',
      'select_homework_subject': 'ഹോംവർകിനായി ഒരു വിഷയം തിരഞ്ഞെടുക്കുക',
      'homework_edit_cancel': 'നിങ്ങൾക്ക് റദ്ദാക്കണമെന്ന് ഉറപ്പാണോ? എഡിറ്റുചെയ്ത ഡാറ്റ നഷ്ടപ്പെടും',
      'homework_create_success': 'ഹോംവർക്  വിജയകരമായി ഉണ്ടാക്കിയിരിക്കുന്നു ',
      'homework_edit_success': 'ഹോംവർക്  വിജയകരമായി തിരുത്തിയിരിക്കുന്നു ',

      'unable_attach_file': 'ഫയൽ അറ്റാച്ചുചെയ്യാനാവുന്നില്ല',

      //diary details screen
      'assigned_to': 'നിയോഗിച്ചിട്ടുള്ളത് ',
      'diary_details': 'ഡയറി  വിവരങ്ങൾ',
      'nothing': 'NOTHING!',
      'diary_list_empty': 'നിങ്ങളുടെ ഡയറി ലിസ്റ്റ് ശൂന്യമാണ്',
      'homework_list_empty': 'നിങ്ങളുടെ ഗൃഹപാഠ ലിസ്റ്റ് ശൂന്യമാണ്',
      'attachments': 'അറ്റാച്ചുമെൻറുകൾ',
      'homework_details': 'ഹോംവർക് വിവരങ്ങൾ',
      'confirm_cancel_homework': 'ഹോംവർക്  റദ്ദാക്കണമെന്ന്  നിങ്ങൾക്ക്  ഉറപ്പാണോ?',
      'homework_cancel_success': 'ഹോംവർക്  വിജയകരമായി റദ്ദാക്കിയിരുന്നു',

      //messages
      'new_message': 'പുതിയ സന്ദേശം ',
      'select_role': 'റോൾ തിരഞ്ഞെടുക്കുക',
      'teacher': 'ടീച്ചർ',
      'parent': 'രക്ഷകർത്താവ് ',
      'please_select_teacher': 'ദയവായി ടീച്ചറേ തിരഞ്ഞെടുക്കുക',
      'please_add_message': 'ദയവായി ഒരു സന്ദേശം നൽകുക',
      'enter_message': 'സന്ദേശം എഴുതുക',
      'message_validation_alert': 'നിങ്ങൾ പിന്തുണയ്ക്കാത്ത പ്രതീകങ്ങൾ നൽകിയതായി തോന്നുന്നു',
      'message_load_fail': 'സന്ദേശങ്ങൾ ലോഡുചെയ്യാൻ കഴിയുന്നില്ല. വീണ്ടും ശ്രമിക്കുക',
      'loading_messages': 'സന്ദേശങ്ങൾ ലോഡുചെയ്യുന്നു ...',
      'start_messaging': 'സന്ദേശമയക്കൽ ആരംഭിക്കുക...',
      'student_list_empty': 'നിങ്ങളുടെ വിദ്യാർത്ഥി ലിസ്റ്റ് ശൂന്യമാണ്',
      'staff_list_empty':'Your staff list is empty',
      'a_month_ago': ' ഒരു മാസം മുൻപ്',
      'months_ago': ' മാസം മുൻപ് ',
      'ago': ' മുൻപ് ',
      'second': 'സെക്കൻഡ്',
      'seconds': 'സെക്കൻഡ്',
      'minute': 'മിനിറ്റ്',
      'minutes': 'മിനിറ്റ്',
      'hour': 'മണിക്കൂർ',
      'hours': 'മണിക്കൂർ',
      'day': 'ദിവസം',
      'days': 'ദിവസം',
      'search_teacher': 'Search Teacher',
      'add_teacher': 'Add Teacher',

      //students
      'choose_activity': 'ഒരു പ്രവർത്തനം തിരഞ്ഞെടുക്കുക',
      'floor': 'ഫ്ലോർ',
      'spot': 'സ്പോട്ട്',
      'last_seen': 'അവസാനം കണ്ടത്',
      'Attendence': 'ഹാജർനില',
      'student_details': 'വിദ്യാർത്ഥിയുടെ വിവരങ്ങൾ',
      'created_on': 'ഉണ്ടാക്കിയ ദിവസം',
      'assigned_by': 'നിയോഗിച്ചത് ',

      //password change
      'provide_valid_otp': 'ദയവായി ഒരു സാധുവായ otp നൽകുക',
      'create_password': 'പാസ്സ്‌വേർഡ് ഉണ്ടാക്കുക',
      'otp': 'OTP',

      //edupluserror
      'unauthorized_access': 'ഉപയോക്താവിന് അനുവാദം ഇല്ല',
      'user_not_found': 'ഉപയോക്താവിനെ കണ്ടെത്തിയില്ല',
      'diary_not_found': 'ഡയറി കണ്ടെത്തിയില്ല',
      'password_does_not_match': 'പാസ്സ്‌വേർഡ് പൊരുത്തപ്പെടുന്നില്ല',
      'server_communication_failed': 'സെർവറുമായി സംവദിക്കാൻ സാധിക്കുന്നില്ല .കുറച്ച സമയത്തിന് ശേഷം ശ്രമിക്കുക',
      'unexpected_error_try_agin': 'അപ്രതീക്ഷിതമായി എന്തോ സംഭവിച്ചിരിക്കുന്നു കുറച്ച സമയത്തിന് ശേഷം ശ്രമിക്കുക',
      'leave_already_exist_or_invalid_date': 'Leave already exist or invalid date ranges',

      //diary
      'diary_created_successfully': 'ഡയറി വിജയകരമായി ഉണ്ടാക്കിയിരിക്കുന്നു',

      //monthly report
      'choose_student_class': 'Choose student class',

      //downloads
      'welcome_downloads': 'welcome downloads',

      //student details
      'get_history': 'ഹിസ്റ്ററി നേടുക',
      'get_summary': 'സംഗ്രഹം നേടുക',
      'entry': 'എൻട്രി',
      'exit': 'പുറത്ത്',
      'first_entry': 'First entry',
      'last_exit': 'Last exit',
      'time_spent': 'Time spent',
      'no_diaries': 'ഡയറികളൊന്നുമില്ല',
      'no_homeworks': 'ഗൃഹപാഠം ഒന്നുമില്ല',
      'all_spots': 'എല്ലാ സ്പോട്ടുകളും',
      'select_spot': 'സ്പോട്  തിരഞ്ഞെടുക്കുക',
      'choose_a_spot': 'ഒരു സ്പോട് തിരഞ്ഞെടുക്കൂ',
      'holiday': 'അവധി',

      //ep_alerts
      'presence': 'സാന്നിദ്ധ്യം',
      'alone': 'ഒറ്റക്ക്',
      'late_stay': 'വൈകി പോകൽ',
      'bus_entry': 'ബസ് പ്രവേശനം',
      'bus_exit': 'ബസിൽ നിന്നും പുറത്തേക്ക് ',
      'bus_in_previous_stop': 'ബസ് മുമ്പത്തെ സ്റ്റോപ്പിൽ',
      'bus_invalid_entry': 'അസാധുവായ ബസ് പ്രവേശനം ',
      'bus_invalid_exit': 'ബസിൽ നിന്നുമുള്ള അസാധുവായ പുറത്തിറങ്ങൽ',
      'bus_invalid_stay': 'നിശ്ചയിച്ചിരിക്കുന്ന സമയത്തിനുശേഷവും കുട്ടി ബസിൽ ഉണ്ട് ',
      'bus_student_not_entered': 'കുട്ടി ബസിൽ കയറിയിട്ടില്ല',
      'staying_late_at_floor': '%s %s ഫ്‌ളോർ ഇൽ നിന്നും പോകാൻ വൈകുന്നു ',
      'entered_floor': '%s ഫ്ലോർ  %s ഇൽ  പ്രവേശിച്ചു',
      'is_present_in_floor': '%s ഫ്ലോർ %s ഇൽ  ഉണ്ട് ',
      'exited_from_floor': '%s ഫ്‌ളോർ  %s ഇൽ  നിന്നും പുറത്തിറങ്ങി ',
      'is_absent_from_floor': '%s ഫ്‌ലോർ %s ഇൽ ഇല്ല ',
      'is_alone_at_floor': '%s ഫ്ലോർ %s ഇൽ  ഒറ്റക്കാണ്',
      'entered_bus_from_floor': '%s  %s ഫ്‌ളോർ ഇൽ നിന്നും ബസിൽ കയറിയിരിക്കുന്നു',
      'exited_bus_from_floor': '%s %s ഫ്‌ളോർ ഇൽ ബസ് ഇറങ്ങി ',
      'x_is_present_from': '%s %s മണി മുതൽ %s സമയത്ത് ഹാജരാണ്  ',

      //ep_alert_bus
      'x_entered_bus_at_stop': '%s %s സ്റ്റോപ്പിൽ നിന്നും ബസിൽ കയറി ',
      'x_got_down_from_bus_at_stop': '%s %s സ്റ്റോപ്പിൽ ബസ് ഇറങ്ങി ',
      'bus_in_previous_stop_x': 'ബസ് %s ന് മുമ്പത്തെ സ്റ്റോപ്പിൽ',
      'bus_invalid_entry_for_x_at_stop_x': '%s  %s സ്റ്റോപ്പിൽ നിന്നും തെറ്റായ ബസിൽ കയറിയിരിക്കുന്നു ',
      'bus_invalid_exit_for_x_at_stop_x': '%s  %s സ്റ്റോപ്പിൽ തെറ്റായി ബസ് ഇറങ്ങിയിരിക്കുന്നു',
      'x_is_still_on_bus_after_stop_x': 'ബസ് s1 സ്റ്റോപ്പ് കടന്നുപോയി .t1 ഇപ്പഴും ബസിലുണ്ട്',
      'x_not_entered_at_stop_x': '%s  %s സ്റ്റോപ്പിൽ നിന്നും കയറിയിട്ടില്ല ',
      'student_not_entered_in_bus': 'കുട്ടി ബസിൽ കയറിയിട്ടില്ല',

      //ep_activity_timeline
      'bus_reached_location_alert': '@t1 മണിക്ക് ബസ് l1 എത്തി .ഉടൻ നിങ്ങളുടെ സ്റ്റോപ്പിൽ എത്തുന്നതാണ് ',
      'bus_passed_destination_kid_still_in_bus': 'ബസ് നിങ്ങളുടെ സ്റ്റോപ്പ് @t1  കടന്നുപോയി .കുട്ടി ഇപ്പഴും ബസിലുണ്ട്',
      'kid_entered_bus': 'കുട്ടി %s നിന്നും @%s മണിക്ക് ബസിൽ കയറി ',
      'bus_will_reach_your_dropdown_point_soon': 'ബസ് %s ഇൽ @%s മണിക്ക് എത്തിച്ചേർന്നു. നിങ്ങളുടെ ഡ്രോപ്പ്ഡൌൺ പോയിന്റിൽ ഉടൻ എത്തിച്ചേരും',
      'kid_not_enterd_bus_from_stop': 'കുട്ടിയുടെ നിർദ്ദിഷ്ട സ്റ്റോപ്പിൽ നിന്നും കുട്ടി  പ്രവേശിച്ചിട്ടില്ല',
      'kid_entered_from_wrong_pickup_point': 'കുട്ടി തെറ്റായ സ്റ്റോപ്പിൽ %s നിന്നും %s മണിക്ക് കയറി',
      'kid_alighted_from_bus_wrong_destination': 'കുട്ടി തെറ്റായ സ്റ്റോപ്പിൽ %s @%s മണിക്ക് ഇറങ്ങി',
      'kid_reached_school': 'കുട്ടി സ്കൂളിൽ @%s മണിക്ക് എത്തി',
      'kid_is_in_location': 'കുട്ടി  @t1 മണിക്ക് l1 ഉണ്ട് ',
      'kid_entered_bus_from_school': 'കുട്ടി @%s മണിക്ക് സ്കൂളിൽ നിന്നും ബസ് കയറി ',
      'bus_started_from_school_kid_not_entered': 'ബസ് @%s മണിക്ക് സ്കൂളിൽ നിന്നും തിരിച്ചു .കുട്ടി ബസിൽ കയറിയിട്ടില്ല .',
      'bus_started_kid_entered': 'ബസ് സ്കൂളിൽ നിന്നും തിരിച്ചു .കുട്ടി @t1 മണിക്ക്  l1 നിന്നും കയറി ',
      'kid_alighted_from_bus': 'കുട്ടി ബസിൽ നിന്നും @t1 മണിക്ക്  l1 ഇറങ്ങി ',

      //Dao class

      //ep_trip
      'finished': 'അവസാനിച്ചു',
      'on_time': 'കൃത്യ സമയത്ത്',
      'late_by': 'വൈകിയോടുന്നു',
      'early_by': 'നേരത്തേയോടുന്നു',
      'not_started': 'തുടങ്ങിയിട്ടില്ല',
      'not_available': 'ലഭ്യമല്ല',

      //ep_school_circular
      'published_by': 'Published by',
      'published_on': 'പ്രസിദ്ധീകരിച്ച ദിവസം',
      'on': ' ',
      'th': ' ',

      //ep_leave
      'days_from': 'ദിവസങ്ങൾ',
      'date_to': 'മുതൽ',
      'day_on': 'ദിവസം',
      'end': 'വരെ',

      //ep_diary
      'invalid': 'Invalid',
      'nil': 'ഒന്നുമില്ല',

      //Settings
      'settings': 'Settings',
      'school': 'School',
      'about': 'About',
      'privacy_policy': 'Privacy Policy',
      'terms_of_use': 'Terms of use',
      'version': 'Version',
      'locations': 'Locations',
      'smartcalendar':'Smart Calendar',

    },
    'ar': {
      'payments':'Fee',
      'eduplus': 'ايديوبلس',
      'ok': 'حسنا',
      'home': 'الصفحة الرئيسية',
      'otp_sented': 'تم إرسال كلمة المرور لمرة واحدة (OTP) إلى رقم هاتفك المحمول المسجل',
      'success': 'تم بنجاح',
      'getotp': 'الحصول على OTP',
      'password': 'كلمه السر',
      'signin': 'تسجيل الدخول..',
      'profile_edit': 'تعديل الملف الشخصي',
      'submit': 'تسليم',
      'timezone': 'وحدة زمنية',
      'language': 'لغة',
      'mobile': 'الهاتف المحمول',
      'email': 'البريد الإلكتروني',
      'registered': 'مسجل',
      'name': 'اسم',
      'select_lang': 'اختر لغة',
      'select_time_zone': 'اختر المجال الزمني',
      'please_provide_valid_name': 'يرجى تقديم اسم ساري المفعول',
      'loading': 'تحميل',
      'signing': 'تسجيل الدخول..',
      'login': 'تسجيل الدخول',
      'invalid_email_password': 'خطأ في اسم المستخدم أو كلمة مرور',
      'mobile_not_registered': 'رقم الهاتف المحمول الذي أدخلته غير مسجل',
      'provide_valid_mobileno': 'رقم الهاتف المحمول غير صحيح',
      'mobileno': 'رقم الهاتف المحمول',
      'provide_valid_password': 'يرجى تقديم كلمة مرور الصحيحة ',
      'check_network': 'لا توجد شبكة',
      'provide_valid_confirm_password': 'يرجى تقديم كلمة مرور الصحيحة ',
      'password_mismatch': 'كلمة المرور غير متطابقة',
      'change_password': 'تغير كلمة المرور',
      'current_password': 'كلمة المرور الحالية',
      'confirm_password': 'تأكيد كلمة المرور',
      'new_password': 'كلمة مرور جديدة',
      'password_validation':
          'جب أن تحتوي كلمة المرور على حرف واحد على الأقل للحرف العلوي وحرف صغير واحد ورقم واحد وحرف خاص. الحد الأدنى 8 أحرف والحد الأقصى 20 حرفا. غير كلمة المرور',
      'retry': 'حاول مرة اخرى',
      'cancel': 'إلغاء',
      'edit': 'تحرير',
      'search': 'بحث',
      'all': 'الكل',
      'today': 'اليوم',
      'close': 'إغلاق',
      'send': 'إرسال',
      'refresh': 'تعديث',
      'password_change': 'تغير كلمة المرور',
      'authentication_error': 'خطأ في اثبات الاصل ',
      'emptylist': 'قائمة فارغة',
      'cant_load_data': 'لا يمكن تحميل البيانات',
      'saving': 'جاري الحفظ',
      'save': 'حفظ',
      'otp_info': ' نحتاج إلى إرسال رسالة نصية إلى OTP لمصادقة حسابك',

      //sidemenu
      'profile': 'الملف الشخصي',
      'dashboard': 'لوحة التحكم الرئيسية',
      'school_diary': 'يوميات مدرسة',
      'homework': 'واجب منزلي',
      'messages': 'رسالة جديدة',
      'alerts': 'التنبيهات',
      'leaves': 'الاجازات',
      'school_circulars': '  منشورات المدرسة',
      'downloads': 'تحميل',
      'logout': 'الخروج',
      'students': 'الطلاب',
      'staff':'Staff',
      'monthly_report': 'التقرير الشهري ',
      'activity_timeline': 'الجدول الزمني للفعاليات',
      'bus_monitoring': 'مراقبة الحافلات',
      'monthly_activity': 'النشاط الشهري',
      'circulars': 'المنشورات',
      'files': 'ملفات',
      'timeline': 'الجدول الزمني',

      //homescreen
      'live_students': 'طلاب متصلين',
      'attendence': 'الحضور',
      'total': 'الاجمالي',
      'present': 'حاضر',
      'live': 'مباشر',
      'absent': 'غائب',
      'timetable': 'جدول المواعيد',
      'no_students_added': 'لم تتم إضافة طلاب ',
      'group_data_not_available': 'بيانات المجموعة غير متوفرة',
      'no_data_available_selectedday': 'لا توجد بيانات متاحة لليوم المحدد',
      'select_location': 'اختر موقعا',

      //diary_list_screen
      'add_diary': 'إضافة يوميات',
      'select_class': 'اختر الصف',
      'try_again': 'حاول مرة أخرى',
      'network_error': 'خطأ في الشبكة',
      'oops': 'Oopss...',
      'load_failed': 'لا يمكن تحميل البيانات في هذه اللحظة',
      'diary_cancel_succes': 'تم إلغاء يوميات بنجاح',
      'confirm': 'تأكيد',
      'confirm_cancel_diary': 'هل أنت متأكد من إلغاء هذه اليوميات؟',
      'please_wait': 'أرجو الإنتظار...',

      //diary_list_parent
      'diary': 'يوميات',

      //diary_create_screen_teacher
      'create_diary': 'إنشاء يوميات ...',
      'title': 'عنوان',
      'message': 'رسالة',
      'select_students': 'اختر طالب',
      'create_new_diary': 'إنشاء يوميات جديدة',
      'enter_diary_title': 'يرجى تقديم عنوان / وصف للمذكرات',
      'select_class_diary': 'يرجى اختيار فصل لليوميات',
      'select_student_for_diary': 'يرجى اختيار طالب ليوميات',
      'diary_create_sucess': 'تم إنشاء يوميات بنجاح',
      'select_student': 'اختر طالب',
      'select_all': 'تحديد الكل',
      'deselect_all': 'الغاء تحديد الكل',
      'done': 'تم',

      //dashboard parent
      'no_activity_found': 'آسف ، لم يتم العثور على أي نشاط',
      'check_previous_day_activity': 'تحقق من نشاط اليوم السابق',
      'kid_is_in': 'يوجد طفل في ',
      'check_activity_timeline': 'التحقق من الجدول الزمني للنشاط',
      'home_work': 'الواجب المنزلي',

      //profile
      'remove_profile_pic': 'إزالة صورة الملف الشخصي',
      'select_from_gallery': 'اختر من المعرض',
      'take_a_picture': 'التقط صوره',
      'updating_profile_picture': 'جارٍ تحديث صورة الملف الشخصي ...',
      'profile_image_size_exceed': 'الحد الأقصى المسموح به هو 5 ميغابايت لصورة الملف الشخصي',

      //homework
      'add_homework': 'إضافة الواجبات المنزلية',

      //homework create screen
      'only_5_files_allowed': 'يسمح بحد أقصى 5 ملفات',
      'gallery': 'صالة عرض',
      'camera': 'كاميرا',
      'browse': 'تصفح',
      'video':'فيديو',
      'multi_file_upload_unsupport': 'تحميل الملفات المتعددة غير مدعوم',
      'attach_file_failed': 'فشل في إرفاق الملف',
      'attachement_size_exceed': 'الحد الأقصى المسموح به هو 5 ميغابايت كمرفق',
      'message_attachement_size_exceed': 'الحد الأقصى المسموح به هو 5 ميغابايت كمرفق',
      'description': 'وصف',
      'reference': 'مرجع',
      'add_attachment': 'إضافة مرفق',
      'add_maximum_5_attachments': 'الحد الأقصى 5 ملفات يمكن إرفاقها',
      'class': 'صف دراسي',
      'subject': 'موضوع',
      'select_subject': 'اختر الموضوع',
      'student': 'طالب ',
      'submission_date': 'تاريخ التسليم',
      'submission': 'تسليم',
      'date': 'تاريخ',
      'create_homework': 'أضف الواجب المنزلي',
      'edit_homework': 'تعديل الواجب المنزلي',
      'homework_validation': 'الرجاء إدخال عنوان / وصف / مرجع للواجب المنزلي',
      'select_homework_class': 'يرجى اختيار فصل للواجب المنزلي',
      'select_homework_subject': 'يرجى اختيار موضوع للواجب المنزلي',
      'homework_edit_cancel': 'هل أنت متأكد من الإلغاء؟ سيتم فقد البيانات المعدلة',
      'homework_create_success': 'تم إنشاء الواجبات المنزلية بنجاح',
      'homework_edit_success': 'تم تعديل الواجب المنزلي بنجاح',

      'unable_attach_file': 'غير قادر على إرفاق الملف',

      //diary details screen
      'assigned_to': 'مخصص إلى',
      'diary_details': 'تفاصيل اليوميات',
      'nothing': 'لا شىء',
      'diary_list_empty': 'قائمة يومياتك فارغة',
      'homework_list_empty': 'قائمة واجبك المنزلي فارغ',
      'attachments': 'مرفقات',
      'homework_details': 'تفاصيل الواجب المنزلي',
      'confirm_cancel_homework': 'هل أنت متأكد من إلغاء هذا الواجب المنزلي',
      'homework_cancel_success': 'تم إلغاء الواجبات المنزلية بنجاح',

      //messages
      'new_message': 'رسالة جديدة',
      'select_teacher': 'اختر المعلم',
      'select_role': 'اختر الدور',
      'teacher': 'مدرس',
      'parent': 'ولي امر',
      'please_select_teacher': 'يرجى اختيار المعلم',
      'please_add_message': 'من فضلك أضف رسالة',
      'enter_message': 'اكتب الرسالة',
      'message_validation_alert': 'يبدو أنك أدخلت أحرفًا غير مدعومة',
      'message_load_fail': 'غير قادر على تحميل الرسائل..حاول مرة أخرى',
      'loading_messages': 'جارٍ تحميل الرسائل ...',
      'start_messaging': 'بدء المراسلة ...',
      'student_list_empty': 'قائمة الطلاب الخاصة بك فارغة',
      'a_month_ago': 'قبل شهر',
      'months_ago': 'منذ اشهر',
      'ago': 'منذ',
      'second': 'ثانية',
      'seconds': 'ثواني ',
      'minute': 'دقيقة',
      'minutes': 'دقائق',
      'hour': 'ساعة',
      'hours': 'ساعات',
      'day': 'يوم',
      'days': 'أيام',
      'search_teacher': 'بحث المعلم',
      'add_teacher': 'أضف المعلم',

      //students
      'activity': 'انشطة',
      'choose_activity': 'اختر نشاط',
      'gender': 'جنس',
      'male': 'ذكر',
      'female': 'أنثى',
      'floor': 'طابق',
      'spot': 'بقعة',
      'last_seen': 'اخر ظهور',
      'Attendence': 'الحضور',
      'student_details': 'تفاصيل الطالب',
      'created_on': 'تم إنشاؤها في ',
      'assigned_by': 'تم التعيين من قبل',

      //password change
      'provide_valid_otp': 'يرجى تقديم otp صالح',
      'create_password': 'إنشاء كلمة مرور',
      'otp': 'OTP',

      //edupluserror
      'unauthorized_access': 'دخول غير مرخص',
      'user_not_found': 'المستخدم ليس موجود',
      'diary_not_found': 'يوميات غير موجود',
      'password_does_not_match': 'كلمة السر غير متطابقة',
      'server_communication_failed': 'غير قادر على التواصل مع الخادم',
      'unexpected_error_try_agin': 'لقد حدث خطأ غير متوقع. الرجاء معاودة المحاولة في وقت لاحق',
      'leave_already_exist_or_invalid_date': 'ترك موجود بالفعل أو نطاقات تاريخ غير صالحة',

      //Leaves
      'Requesting_leave': 'طلب إجازة',
      'from': 'من عند',
      'to': 'إلى',
      'duration': 'المدة الزمنية',
      'half_day': 'نصف يوم',
      'half_day_options': 'خيارات نصف يوم',
      'reason': "السبب",
      'request': "طلب",
      'request_leave': "طلب إجازة",
      'first_half': "النصف الاول",
      'second_half': "النصف الثاني",
      'provide_a_valid_date': "ادخل تاريخ صالح المفعول : يرجى تحديد تاريخ صالح المفعول، التاريخ يجب أن يكون أقل من تاريخ اليوم",
      'provide_a_valid_duration': "الرجاء تقديم مدة صالحة",
      'provide_a_valid_session_day': "الرجاء تحديد جلسة صالحة",
      'which_teacher_to_request_the_leave_to': "الرجاء تحديد المعلم الذي يطلب الإجازة",
      'please_enter_a_valid_reason': "الرجاء إدخال سبب وجيه",
      'are_you_sure_to_cancel_this_leave': "هل أنت متأكد من إلغاء هذه الإجازة؟",
      'leave_added_successfully': 'تم اضافة الاجازة بنجاح',
      'add_leave': 'أضف إجازة',

      //Activity Timeline
      'no_feeds': "لا يوجد نشاط مسجل بعد",

      //Monthly Activity
      'check_data_before_submitting': "التحقق من البيانات قبل الإرسال",
      'mark_attendence': "الحضور",
      'time_slots': 'وقت المتاح',
      'rule': 'اوامر',
      'start_time': 'وقت البداية',
      'end_time': 'وقت الانتهاء',
      'choose_student': 'اختر الطالب',
      'attendance': 'الحضور ',
      'monthly_activity_class': 'النشاط الشهري للصف',
      'activity_list_empty': 'آسف ، لم يتم العثور على أي نشاط',
      'monthly_activity_history': 'سجل النشاط الشهري',
      'select_month': 'اختر شهر ',
      'history': 'ماضي',
      'summary': 'ملخص',
      'movement': 'حركة',
      'choose_an_activity': 'اختر نشاط',
      'no_activities_found': 'لم يتم العثور على أنشطة في هذا الصف',

      //downloads
      'welcome_downloads': 'مرحبا تحميلات',

      //diary
      'diary_created_successfully': 'تم إنشاء مذكرات بنجاح',

      //monthly report
      'choose_student_class': ' اختر صف الطالب',

      //logout
      'logout_message': 'عفوًا! يبدو أن هناك خطأ ما. يرجى تسجيل الدخول مرة أخرى',
      'logout_from_user_added': 'تتم إضافة دور جديد إلى حسابك ، تحتاج إلى تسجيل الدخول مرة أخرى لتعكس ذلك في تطبيقك.',
      'signing_out': 'تسجيل الخروج. أرجو الإنتظار...',

      //student details
      'get_history': 'الحصول على بيانات قديمة',
      'get_summary': 'الحصول على الملخص',
      'entry': 'دخول',
      'exit': 'خروج',
      'first_entry': 'الإدخال الأول',
      'last_exit': 'آخر خروج',
      'time_spent': 'قضاء الوقت',
      'no_diaries': 'لا توجد يوميات',
      'no_homeworks': 'لا يوجد واجبات منزلية',
      'all_spots': 'جميع المواقع',
      'select_spot': 'تحديد بقعة',
      'choose_a_spot': 'اختيار بقعة',
      'holiday': 'يوم الاجازة',

      //ep_alerts
      'presence': 'حاضر',
      'alone': 'وحيد',
      'late_stay': 'البقاء لوقت متأخر ',
      'bus_entry': 'الدخول الى الحافلة',
      'bus_exit': 'خروج من الحافلة',
      'bus_in_previous_stop': 'الحافلة في المحطة السابقة',
      'bus_invalid_entry': 'الحافلة_دخول غير مصرح',
      'bus_invalid_exit': 'الحافلة_خروج غير مصرح',
      'bus_invalid_stay': 'الحافلة_بقاء غير مصرح',
      'bus_student_not_entered': 'الحافلة_طالب لم يدخل الحافلة',
      'staying_late_at_floor': '٪ s يوجد متأخراً في الطابق٪ s "',
      'entered_floor': '٪ s دخل الطابق ٪ s',
      'is_present_in_floor': '٪ s موجود في الطابق٪ s',
      'exited_from_floor': '٪ s خرج من الطابق٪ s',
      'is_absent_from_floor': '٪ s غائب من الطابق٪ s',
      'is_alone_at_floor': '٪ s وحيد في الطابق٪ s',
      'entered_bus_from_floor': '٪ s دخل الحافلة من الطابق٪ s',
      'exited_bus_from_floor': '٪ s خرج من الحافلة من الطابق٪ s',
      'x_is_present_from': '%s في الوقت ٪s حاليا موجود في ٪s',

      //ep_alert_bus
      'x_entered_bus_at_stop': 'دخل الباص في المحطة',
      'x_got_down_from_bus_at_stop': 'نزل من الباص في المحطة',
      'bus_in_previous_stop_x': 'حافلة في المحطة السابقة٪ s',
      'bus_invalid_entry_for_x_at_stop_x': 'دخل الباص الخطأ',
      'bus_invalid_exit_for_x_at_stop_x': 'نزل من الباص الخطأ',
      'x_is_still_on_bus_after_stop_x': 't1 لا يزال في الحافلة بعد التوقف s1',
      'x_not_entered_at_stop_x': 'لم يدخل الباص',
      'student_not_entered_in_bus': 'الطالب لم يدخل في الحافلة',

      //ep_trip
      'finished': 'انتهى',
      'on_time': 'في الوقت المناسب',
      'late_by': 'متأخرا',
      'early_by': 'باكرا',
      'not_started': 'لم يبدأ',
      'not_available': 'غير متوفر',

      //ep_activity_timeline
      'bus_reached_location_alert': 'وصلت الحافلة إلى l1 @ t1". سوف تصل إلى نقطة الالتقاط الخاصة بك قريبًا.',
      'bus_passed_destination_kid_still_in_bus': 'لقد تجاوزت الحافلة وجهتك المخصصة @ t1. طالب لا يزال على متن الحافلة.',
      'kid_entered_bus': 'دخل الطالب الحافلة من٪ s @٪ s',
      'bus_will_reach_your_dropdown_point_soon': 'وصلت الحافلة إلى٪ s @٪ s. سوف تصل إلى نقطة النزول الخاصة بك قريبا.',
      'kid_not_enterd_bus_from_stop': 'لم يدخل الطالب الحافلة من المحطة المخصصة',
      'kid_entered_from_wrong_pickup_point': 'دخل الطالب الحافلة من نقطة الالتقاط الخطأ٪ s @٪ s',
      'kid_alighted_from_bus_wrong_destination': 'لقد غادر الطالب الحافلة في مكان خاطئ٪ s @٪ s',
      'kid_reached_school': 'وصل الطالب إلى المدرسة @٪ s',
      'kid_is_in_location': 'طفل في',
      'kid_entered_bus_from_school': 'دخل الطالب الحافلة من المدرسة @٪ s',
      'bus_started_from_school_kid_not_entered': 'تحركت الحافلة من المدرسة @٪ s.يوجد طالب لم يدخل الحافلة.',
      'bus_started_kid_entered': 'تحركت الحافلة من المدرسة. لقد دخل طالب الحافلة من l1 @ t1',
      'kid_alighted_from_bus': 'الطالب قد نزل من الحافلة في l1 @ t1',

      //ep_school_circular
      'published_by': 'نشرت من قبل',
      'published_on': 'نشرت في',
      'on': 'على',
      'th': 'th',

      //ep_leave
      'days_from': 'أيام من',
      'date_to': 'الى',
      'day_on': 'في يوم',
      'end': 'انتهاء',

      //ep_diary
      'invalid': 'غير صالحة',
      'nil': 'Nil',
      //Settings
      'settings': 'إعدادات',
      'school': 'مدرسة',
      'about': 'حول',
      'privacy_policy': 'سياسة الخصوصية',
      'terms_of_use': 'تعليمات الاستخدام',
      'version': 'الإصدار',
      'locations': 'مواقع ',
      'smartcalendar':'Smart Calendar',

    }
  };

  String get eduplus {
    return _localizedValues[eduplusAppLocale]['eduplus'];
  }

  String get password_validation {
    return _localizedValues[eduplusAppLocale]['password_validation'];
  }

  String get name {
    return _localizedValues[eduplusAppLocale]['name'];
  }

  String get change_password {
    return _localizedValues[eduplusAppLocale]['change_password'];
  }

  String get check_network {
    return _localizedValues[eduplusAppLocale]['check_network'];
  }

  String get otp_sented {
    return _localizedValues[eduplusAppLocale]['otp_sented'];
  }

  String get ok {
    return _localizedValues[eduplusAppLocale]['ok'];
  }

  String get success {
    return _localizedValues[eduplusAppLocale]['success'];
  }

  String get password {
    return _localizedValues[eduplusAppLocale]['password'];
  }

  String get provide_valid_password {
    return _localizedValues[eduplusAppLocale]['provide_valid_password'];
  }

  String get provide_valid_confirm_password {
    return _localizedValues[eduplusAppLocale]['provide_valid_confirm_password'];
  }

  String get mobile_not_registered {
    return _localizedValues[eduplusAppLocale]['mobile_not_registered'];
  }

  String get mobileno {
    return _localizedValues[eduplusAppLocale]['mobileno'];
  }

  String get provide_valid_mobileno {
    return _localizedValues[eduplusAppLocale]['provide_valid_mobileno'];
  }

  String get invalid_email_password {
    return _localizedValues[eduplusAppLocale]['invalid_email_password'];
  }

  String get login {
    return _localizedValues[eduplusAppLocale]['login'];
  }

  String get loading {
    return _localizedValues[eduplusAppLocale]['loading'];
  }

  String get signing {
    return _localizedValues[eduplusAppLocale]['signing'];
  }

  String get please_provide_valid_name {
    return _localizedValues[eduplusAppLocale]['please_provide_valid_name'];
  }

  String get select_lang {
    return _localizedValues[eduplusAppLocale]['select_lang'];
  }

  String get select_time_zone {
    return _localizedValues[eduplusAppLocale]['select_time_zone'];
  }

  String get timezone {
    return _localizedValues[eduplusAppLocale]['timezone'];
  }

  String get registered {
    return _localizedValues[eduplusAppLocale]['registered'];
  }

  String get email {
    return _localizedValues[eduplusAppLocale]['email'];
  }

  String get mobile {
    return _localizedValues[eduplusAppLocale]['mobile'];
  }

  String get language {
    return _localizedValues[eduplusAppLocale]['language'];
  }

  String get signin {
    return _localizedValues[eduplusAppLocale]['signin'];
  }

  String get submit {
    return _localizedValues[eduplusAppLocale]['submit'];
  }

  String get profile_edit {
    return _localizedValues[eduplusAppLocale]['profile_edit'];
  }

  String get password_mismatch {
    return _localizedValues[eduplusAppLocale]['password_mismatch'];
  }

  String get getotp {
    return _localizedValues[eduplusAppLocale]['getotp'];
  }

  String get current_password {
    return _localizedValues[eduplusAppLocale]['current_password'];
  }

  String get confirm_password {
    return _localizedValues[eduplusAppLocale]['confirm_password'];
  }

  String get new_password {
    return _localizedValues[eduplusAppLocale]['new_password'];
  }

  String get retry {
    return _localizedValues[eduplusAppLocale]['retry'];
  }

  String get cancel {
    return _localizedValues[eduplusAppLocale]['cancel'];
  }

  String get confirm {
    return _localizedValues[eduplusAppLocale]['confirm'];
  }

  String get edit {
    return _localizedValues[eduplusAppLocale]['edit'];
  }

  String get search {
    return _localizedValues[eduplusAppLocale]['search'];
  }

  String get all {
    return _localizedValues[eduplusAppLocale]['all'];
  }

  String get today {
    return _localizedValues[eduplusAppLocale]['today'];
  }

  String get password_change {
    return _localizedValues[eduplusAppLocale]['password_change'];
  }

  String get refresh {
    return _localizedValues[eduplusAppLocale]['refresh'];
  }

  String get first_half {
    return _localizedValues[eduplusAppLocale]['first_half'];
  }

  String get second_half {
    return _localizedValues[eduplusAppLocale]['second_half'];
  }

  String get authentication_error {
    return _localizedValues[eduplusAppLocale]['authentication_error'];
  }

  String get empty_list {
    return _localizedValues[eduplusAppLocale]['emptylist'];
  }

  String get cant_load_data {
    return _localizedValues[eduplusAppLocale]['cant_load_data'];
  }

  String get saving {
    return _localizedValues[eduplusAppLocale]['saving'];
  }

  String get save {
    return _localizedValues[eduplusAppLocale]['save'];
  }

  String get otp_info {
    return _localizedValues[eduplusAppLocale]['otp_info'];
  }

  //sidemenu
  String get profile {
    return _localizedValues[eduplusAppLocale]['profile'];
  }

  String get dashboard {
    return _localizedValues[eduplusAppLocale]['dashboard'];
  }

  String get school_diary {
    return _localizedValues[eduplusAppLocale]['school_diary'];
  }

  String get homework {
    return _localizedValues[eduplusAppLocale]['homework'];
  }

  String get messages {
    return _localizedValues[eduplusAppLocale]['messages'];
  }

  String get alerts {
    return _localizedValues[eduplusAppLocale]['alerts'];
  }

  String get leaves {
    return _localizedValues[eduplusAppLocale]['leaves'];
  }

  String get school_circulars {
    return _localizedValues[eduplusAppLocale]['school_circulars'];
  }

  String get downloads {
    return _localizedValues[eduplusAppLocale]['downloads'];
  }

  String get logout {
    return _localizedValues[eduplusAppLocale]['logout'];
  }

  String get students {
    return _localizedValues[eduplusAppLocale]['students'];
  }

  String get monthly_report {
    return _localizedValues[eduplusAppLocale]['monthly_report'];
  }

  String get monthly_attendance {
    return _localizedValues[eduplusAppLocale]['monthly_attendance'];
  }

  String get activity_timeline {
    return _localizedValues[eduplusAppLocale]['activity_timeline'];
  }

  String get bus_monitoring {
    return _localizedValues[eduplusAppLocale]['bus_monitoring'];
  }

  String get monthly_activity {
    return _localizedValues[eduplusAppLocale]['monthly_activity'];
  }

  //homescreen
  String get live_students {
    return _localizedValues[eduplusAppLocale]['live_students'];
  }

  String get attendence {
    return _localizedValues[eduplusAppLocale]['attendence'];
  }

  String get total {
    return _localizedValues[eduplusAppLocale]['total'];
  }

  String get present {
    return _localizedValues[eduplusAppLocale]['present'];
  }

  String get absent {
    return _localizedValues[eduplusAppLocale]['absent'];
  }

  String get timetable {
    return _localizedValues[eduplusAppLocale]['timetable'];
  }

  String get no_students_added {
    return _localizedValues[eduplusAppLocale]['no_students_added'];
  }

  String get group_data_not_available {
    return _localizedValues[eduplusAppLocale]['group_data_not_available'];
  }

  String get no_data_available_selectedday {
    return _localizedValues[eduplusAppLocale]['no_data_available_selectedday'];
  }

  String get select_location {
    return _localizedValues[eduplusAppLocale]['select_location'];
  }

  //diary
  String get add_diary {
    return _localizedValues[eduplusAppLocale]['add_diary'];
  }

  String get select_class {
    return _localizedValues[eduplusAppLocale]['select_class'];
  }

  String get try_again {
    return _localizedValues[eduplusAppLocale]['try_again'];
  }

  String get network_error {
    return _localizedValues[eduplusAppLocale]['network_error'];
  }

  String get oops {
    return _localizedValues[eduplusAppLocale]['oops'];
  }

  String get load_failed {
    return _localizedValues[eduplusAppLocale]['load_failed'];
  }

  String get diary_cancel_succes {
    return _localizedValues[eduplusAppLocale]['diary_cancel_succes'];
  }

  String get confirm_cancel_diary {
    return _localizedValues[eduplusAppLocale]['confirm_cancel_diary'];
  }

  String get please_wait {
    return _localizedValues[eduplusAppLocale]['please_wait'];
  }

  //diary list parent
  String get diary {
    return _localizedValues[eduplusAppLocale]['diary'];
  }

  //diary create_teacher
  String get create_diary {
    return _localizedValues[eduplusAppLocale]['create_diary'];
  }

  String get title {
    return _localizedValues[eduplusAppLocale]['title'];
  }

  String get message {
    return _localizedValues[eduplusAppLocale]['message'];
  }

  String get select_students {
    return _localizedValues[eduplusAppLocale]['select_students'];
  }

  String get create_new_diary {
    return _localizedValues[eduplusAppLocale]['create_new_diary'];
  }

  String get enter_diary_title {
    return _localizedValues[eduplusAppLocale]['enter_diary_title'];
  }

  String get select_class_diary {
    return _localizedValues[eduplusAppLocale]['select_class_diary'];
  }

  String get select_student_for_diary {
    return _localizedValues[eduplusAppLocale]['select_student_for_diary'];
  }

  String get diary_create_sucess {
    return _localizedValues[eduplusAppLocale]['diary_create_sucess'];
  }

  String get select_student {
    return _localizedValues[eduplusAppLocale]['select_student'];
  }

  String get select_all {
    return _localizedValues[eduplusAppLocale]['select_all'];
  }

  String get deselect_all {
    return _localizedValues[eduplusAppLocale]['deselect_all'];
  }

  String get done {
    return _localizedValues[eduplusAppLocale]['done'];
  }

  //dashboard teacher
  String get no_activity_found {
    return _localizedValues[eduplusAppLocale]['no_activity_found'];
  }

  String get check_previous_day_activity {
    return _localizedValues[eduplusAppLocale]['check_previous_day_activity'];
  }

  String get kid_is_in {
    return _localizedValues[eduplusAppLocale]['kid_is_in'];
  }

  String get check_activity_timeline {
    return _localizedValues[eduplusAppLocale]['check_activity_timeline'];
  }

  String get home_work {
    return _localizedValues[eduplusAppLocale]['home_work'];
  }

  //profile
  String get remove_profile_pic {
    return _localizedValues[eduplusAppLocale]['remove_profile_pic'];
  }

  String get select_from_gallery {
    return _localizedValues[eduplusAppLocale]['select_from_gallery'];
  }

  String get take_a_picture {
    return _localizedValues[eduplusAppLocale]['take_a_picture'];
  }

  String get updating_profile_picture {
    return _localizedValues[eduplusAppLocale]['updating_profile_picture'];
  }

  String get profile_image_size_exceed {
    return _localizedValues[eduplusAppLocale]['profile_image_size_exceed'];
  }

  //add HomeWork
  String get add_homework {
    return _localizedValues[eduplusAppLocale]['add_homework'];
  }

  //create homework
  String get only_5_files_allowed {
    return _localizedValues[eduplusAppLocale]['only_5_files_allowed'];
  }

  String get gallery {
    return _localizedValues[eduplusAppLocale]['gallery'];
  }

  String get camera {
    return _localizedValues[eduplusAppLocale]['camera'];
  }

  String get browse {
    return _localizedValues[eduplusAppLocale]['browse'];
  }
  String get video {
    return _localizedValues[eduplusAppLocale]['video'];
  }

  String get multi_file_upload_unsupport {
    return _localizedValues[eduplusAppLocale]['multi_file_upload_unsupport'];
  }

  String get attach_file_failed {
    return _localizedValues[eduplusAppLocale]['attach_file_failed'];
  }

  String get attachement_size_exceed {
    return _localizedValues[eduplusAppLocale]['attachement_size_exceed'];
  }
  String get message_attachement_size_exceed {
    return _localizedValues[eduplusAppLocale]['message_attachement_size_exceed'];
  }

  String get description {
    return _localizedValues[eduplusAppLocale]['description'];
  }

  String get reference {
    return _localizedValues[eduplusAppLocale]['reference'];
  }

  String get add_attachment {
    return _localizedValues[eduplusAppLocale]['add_attachment'];
  }

  String get add_maximum_5_attachments {
    return _localizedValues[eduplusAppLocale]['add_maximum_5_attachments'];
  }

  String get class1 {
    return _localizedValues[eduplusAppLocale]['class'];
  }

  String get subject {
    return _localizedValues[eduplusAppLocale]['subject'];
  }

  String get select_subject {
    return _localizedValues[eduplusAppLocale]['select_subject'];
  }

  String get student {
    return _localizedValues[eduplusAppLocale]['student'];
  }

  String get submission_date {
    return _localizedValues[eduplusAppLocale]['submission_date'];
  }

  String get submission {
    return _localizedValues[eduplusAppLocale]['submission'];
  }

  String get date {
    return _localizedValues[eduplusAppLocale]['date'];
  }

  String get create_homework {
    return _localizedValues[eduplusAppLocale]['create_homework'];
  }

  String get edit_homework {
    return _localizedValues[eduplusAppLocale]['edit_homework'];
  }

  String get homework_validation {
    return _localizedValues[eduplusAppLocale]['homework_validation'];
  }

  String get select_homework_class {
    return _localizedValues[eduplusAppLocale]['select_homework_class'];
  }

  String get select_homework_subject {
    return _localizedValues[eduplusAppLocale]['select_homework_subject'];
  }

  String get homework_edit_cancel {
    return _localizedValues[eduplusAppLocale]['homework_edit_cancel'];
  }

  String get homework_create_success {
    return _localizedValues[eduplusAppLocale]['homework_create_success'];
  }

  String get homework_edit_success {
    return _localizedValues[eduplusAppLocale]['homework_edit_success'];
  }

  String get unable_attach_file {
    return _localizedValues[eduplusAppLocale]['unable_attach_file'];
  }

  //diary details screen
  String get assigned_to {
    return _localizedValues[eduplusAppLocale]['assigned_to'];
  }

  String get diary_details {
    return _localizedValues[eduplusAppLocale]['diary_details'];
  }

  String get nothing {
    return _localizedValues[eduplusAppLocale]['nothing'];
  }

  String get diary_list_empty {
    return _localizedValues[eduplusAppLocale]['diary_list_empty'];
  }

  String get homework_list_empty {
    return _localizedValues[eduplusAppLocale]['homework_list_empty'];
  }

  String get attachments {
    return _localizedValues[eduplusAppLocale]['attachments'];
  }

  String get homework_details {
    return _localizedValues[eduplusAppLocale]['homework_details'];
  }

  String get confirm_cancel_homework {
    return _localizedValues[eduplusAppLocale]['confirm_cancel_homework'];
  }

  String get homework_cancel_success {
    return _localizedValues[eduplusAppLocale]['homework_cancel_success'];
  }

  //messages
  String get new_message {
    return _localizedValues[eduplusAppLocale]['new_message'];
  }

  String get close {
    return _localizedValues[eduplusAppLocale]['close'];
  }

  String get send {
    return _localizedValues[eduplusAppLocale]['send'];
  }

  String get select_teacher {
    return _localizedValues[eduplusAppLocale]['select_teacher'];
  }

  String get select_role {
    return _localizedValues[eduplusAppLocale]['select_role'];
  }

  String get teacher {
    return _localizedValues[eduplusAppLocale]['teacher'];
  }

  String get parent {
    return _localizedValues[eduplusAppLocale]['parent'];
  }

  String get please_select_teacher {
    return _localizedValues[eduplusAppLocale]['please_select_teacher'];
  }

  String get please_add_message {
    return _localizedValues[eduplusAppLocale]['please_add_message'];
  }

  String get enter_message {
    return _localizedValues[eduplusAppLocale]['enter_message'];
  }

  String get message_validation_alert {
    return _localizedValues[eduplusAppLocale]['message_validation_alert'];
  }

  String get message_load_fail {
    return _localizedValues[eduplusAppLocale]['message_load_fail'];
  }

  String get loading_messages {
    return _localizedValues[eduplusAppLocale]['loading_messages'];
  }

  String get start_messaging {
    return _localizedValues[eduplusAppLocale]['start_messaging'];
  }

  String get student_list_empty {
    return _localizedValues[eduplusAppLocale]['student_list_empty'];
  }

  String get activity {
    return _localizedValues[eduplusAppLocale]['activity'];
  }

  String get choose_activity {
    return _localizedValues[eduplusAppLocale]['choose_activity'];
  }

  String get gender {
    return _localizedValues[eduplusAppLocale]['gender'];
  }

  String get male {
    return _localizedValues[eduplusAppLocale]['male'];
  }

  String get female {
    return _localizedValues[eduplusAppLocale]['female'];
  }

  String get floor {
    return _localizedValues[eduplusAppLocale]['floor'];
  }

  String get spot {
    return _localizedValues[eduplusAppLocale]['spot'];
  }

  String get last_seen {
    return _localizedValues[eduplusAppLocale]['last_seen'];
  }

  String get Attendence {
    return _localizedValues[eduplusAppLocale]['Attendence'];
  }

  String get student_details {
    return _localizedValues[eduplusAppLocale]['student_details'];
  }

  String get created_on {
    return _localizedValues[eduplusAppLocale]['created_on'];
  }

  String get assigned_by {
    return _localizedValues[eduplusAppLocale]['assigned_by'];
  }

  String get a_month_ago {
    return _localizedValues[eduplusAppLocale]['a_month_ago'];
  }

  String get months_ago {
    return _localizedValues[eduplusAppLocale]['months_ago'];
  }

  String get ago {
    return _localizedValues[eduplusAppLocale]['ago'];
  }

  String get search_teacher {
    return _localizedValues[eduplusAppLocale]['search_teacher'];
  }

  String get add_teacher {
    return _localizedValues[eduplusAppLocale]['add_teacher'];
  }

  //profile craete password
  String get provide_valid_otp {
    return _localizedValues[eduplusAppLocale]['provide_valid_otp'];
  }

  String get create_password {
    return _localizedValues[eduplusAppLocale]['create_password'];
  }

  String get otp {
    return _localizedValues[eduplusAppLocale]['otp'];
  }

  String get second {
    return _localizedValues[eduplusAppLocale]['second'];
  }

  String get seconds {
    return _localizedValues[eduplusAppLocale]['seconds'];
  }

  String get minute {
    return _localizedValues[eduplusAppLocale]['minute'];
  }

  String get minutes {
    return _localizedValues[eduplusAppLocale]['minutes'];
  }

  String get hour {
    return _localizedValues[eduplusAppLocale]['hour'];
  }

  String get hours {
    return _localizedValues[eduplusAppLocale]['hours'];
  }

  String get day {
    return _localizedValues[eduplusAppLocale]['day'];
  }

  String get days {
    return _localizedValues[eduplusAppLocale]['days'];
  }

  //eduplus error
  String get unauthorized_access {
    return _localizedValues[eduplusAppLocale]['unauthorized_access'];
  }

  String get user_not_found {
    return _localizedValues[eduplusAppLocale]['user_not_found'];
  }

  String get diary_not_found {
    return _localizedValues[eduplusAppLocale]['diary_not_found'];
  }

  String get password_does_not_match {
    return _localizedValues[eduplusAppLocale]['password_does_not_match'];
  }

  String get server_communication_failed {
    return _localizedValues[eduplusAppLocale]['server_communication_failed'];
  }

  String get unexpected_error_try_agin {
    return _localizedValues[eduplusAppLocale]['unexpected_error_try_agin'];
  }

  String get leave_already_exist_or_invalid_date {
    return _localizedValues[eduplusAppLocale]['leave_already_exist_or_invalid_date'];
  }

  //leaves
  String get Requesting_leave {
    return _localizedValues[eduplusAppLocale]['Requesting_leave'];
  }

  String get from {
    return _localizedValues[eduplusAppLocale]['from'];
  }

  String get to {
    return _localizedValues[eduplusAppLocale]['to'];
  }

  String get duration {
    return _localizedValues[eduplusAppLocale]['duration'];
  }

  String get half_day {
    return _localizedValues[eduplusAppLocale]['half_day'];
  }

  String get half_day_options {
    return _localizedValues[eduplusAppLocale]['half_day_options'];
  }

  String get reason {
    return _localizedValues[eduplusAppLocale]['reason'];
  }

  String get request {
    return _localizedValues[eduplusAppLocale]['request'];
  }

  String get request_leave {
    return _localizedValues[eduplusAppLocale]['request_leave'];
  }

  String get provide_a_valid_date {
    return _localizedValues[eduplusAppLocale]['provide_a_valid_date'];
  }

  String get provide_a_valid_duration {
    return _localizedValues[eduplusAppLocale]['provide_a_valid_duration'];
  }

  String get provide_a_valid_session_day {
    return _localizedValues[eduplusAppLocale]['provide_a_valid_session_day'];
  }

  String get which_teacher_to_request_the_leave_to {
    return _localizedValues[eduplusAppLocale]['which_teacher_to_request_the_leave_to'];
  }

  String get please_enter_a_valid_reason {
    return _localizedValues[eduplusAppLocale]['please_enter_a_valid_reason'];
  }

  String get are_you_sure_to_cancel_this_leave {
    return _localizedValues[eduplusAppLocale]['are_you_sure_to_cancel_this_leave'];
  }

  String get leave_added_successfully {
    return _localizedValues[eduplusAppLocale]['leave_added_successfully'];
  }

  String get add_leave {
    return _localizedValues[eduplusAppLocale]['add_leave'];
  }

  //Activity Timeline
  String get no_feeds {
    return _localizedValues[eduplusAppLocale]['no_feeds'];
  }

  //Downloads
  String get welcome_downloads {
    return _localizedValues[eduplusAppLocale]['welcome_downloads'];
  }

  //diary
  String get diary_created_successfuly {
    return _localizedValues[eduplusAppLocale]['Diary created successfuly'];
  }

  //Monthly Activity
  String get check_data_before_submitting {
    return _localizedValues[eduplusAppLocale]['check_data_before_submitting'];
  }

  String get mark_attendence {
    return _localizedValues[eduplusAppLocale]['mark_attendence'];
  }

  String get time_slots {
    return _localizedValues[eduplusAppLocale]['time_slots'];
  }

  String get rule {
    return _localizedValues[eduplusAppLocale]['rule'];
  }

  String get start_time {
    return _localizedValues[eduplusAppLocale]['start_time'];
  }

  String get end_time {
    return _localizedValues[eduplusAppLocale]['end_time'];
  }

  String get choose_student {
    return _localizedValues[eduplusAppLocale]['choose_student'];
  }

  String get attendance {
    return _localizedValues[eduplusAppLocale]['attendance'];
  }

  String get monthly_activity_class {
    return _localizedValues[eduplusAppLocale]['monthly_activity_class'];
  }

  String get activity_list_empty {
    return _localizedValues[eduplusAppLocale]['activity_list_empty'];
  }

  String get monthly_activity_history {
    return _localizedValues[eduplusAppLocale]['monthly_activity_history'];
  }

  String get select_month {
    return _localizedValues[eduplusAppLocale]['select_month'];
  }

  String get history {
    return _localizedValues[eduplusAppLocale]['history'];
  }

  String get summary {
    return _localizedValues[eduplusAppLocale]['summary'];
  }

  String get movement {
    return _localizedValues[eduplusAppLocale]['movement'];
  }

  String get choose_an_activity {
    return _localizedValues[eduplusAppLocale]['choose_an_activity'];
  }

  String get no_activities_found {
    return _localizedValues[eduplusAppLocale]['no_activities_found'];
  }

  //monthlyreport
  String get choose_student_class {
    return _localizedValues[eduplusAppLocale]['choose_student_class'];
  }

  //logout
  String get logout_message {
    return _localizedValues[eduplusAppLocale]['logout_message'];
  }

  String get logout_from_user_added {
    return _localizedValues[eduplusAppLocale]['logout_from_user_added'];
  }

  String get signing_out {
    return _localizedValues[eduplusAppLocale]['signing_out'];
  }

  //student details
  String get get_history {
    return _localizedValues[eduplusAppLocale]['get_history'];
  }

  String get get_summary {
    return _localizedValues[eduplusAppLocale]['get_summary'];
  }

  String get entry {
    return _localizedValues[eduplusAppLocale]['entry'];
  }

  String get exit {
    return _localizedValues[eduplusAppLocale]['exit'];
  }

  String get first_entry {
    return _localizedValues[eduplusAppLocale]['first_entry'];
  }

  String get last_exit {
    return _localizedValues[eduplusAppLocale]['last_exit'];
  }

  String get time_spent {
    return _localizedValues[eduplusAppLocale]['time_spent'];
  }

  String get no_diaries {
    return _localizedValues[eduplusAppLocale]['no_diaries'];
  }

  String get no_homeworks {
    return _localizedValues[eduplusAppLocale]['no_homeworks'];
  }

  String get all_spots {
    return _localizedValues[eduplusAppLocale]['all_spots'];
  }

  String get select_spot {
    return _localizedValues[eduplusAppLocale]['select_spot'];
  }

  String get choose_a_spot {
    return _localizedValues[eduplusAppLocale]['choose_a_spot'];
  }

  String get holiday {
    return _localizedValues[eduplusAppLocale]['holiday'];
  }

  //ep_alerts
  String get presence {
    return _localizedValues[eduplusAppLocale]['presence'];
  }

  String get alone {
    return _localizedValues[eduplusAppLocale]['alone'];
  }

  String get late_stay {
    return _localizedValues[eduplusAppLocale]['late_stay'];
  }

  String get bus_entry {
    return _localizedValues[eduplusAppLocale]['bus_entry'];
  }

  String get bus_exit {
    return _localizedValues[eduplusAppLocale]['bus_exit'];
  }

  String get bus_in_previous_stop {
    return _localizedValues[eduplusAppLocale]['bus_in_previous_stop'];
  }

  String get bus_invalid_entry {
    return _localizedValues[eduplusAppLocale]['bus_invalid_entry'];
  }

  String get bus_invalid_exit {
    return _localizedValues[eduplusAppLocale]['bus_invalid_exit'];
  }

  String get bus_invalid_stay {
    return _localizedValues[eduplusAppLocale]['bus_invalid_stay'];
  }

  String get bus_student_not_entered {
    return _localizedValues[eduplusAppLocale]['bus_student_not_entered'];
  }

  //ep_trip
  String get HOURS {
    return _localizedValues[eduplusAppLocale]['HOURS'];
  }

  String get HOUR {
    return _localizedValues[eduplusAppLocale]['HOUR'];
  }

  String get MINUTES {
    return _localizedValues[eduplusAppLocale]['MINUTES'];
  }

  String get MINUTE {
    return _localizedValues[eduplusAppLocale]['MINUTE'];
  }

  String get finished {
    return _localizedValues[eduplusAppLocale]['finished'];
  }

  String get on_time {
    return _localizedValues[eduplusAppLocale]['on_time'];
  }

  String get late_by {
    return _localizedValues[eduplusAppLocale]['late_by'];
  }

  String get early_by {
    return _localizedValues[eduplusAppLocale]['early_by'];
  }

  String get not_started {
    return _localizedValues[eduplusAppLocale]['not_started'];
  }

  String get not_available {
    return _localizedValues[eduplusAppLocale]['not_available'];
  }

  //ep_school_circular
  String get published_by {
    return _localizedValues[eduplusAppLocale]['published_by'];
  }

  String get published_on {
    return _localizedValues[eduplusAppLocale]['published_on'];
  }

  String get th {
    return _localizedValues[eduplusAppLocale]['th'];
  }

  //Ep_leave
  String get days_from {
    return _localizedValues[eduplusAppLocale]['days_from'];
  }

  String get date_to {
    return _localizedValues[eduplusAppLocale]['date_to'];
  }

  String get day_on {
    return _localizedValues[eduplusAppLocale]['day_on'];
  }

  String get end {
    return _localizedValues[eduplusAppLocale]['end'];
  }

  //ep_diary
  String get invalid {
    return _localizedValues[eduplusAppLocale]['invalid'];
  }

  String get nil {
    return _localizedValues[eduplusAppLocale]['nil'];
  }

  //settings
  String get settings {
    return _localizedValues[eduplusAppLocale]['settings'];
  }

  String get school {
    return _localizedValues[eduplusAppLocale]['school'];
  }

  String get about {
    return _localizedValues[eduplusAppLocale]['about'];
  }

  String get privacy_policy {
    return _localizedValues[eduplusAppLocale]['privacy_policy'];
  }

  String get terms_of_use {
    return _localizedValues[eduplusAppLocale]['terms_of_use'];
  }

  String get version {
    return _localizedValues[eduplusAppLocale]['version'];
  }

  String get locations {
    return _localizedValues[eduplusAppLocale]['locations'];
  }

  //Tabbar
  String get home {
    return _localizedValues[eduplusAppLocale]['home'];
  }

  String get live {
    return _localizedValues[eduplusAppLocale]['live'];
  }

  static setAppLanguage(String localeCode) {
    if (supportedLanguages.contains(localeCode)) {
      eduplusAppLocale = localeCode;
      _setAppLocale(eduplusAppLocale);
    } else {
      eduplusAppLocale = 'en';
      _setAppLocale(eduplusAppLocale);
    }
    EduPlusError.setEduplusErrorMessage();
  }

  //setting app language as english
  static _setAppLocale(String localeCode) async {
    EduPlusSharedPreference prefs = new EduPlusSharedPreference();
    prefs.setString(PreferenceKey.APP_LANGUAGE, localeCode);
  }
}

class EduplusLocalizationsDelegate extends LocalizationsDelegate<EduplusLocalizations> {
  const EduplusLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => EduplusLocalizations.supportedLanguages.contains(locale.languageCode);

  @override
  Future<EduplusLocalizations> load(Locale locale) {
    return new SynchronousFuture<EduplusLocalizations>(new EduplusLocalizations(locale));
  }

  @override
  bool shouldReload(EduplusLocalizationsDelegate old) => false;
}
