// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get app_title => 'بلیک باکس ایپ';

  @override
  String get common_yes => 'هو';

  @override
  String get common_no => 'نه';

  @override
  String get common_cancel => 'لغوه کړئ';

  @override
  String get common_save => 'وساتئ';

  @override
  String get common_save_changes => 'بدلونونه وساتئ';

  @override
  String get common_continue => 'دوام ورکړئ';

  @override
  String get common_next => 'بل';

  @override
  String get auth_login => 'ننوتل';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'وتل';

  @override
  String get auth_confirm_logout =>
      'ایا تاسو واقعاً غواړئ چې له سیسټم څخه ووځئ؟';

  @override
  String get auth_signup => 'راجسټر کړئ';

  @override
  String get auth_create_account => 'اکاونټ جوړ کړئ';

  @override
  String get auth_already_have_account => 'مخکې اکاونټ لرئ؟ ';

  @override
  String get auth_no_account => 'اکاونټ نه لرئ؟';

  @override
  String get auth_forgot_password => 'پاسورډ هیر شو؟';

  @override
  String get auth_reset_password => 'پاسورډ ریسیټ کړئ؟';

  @override
  String get auth_change_password => 'پاسورډ بدل کړئ';

  @override
  String get auth_continue => 'دوام ورکولو سره تاسو منئ چې\n';

  @override
  String get auth_terms => 'د کارولو شرایط او د محرمیت پالیسي';

  @override
  String get auth_email => 'ایمیل';

  @override
  String get auth_password => 'پاسورډ';

  @override
  String get auth_confirm_password => 'پاسورډ تایید کړئ';

  @override
  String get auth_new_password => 'نوی پاسورډ';

  @override
  String get auth_confirm_new_password => 'نوی پاسورډ تایید کړئ';

  @override
  String get auth_enter_email => 'ایمیل آدرس ولیکئ';

  @override
  String get auth_password_hint => 'خپل پاسورډ ولیکئ';

  @override
  String get full_name => 'بشپړ نوم';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'بشپړ نوم اړین دی';

  @override
  String get required_email => 'ایمیل اړین دی';

  @override
  String get email_end => 'ایمیل باید په @gmail.com پای ته ورسېږي';

  @override
  String get required_password => 'پاسورډ اړین دی';

  @override
  String get required_confirm_password => 'د پاسورډ تایید اړین دی';

  @override
  String get password_do_not_match => 'پاسورډونه سره سمون نه خوري';

  @override
  String get min_password => 'پاسورډ باید لږ تر لږه ۸ حروف وي او شمېرې هم ولري';

  @override
  String get send_verification_code => 'تصدیقي کوډ ولېږئ';

  @override
  String get password_changed_successfully => 'پاسورډ په بریالیتوب سره\nبدل شو';

  @override
  String get forget_password_title =>
      'د خپل اکاونټ سره تړلی ایمیل ولیکئ، موږ به تاسو ته د پاسورډ ریسیټ لپاره امنیتي پین ولېږو.';

  @override
  String get auth_security_pin => 'امنیتي پین';

  @override
  String get auth_enter_pin => 'امنیتي پین ولیکئ';

  @override
  String get verify => 'تایید کړئ';

  @override
  String auth_resend_pin(Object seconds) {
    return 'په $seconds ثانیو کې بیا ولېږئ';
  }

  @override
  String get home_title => 'کور';

  @override
  String get home_welcome => 'سلام، بیا ښه راغلاست';

  @override
  String get home_good_morning => 'سهار مو په خیر';

  @override
  String get home_good_afternoon => 'ورځه مو نیکمرغه';

  @override
  String get home_good_evening => 'ماښام مو نیکمرغه';

  @override
  String get home_looks_good => 'ښه\nښکاري';

  @override
  String get home_safety_score => 'د خوندیتوب سکور لید';

  @override
  String get home_total_accidents => 'ټول حادثات';

  @override
  String get total_active_cars => 'ټول فعال موټرونه';

  @override
  String get total_cars => 'ټول موټرونه';

  @override
  String home_active_cars(Object percentage) {
    return 'ستاسو له موټرو څخه $percentage% فعال دي';
  }

  @override
  String get car_section_title => 'موټرونه';

  @override
  String get car_view_all => 'ټول موټرونه وګورئ';

  @override
  String get car_add => 'موټر اضافه کړئ';

  @override
  String get car_edit => 'موټر سمول';

  @override
  String get car_name => 'د موټر نوم';

  @override
  String get car_plate => 'د موټر پلیټ نمبر';

  @override
  String get car_type => 'د موټر ډول';

  @override
  String get car_driver_name => 'د ډرایور نوم';

  @override
  String car_item_title(Object id) {
    return 'موټر #$id';
  }

  @override
  String get tracking_live => 'ژوندۍ تعقیب';

  @override
  String get tracking_last_updates => 'وروستي تازه معلومات';

  @override
  String get event_title => 'ډرایوینگ پیښې';

  @override
  String get event_speeding => 'تیز تګ';

  @override
  String get event_hard_braking => 'کلکه بریک';

  @override
  String get event_aggressive_turns => 'تیز موړونه';

  @override
  String get event_crash => 'حادثه';

  @override
  String event_location(Object location) {
    return 'په $location کې';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed کیلومتره فی ساعت';
  }

  @override
  String get event_severity => 'شدت';

  @override
  String get event_severity_low => 'کم';

  @override
  String get event_severity_medium => 'منځنی';

  @override
  String get event_severity_high => 'لوړ';

  @override
  String get event_severity_critical => 'ډېر خطرناک';

  @override
  String get event_reason => 'لامل';

  @override
  String get event_last_speed => 'وروستی ثبت شوی سرعت';

  @override
  String get notification_title => 'خبرتیاوې';

  @override
  String get notification_today => 'نن';

  @override
  String get notification_yesterday => 'پرون';

  @override
  String get notification_earlier => 'د دې اونۍ په پیل کې';

  @override
  String get notification_fuel_alert => 'د تیلو لیک الرټ!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'موټر $car چې $driver یې چلوي، د تیلو په کچه کې ناڅاپي کموالي راپور ورکړی دی.';
  }

  @override
  String get notification_crash_alert => 'جدي حادثه کشف شوه!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'موټر $car چې $driver یې چلوي، د سخت ټکر راپور ورکړی دی.';
  }

  @override
  String get profile_title => 'پروفایل';

  @override
  String get profile_edit => 'زما پروفایل سمول';

  @override
  String get update_profile => 'پروفایل تازه کړئ';

  @override
  String get user_name => 'کارونکي نوم';

  @override
  String get security_title => 'امنیت';

  @override
  String get change_password => 'پاسورډ بدل کړئ';

  @override
  String get settings_title => 'تنظیمات';

  @override
  String get settings_notifications => 'د خبرتیاو تنظیمات';

  @override
  String get settings_general_notifications => 'عمومي خبرتیاوې';

  @override
  String get account_settings => 'د اکاونټ تنظیمات';

  @override
  String get push_notification => 'پش خبرتیاوې';

  @override
  String get dark_mode => 'ډارک موډ فعال دی';

  @override
  String get help_title => 'مرستې مرکز';

  @override
  String get help_and_faq => 'مرسته او ډېر پوښتل شوي پوښتنې';

  @override
  String get help_contact => 'زموږ سره اړیکه';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'مونږ تاسو ته څنګه مرسته کولی شو؟';

  @override
  String get on_wh_num => 'په واټساپ نمبر';

  @override
  String get language => 'ژبه';

  @override
  String get question1 => 'بلیک باکس څنګه وکاروو؟';

  @override
  String get answer1 =>
      'خپل موټر کې بلیک باکس ډیوایس نصب کړئ، په اپلیکیشن کې ننوتل وکړئ او ډرایو پیل کړئ. اپلیکیشن به په اتومات ډول ستاسو ډرایوینگ ډاټا ثبت او ښکاره کړي.';

  @override
  String get question2 => 'د بلیک باکس کارولو لګښت څومره دی؟';

  @override
  String get answer2 =>
      'لګښت د انتخاب شوي پلان او خدماتو په اساس دی. مهرباني وکړئ د قیمتونو لپاره له شرکت سره اړیکه ونیسئ.';

  @override
  String get question3 => 'د سپورټ سره څنګه اړیکه ونیسو؟';

  @override
  String get answer3 =>
      'تاسو کولی شئ د شرکت رسمي نمبر په واټساپ له لارې یا د کاري وختونو کې د شرکت دفتر ته مراجعه کولو سره اړیکه ونیسئ.';

  @override
  String get question4 => 'که پاسورډ هیر شوم نو څنګه ریسیټ کړم؟';

  @override
  String get answer4 =>
      'په لاګ ان سکرین کې د \'Forgot Password\' اختیار وکاروئ او لارښوونې تعقیب کړئ.';

  @override
  String get question5 => 'آیا د محرمیت او ډاټا امنیت تدابیر شته؟';

  @override
  String get answer5 =>
      'هو. ستاسو ډاټا په خوندي ډول ساتل کیږي او پرته له ستاسو اجازه نه شریکېږي پرته له هغه چې قانون ورته اړتیا ولري.';

  @override
  String get question6 => 'ایا زه په اپلیکیشن کې تنظیمات بدلولای شم؟';

  @override
  String get answer6 =>
      'هو. تاسو کولی شئ په اپلیکیشن کې شتون لرونکي تنظیمات لکه خبرتیاوې او غوره والي بدل کړئ.';

  @override
  String get question7 => 'زما اکاونټ څنګه ړنګ کړم؟';

  @override
  String get answer7 =>
      'د خپل اکاونټ د ړنګولو لپاره مهرباني وکړئ له شرکت سره په واټساپ یا دفتر له لارې اړیکه ونیسئ.';

  @override
  String get question8 => 'زما انالیټکس تاریخ ته څنګه لاسرسی ولرم؟';

  @override
  String get answer8 =>
      'تاسو کولی شئ خپلې تېرې سفرونه او ډرایوینگ انالیټکس په اپلیکیشن کې د History یا Analytics برخې کې وګورئ.';

  @override
  String get question9 => 'ایا زه اپلیکیشن آفلاین کارولای شم؟';

  @override
  String get answer9 =>
      'اپلیکیشن محدود آفلاین فعالیت لري. د ډاټا سنک او بشپړ فیچرونو لپاره انټرنیټ اتصال اړین دی.';

  @override
  String get terms_title => 'شرایط او مقررات';

  @override
  String get terms_accept => 'شرایط او مقررات ومنئ';

  @override
  String get terms_full =>
      '1. د شرایطو منل\nد دې اپلیکیشن نصب یا کارولو سره تاسو دا شرایط او مقررات منئ. که نه منئ، نو مهرباني وکړئ د اپلیکیشن کارول بند کړئ.\n\n2. د اپلیکیشن هدف\nدا اپلیکیشن د موټر بلیک باکس او ټیلیماتیک سیسټم دی چې یوازې د معلوماتي، خوندیتوب او تحلیلي موخو لپاره د موټر فعالیت او ډرایوینگ چلند څارنه کوي.\n\n3. راټول شوي ډاټا پیرامیټرونه\nاپلیکیشن ممکن د موټر او ډرایوینگ ډاټا راټول او پروسیس کړي، په شمول:\n\n• د موټر سرعت\n• د تیلو مصرف او کچه\n• سرعت زیاتول او کمول\n• کلکه بریک او چټک سرعت پیښې\n• تېز موړونه\n• د GPS موقعیت ډاټا (عرض البلد او طول البلد)\n• د سفر واټن، موده او وخت\n• د ډرایور او موټر پیژندنه\n\nد اپلیکیشن په کارولو سره تاسو په روښانه ډول د دې پیرامیټرونو راټولولو ته رضایت ورکوئ.\n\n4. د خدمت شتون\nد تخنیکي محدودیتونو له امله د اپلیکیشن دوامداره، ریئل ټایم یا بې خطا کار نه شي تضمین کېدای.';

  @override
  String get validation_password_mismatch => 'پاسورډونه سره سمون نه خوري';

  @override
  String get validation_invalid_phone => 'تلفن نمبر ناسم دی';

  @override
  String get validation_incorrect_pin => 'پین ناسم دی';

  @override
  String get validation_empty_fields => 'مهرباني وکړئ ټولې ډکې ډکې کړئ';

  @override
  String get empty_no_cars => 'هیڅ موټر ونه موندل شو';

  @override
  String get empty_no_notifications => 'تر اوسه هیڅ خبرتیا نشته';

  @override
  String get empty_no_events => 'هیڅ پیښه شتون نه لري';

  @override
  String get status_loading => 'لګېږي...';

  @override
  String get status_success => 'عملیه بریالۍ شوه';

  @override
  String get status_error => 'یوه ستونزه رامنځته شوه';

  @override
  String get confirm_delete_car => 'ایا تاسو واقعاً غواړئ دا موټر ړنګ کړئ؟';

  @override
  String get confirm_reset_password =>
      'ایا تاسو واقعاً غواړئ خپل پاسورډ ریسیټ کړئ؟';

  @override
  String get search => 'لټون';

  @override
  String get search_hint => 'لټون...';

  @override
  String get search_no_results => 'هیڅ نتیجه ونه موندل شوه';

  @override
  String get filter => 'فلتر';

  @override
  String get sort => 'سمبالول';

  @override
  String get onboarding_title_1 => 'ښه راغلاست';

  @override
  String get onboarding_desc_1 => 'بلیک باکس مېنیجر ته';

  @override
  String get onboarding_title_2 => 'د خپل ډرایو شاته کیسه وګورئ،';

  @override
  String get onboarding_desc_2 => 'هر سفر ثبت کړئ، هر مایل تحلیل کړئ.';

  @override
  String get delete_car => 'موټر ړنګول';

  @override
  String get sedan => 'سډان';

  @override
  String get heavy_duty => 'درنه دنده';

  @override
  String get current_password => 'اوسنی پاسورډ';

  @override
  String get password_requirement =>
      'باید لږ تر لږه 8 توري اوږد وي او دواړه توري او شمېرې ولري.';

  @override
  String get current_password_is_not_correct => 'اوسنی پاسورډ سم نه دی.';

  @override
  String get vehicle => 'موټر';

  @override
  String get driven_by => 'لخوا چلول کیږي';

  @override
  String get report_fuel_level => 'د تیلو په کچه کې د چټک کمښت راپور ورکړ.';

  @override
  String get report_collision_or_rollover =>
      'یوه سخته ټکر یا اړول (sos) راپور ورکړ.';

  @override
  String get report_overheating_or_dtc =>
      'د انجن ډیر تودوخه یا د DTC کوډونو کشف راپور ورکړ.';

  @override
  String get unknown_driver => 'نامعلوم چلوونکی';

  @override
  String get mechanical_failure => 'د میخانیکي خرابۍ خبرداری!';

  @override
  String get critical_crash => 'نازکه ټکر کشف شو!';

  @override
  String get fuel_leak => 'د تیلو لیکیدو خبرداری!';

  @override
  String get today => 'نن';

  @override
  String get yesterday => 'پرون';

  @override
  String get day => 'ورځ';

  @override
  String get days => 'ورځې';

  @override
  String get week => 'اونۍ';

  @override
  String get weeks => 'اونۍ';

  @override
  String get month => 'میاشت';

  @override
  String get months => 'میاشتې';

  @override
  String get year => 'کال';

  @override
  String get years => 'کاله';

  @override
  String get january => 'جنوري';

  @override
  String get february => 'فبروري';

  @override
  String get march => 'مارچ';

  @override
  String get april => 'اپریل';

  @override
  String get may => 'مې';

  @override
  String get june => 'جون';

  @override
  String get july => 'جولای';

  @override
  String get august => 'اګست';

  @override
  String get september => 'سپتمبر';

  @override
  String get october => 'اکتوبر';

  @override
  String get november => 'نومبر';

  @override
  String get december => 'دسمبر';

  @override
  String more_than_years(Object num) {
    return 'له #$num کلونو راهیسې';
  }

  @override
  String get since_two_years => 'له 2 کلونو راهیسې';

  @override
  String get since_year => 'له یو کال راهیسې';

  @override
  String since_months(Object num) {
    return 'له #$num میاشتو راهیسې';
  }

  @override
  String get since_two_months => 'له 2 میاشتو راهیسې';

  @override
  String get since_month => 'له یوې میاشتې راهیسې';

  @override
  String since_weeks(Object num) {
    return 'له #$num اونیو راهیسې';
  }

  @override
  String get since_two_weeks => 'له 2 اونیو راهیسې';

  @override
  String get since_week => 'له یوې اونۍ راهیسې';

  @override
  String since_days(Object num) {
    return 'له #$num ورځو راهیسې';
  }

  @override
  String get since_two_days => 'له 2 ورځو راهیسې';

  @override
  String get since_day => 'له یوې ورځې راهیسې';

  @override
  String get view_driving_events => 'د چلولو پیښې وګورئ';

  @override
  String get coolant_temp => 'د کولنټ تودوخه';

  @override
  String get dtc_codes => 'DTC کوډونه';

  @override
  String get road_bump => 'سړک ټکر';

  @override
  String get fuel_level => 'د تیلو کچه';

  @override
  String get driving_behavior_score => 'د چلولو چلند نمره';

  @override
  String get event_major_crashes => 'لوی ټکرونه';

  @override
  String get event_speeding_incident => 'د تیز رفتاري پېښې';

  @override
  String get driver_id => 'د چلوونکی ID';

  @override
  String get more_details => 'نور تفصیلونه';

  @override
  String get events => 'پېښې';

  @override
  String get error_email_exists => 'دا ایمیل مخکې شتون لري';

  @override
  String get error_wrong_password => 'پاسورډ ناسم دی';

  @override
  String get error_phone_exists => 'دا ټیلیفون نمبر مخکې کارول شوی دی';

  @override
  String get error_sp_ch => 'پاسورډ باید لږ تر لږه یو خاص حرف ولري';

  @override
  String get error_up => 'پاسورډ باید لږ تر لږه یو لوړ حرف ولري';

  @override
  String get error_low => 'پاسورډ باید لږ تر لږه یو کوچنی حرف ولري';

  @override
  String get error_num => 'پاسورډ باید لږ تر لږه یوه شمېره ولري';

  @override
  String get error_required => 'دا ډګر اړین دی';

  @override
  String get error_invalid_email => 'ناسم ایمیل آدرس';

  @override
  String error_password_short(Object length) {
    return 'پاسورډ باید لږ تر لږه $length حروف ولري';
  }
}
