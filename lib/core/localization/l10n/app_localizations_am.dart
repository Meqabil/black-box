// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get app_title => 'ብላክቦክስ አፕ';

  @override
  String get common_yes => 'አዎ';

  @override
  String get common_no => 'አይ';

  @override
  String get common_cancel => 'ይቅር';

  @override
  String get common_save => 'አስቀምጥ';

  @override
  String get common_save_changes => 'ለውጦችን አስቀምጥ';

  @override
  String get common_continue => 'ቀጥል';

  @override
  String get common_next => 'ቀጣይ';

  @override
  String get auth_login => 'ግባ';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'ውጣ';

  @override
  String get auth_confirm_logout => 'እውነት ለመውጣት ይፈልጋሉ?';

  @override
  String get auth_signup => 'ተመዝገብ';

  @override
  String get auth_create_account => 'አካውንት ፍጠር';

  @override
  String get auth_already_have_account => 'አካውንት አለዎት? ';

  @override
  String get auth_no_account => 'አካውንት የለዎትም?';

  @override
  String get auth_forgot_password => 'ፓስወርድ ረሱ?';

  @override
  String get auth_reset_password => 'ፓስወርድ ዳግም አስጀምር?';

  @override
  String get auth_change_password => 'ፓስወርድ ቀይር';

  @override
  String get auth_continue => 'መቀጠል ማለት ተስማምተዋል\n';

  @override
  String get auth_terms => 'የአጠቃቀም ውሎች እና የግላዊነት ፖሊሲ';

  @override
  String get auth_email => 'ኢሜይል';

  @override
  String get auth_password => 'ፓስወርድ';

  @override
  String get auth_confirm_password => 'ፓስወርድ አረጋግጥ';

  @override
  String get auth_new_password => 'አዲስ ፓስወርድ';

  @override
  String get auth_confirm_new_password => 'አዲስ ፓስወርድ አረጋግጥ';

  @override
  String get auth_enter_email => 'ኢሜይል አድራሻ ያስገቡ';

  @override
  String get auth_password_hint => 'ፓስወርድዎን ያስገቡ';

  @override
  String get full_name => 'ሙሉ ስም';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'ሙሉ ስም ያስፈልጋል';

  @override
  String get required_email => 'ኢሜይል ያስፈልጋል';

  @override
  String get email_end => 'ኢሜይል @gmail.com በማብቃት መጨረስ አለበት';

  @override
  String get required_password => 'ፓስወርድ ያስፈልጋል';

  @override
  String get required_confirm_password => 'ፓስወርድ ማረጋገጫ ያስፈልጋል';

  @override
  String get password_do_not_match => 'ፓስወርዶቹ አይዛመዱም';

  @override
  String get min_password => 'ፓስወርድ ቢያንስ 8 ቁምፊዎች መሆን እና ቁጥሮችን መያዝ አለበት';

  @override
  String get send_verification_code => 'የማረጋገጫ ኮድ ላክ';

  @override
  String get password_changed_successfully => 'ፓስወርድ በተሳካ ሁኔታ\nተቀይሯል';

  @override
  String get forget_password_title =>
      'ከአካውንትዎ ጋር የተገናኘውን ኢሜይል ያስገቡ፣ ፓስወርድ ዳግም ለማስጀመር የደህንነት ፒን እንልክልዎታለን።';

  @override
  String get auth_security_pin => 'የደህንነት ፒን';

  @override
  String get auth_enter_pin => 'የደህንነት ፒን ያስገቡ';

  @override
  String get verify => 'አረጋግጥ';

  @override
  String auth_resend_pin(Object seconds) {
    return 'በ$seconds ሰከንድ ውስጥ እንደገና ላክ';
  }

  @override
  String get home_title => 'መነሻ';

  @override
  String get home_welcome => 'ሰላም፣ እንኳን ተመለሱ';

  @override
  String get home_good_morning => 'እንደምን አደሩ';

  @override
  String get home_good_afternoon => 'እንደምሽ ደህና';

  @override
  String get home_good_evening => 'እንደማታ ደህና';

  @override
  String get home_looks_good => 'ጥሩ\nይመስላል';

  @override
  String get home_safety_score => 'የደህንነት ነጥብ አጠቃላይ እይታ';

  @override
  String get home_total_accidents => 'ጠቅላላ አደጋዎች';

  @override
  String get total_active_cars => 'ጠቅላላ ንቁ መኪኖች';

  @override
  String get total_cars => 'ጠቅላላ መኪኖች';

  @override
  String home_active_cars(Object percentage) {
    return 'ከመኪኖችዎ $percentage% ንቁ ናቸው';
  }

  @override
  String get car_section_title => 'መኪኖች';

  @override
  String get car_view_all => 'ሁሉንም መኪኖች ይመልከቱ';

  @override
  String get car_add => 'መኪና ጨምር';

  @override
  String get car_edit => 'መኪና አርትዕ';

  @override
  String get car_name => 'የመኪና ስም';

  @override
  String get car_plate => 'የመኪና ታርጋ';

  @override
  String get car_type => 'የመኪና አይነት';

  @override
  String get car_driver_name => 'የአሽከርካሪ ስም';

  @override
  String car_item_title(Object id) {
    return 'መኪና #$id';
  }

  @override
  String get tracking_live => 'ቀጥታ መከታተል';

  @override
  String get tracking_last_updates => 'የቅርብ ጊዜ ዝማኔዎች';

  @override
  String get event_title => 'የመንዳት ክስተቶች';

  @override
  String get event_speeding => 'ፍጥነት መብለጥ';

  @override
  String get event_hard_braking => 'ከባድ ብሬክ';

  @override
  String get event_aggressive_turns => 'ጠበኛ መዞር';

  @override
  String get event_crash => 'አደጋ';

  @override
  String event_location(Object location) {
    return 'በ$location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed ኪ.ሜ/ሰ';
  }

  @override
  String get event_severity => 'ክብደት';

  @override
  String get event_severity_low => 'ዝቅተኛ';

  @override
  String get event_severity_medium => 'መካከለኛ';

  @override
  String get event_severity_high => 'ከፍተኛ';

  @override
  String get event_severity_critical => 'አስጊ';

  @override
  String get event_reason => 'ምክንያት';

  @override
  String get event_last_speed => 'የመጨረሻው የተመዘገበ ፍጥነት';

  @override
  String get notification_title => 'ማሳወቂያዎች';

  @override
  String get notification_today => 'ዛሬ';

  @override
  String get notification_yesterday => 'ትናንት';

  @override
  String get notification_earlier => 'በዚህ ሳምንት ቀደም ብሎ';

  @override
  String get notification_fuel_alert => 'የነዳጅ ፍሳሽ ማሳወቂያ!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'በ$driver የሚነዳው $car መኪና የነዳጅ መጠን በፍጥነት መቀነሱን ሪፖርት አድርጓል።';
  }

  @override
  String get notification_crash_alert => 'ከባድ አደጋ ተገኝቷል!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'በ$driver የሚነዳው $car መኪና ከባድ ግጭት ሪፖርት አድርጓል።';
  }

  @override
  String get profile_title => 'ፕሮፋይል';

  @override
  String get profile_edit => 'ፕሮፋይሌን አርትዕ';

  @override
  String get update_profile => 'ፕሮፋይል አዘምን';

  @override
  String get user_name => 'የተጠቃሚ ስም';

  @override
  String get security_title => 'ደህንነት';

  @override
  String get change_password => 'ፓስወርድ ቀይር';

  @override
  String get settings_title => 'ቅንብሮች';

  @override
  String get settings_notifications => 'የማሳወቂያ ቅንብሮች';

  @override
  String get settings_general_notifications => 'አጠቃላይ ማሳወቂያዎች';

  @override
  String get account_settings => 'የአካውንት ቅንብሮች';

  @override
  String get push_notification => 'ፑሽ ማሳወቂያዎች';

  @override
  String get dark_mode => 'ጨለማ ሁነታ በርቷል';

  @override
  String get help_title => 'የእርዳታ ማእከል';

  @override
  String get help_and_faq => 'እርዳታ እና ተደጋጋሚ ጥያቄዎች';

  @override
  String get help_contact => 'አግኙን';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'እንዴት ልንረዳዎ እንችላለን?';

  @override
  String get on_wh_num => 'በዋትስአፕ ቁጥር';

  @override
  String get language => 'ቋንቋ';

  @override
  String get question1 => 'ብላክቦክስን እንዴት መጠቀም ይቻላል?';

  @override
  String get answer1 =>
      'ብላክቦክስ መሣሪያውን በመኪናዎ ውስጥ ይጫኑ፣ ወደ አፕ ግቡ እና መንዳት ይጀምሩ። አፑ በራስ-ሰር የመንዳት ውሂብዎን ይመዘግባል እና ያሳያል።';

  @override
  String get question2 => 'ብላክቦክስን ለመጠቀም ምን ያህል ያስከፍላል?';

  @override
  String get answer2 =>
      'ወጪው እንደ የተመረጠው እቅድ እና አገልግሎቶች ይወሰናል። ዝርዝር ዋጋ ለማግኘት ከኩባንያው ጋር ያግኙ።';

  @override
  String get question3 => 'ድጋፍ እንዴት ማግኘት ይቻላል?';

  @override
  String get answer3 =>
      'በኩባንያው ኦፊሴላዊ ቁጥር በዋትስአፕ ወይም በስራ ሰዓት በኩባንያው ቢሮ በመሄድ ድጋፍ ማግኘት ይችላሉ።';

  @override
  String get question4 => 'ፓስወርድ ብዬ ከረሳሁ እንዴት እድሳለሁ?';

  @override
  String get answer4 =>
      'በመግቢያ ማያ ገጽ ላይ \'ፓስወርድ ረሱ\' የሚለውን አማራጭ ተጠቅመው መመሪያዎቹን ይከተሉ።';

  @override
  String get question5 => 'የግላዊነት እና የውሂብ ደህንነት እርምጃዎች አሉ?';

  @override
  String get answer5 => 'አዎ። ውሂብዎ በደህና ይቀመጣል እና ያለ ፈቃድዎ አይጋራም ህግ ካስፈለገ በስተቀር።';

  @override
  String get question6 => 'በአፑ ውስጥ ቅንብሮችን ማበጀት እችላለሁ?';

  @override
  String get answer6 =>
      'አዎ። ማሳወቂያዎች እና ምርጫዎችን ጨምሮ ያሉ ቅንብሮችን በአፑ ውስጥ ማበጀት ይችላሉ።';

  @override
  String get question7 => 'አካውንቴን እንዴት መሰረዝ እችላለሁ?';

  @override
  String get answer7 => 'አካውንትዎን ለመሰረዝ እባክዎ በዋትስአፕ ወይም በቢሮ ከኩባንያው ጋር ያግኙ።';

  @override
  String get question8 => 'የታሪክ ትንታኔዬን እንዴት ማግኘት እችላለሁ?';

  @override
  String get answer8 =>
      'ቀደምት ጉዞዎችዎን እና የመንዳት ትንታኔዎችን በአፑ History ወይም Analytics ክፍል ውስጥ ማየት ይችላሉ።';

  @override
  String get question9 => 'አፑን ኦፍላይን መጠቀም እችላለሁ?';

  @override
  String get answer9 =>
      'አፑ የተወሰነ ኦፍላይን ተግባር አለው። ውሂብ ለማመሳሰል እና ሙሉ ባህሪያትን ለመጠቀም ኢንተርኔት ያስፈልጋል።';

  @override
  String get terms_title => 'ውሎች እና ሁኔታዎች';

  @override
  String get terms_accept => 'ውሎችን እና ሁኔታዎችን ተቀበል';

  @override
  String get terms_full =>
      '1. ውሎችን መቀበል\nይህን አፕሊኬሽን በመጫን ወይም በመጠቀም እነዚህን ውሎች እና ሁኔታዎች ተቀብለዋል። ካልተስማሙ እባክዎ አፑን መጠቀም ያቁሙ።\n\n2. የአፕሊኬሽኑ ዓላማ\nይህ አፕሊኬሽን የተሽከርካሪ ብላክቦክስ እና ቴሌማቲክስ ስርዓት ሲሆን የተሽከርካሪ አፈጻጸም እና የመንዳት ባህሪን ለመረጃ፣ ለደህንነት እና ለትንታኔ ብቻ ይቆጣጠራል።\n\n3. የሚሰበሰቡ ውሂቦች\nአፕሊኬሽኑ የተሽከርካሪ እና የመንዳት ውሂብ ሊሰበስብ እና ሊያካሂድ ይችላል፣ ይህም የሚከተሉትን ያካትታል፡\n\n• የተሽከርካሪ ፍጥነት\n• የነዳጅ ፍጆታ እና ደረጃ\n• ማፋጠን እና ማዘግየት\n• ከባድ ብሬክ እና ፈጣን ማፋጠን\n• ጠበኛ መዞር\n• የጂፒኤስ አካባቢ (ኬንትሮስ እና ሎንጊቱድ)\n• የጉዞ ርቀት፣ ጊዜ እና ቆይታ\n• የአሽከርካሪ እና የተሽከርካሪ መታወቂያ\n\nአፑን በመጠቀም እነዚህን መለኪያዎች ለመሰብሰብ ግልጽ ፈቃድ ይሰጣሉ።\n\n4. የአገልግሎት ተገኝነት\nበቴክኒካል ገደቦች ምክንያት የአፑ ቀጣይነት፣ ቀጥታ ጊዜ ወይም ያለስህተት ስራ ማረጋገጥ አይቻልም።';

  @override
  String get validation_password_mismatch => 'ፓስወርዶቹ አይዛመዱም';

  @override
  String get validation_invalid_phone => 'ስልክ ቁጥር ልክ አይደለም';

  @override
  String get validation_incorrect_pin => 'ፒን ትክክል አይደለም';

  @override
  String get validation_empty_fields => 'እባክዎ ሁሉንም ሳጥኖች ይሙሉ';

  @override
  String get empty_no_cars => 'ምንም መኪና አልተገኘም';

  @override
  String get empty_no_notifications => 'እስካሁን ምንም ማሳወቂያ የለም';

  @override
  String get empty_no_events => 'ምንም ክስተት የለም';

  @override
  String get status_loading => 'በመጫን ላይ...';

  @override
  String get status_success => 'ተግባሩ ተሳክቷል';

  @override
  String get status_error => 'የሆነ ችግር ተፈጥሯል';

  @override
  String get confirm_delete_car => 'ይህን መኪና ማጥፋት እንደሚፈልጉ እርግጠኛ ነዎት?';

  @override
  String get confirm_reset_password => 'ፓስወርድዎን ዳግም ማስጀመር እንደሚፈልጉ እርግጠኛ ነዎት?';

  @override
  String get search => 'ፈልግ';

  @override
  String get search_hint => 'ፈልግ...';

  @override
  String get search_no_results => 'ምንም ውጤት አልተገኘም';

  @override
  String get filter => 'አጣራ';

  @override
  String get sort => 'ደርድር';

  @override
  String get onboarding_title_1 => 'እንኳን ደህና መጡ';

  @override
  String get onboarding_desc_1 => 'ወደ ብላክ ቦክስ ማኔጅር';

  @override
  String get onboarding_title_2 => 'ከመንዳትዎ ጀርባ ያለውን ታሪክ ይመልከቱ፣';

  @override
  String get onboarding_desc_2 => 'እያንዳንዱን ጉዞ መዝግብ፣ እያንዳንዱን ኪሎሜትር ተንትን።';

  @override
  String get delete_car => 'መኪና ሰርዝ';

  @override
  String get sedan => 'ሴዳን';

  @override
  String get heavy_duty => 'ከባድ ጭነት';

  @override
  String get current_password => 'አሁናዊ የይለፍ ቃል';

  @override
  String get password_requirement =>
      'ቢያንስ 8 ቁምፊዎች ርዝመት ያለው እና ፊደሎችን እና ቁጥሮችን ያካተተ መሆን አለበት።';

  @override
  String get current_password_is_not_correct => 'አሁናዊ የይለፍ ቃል ትክክል አይደለም።';

  @override
  String get vehicle => 'ተሽከርካሪ';

  @override
  String get driven_by => 'የሚነዳው በ';

  @override
  String get report_fuel_level => 'ፈጣን የነዳጅ መጠን መቀነስ ተገኝቷል።';

  @override
  String get report_collision_or_rollover => 'ከባድ ግጭት ወይም መገልበጥ ተከስቷል (sos)።';

  @override
  String get report_overheating_or_dtc => 'የሞተር ሙቀት መጨመር ወይም የዲቲሲ ኮዶች ተገኝተዋል።';

  @override
  String get unknown_driver => 'ያልታወቀ ሾፌር';

  @override
  String get mechanical_failure => 'የሜካኒካል ብልሽት ማስጠንቀቂያ!';

  @override
  String get critical_crash => 'ከባድ ግጭት ተገኝቷል!';

  @override
  String get fuel_leak => 'የነዳጅ ፍሳሽ ማስጠንቀቂያ!';

  @override
  String get today => 'ዛሬ';

  @override
  String get yesterday => 'ትላንት';

  @override
  String get day => 'ቀን';

  @override
  String get days => 'ቀናት';

  @override
  String get week => 'ሳምንት';

  @override
  String get weeks => 'ሳምንታት';

  @override
  String get month => 'ወር';

  @override
  String get months => 'ወራት';

  @override
  String get year => 'አመት';

  @override
  String get years => 'አመታት';

  @override
  String get january => 'ጥር';

  @override
  String get february => 'የካቲት';

  @override
  String get march => 'መጋቢት';

  @override
  String get april => 'ሚያዚያ';

  @override
  String get may => 'ግንቦት';

  @override
  String get june => 'ሰኔ';

  @override
  String get july => 'ሐምሌ';

  @override
  String get august => 'ነሐሴ';

  @override
  String get september => 'መስከረም';

  @override
  String get october => 'ጥቅምት';

  @override
  String get november => 'ህዳር';

  @override
  String get december => 'ታህሳስ';

  @override
  String more_than_years(Object num) {
    return '#$num አመታት ጀምሮ';
  }

  @override
  String get since_two_years => 'ከ2 አመታት ጀምሮ';

  @override
  String get since_year => 'ከአንድ አመት ጀምሮ';

  @override
  String since_months(Object num) {
    return 'ከ#$num ወራት ጀምሮ';
  }

  @override
  String get since_two_months => 'ከ2 ወራት ጀምሮ';

  @override
  String get since_month => 'ከአንድ ወር ጀምሮ';

  @override
  String since_weeks(Object num) {
    return 'ከ#$num ሳምንታት ጀምሮ';
  }

  @override
  String get since_two_weeks => 'ከ2 ሳምንታት ጀምሮ';

  @override
  String get since_week => 'ከሳምንት ጀምሮ';

  @override
  String since_days(Object num) {
    return 'ከ#$num ቀናት ጀምሮ';
  }

  @override
  String get since_two_days => 'ከ2 ቀናት ጀምሮ';

  @override
  String get since_day => 'ከአንድ ቀን ጀምሮ';

  @override
  String get view_driving_events => 'የማሽከርከር ክስተቶችን ተመልከት';

  @override
  String get coolant_temp => 'የሙቀት መቆጣጠሪያ ሙቀት';

  @override
  String get dtc_codes => 'የዲቲሲ ኮዶች';

  @override
  String get road_bump => 'የመንገድ ጉድጓድ';

  @override
  String get fuel_level => 'የነዳጅ መጠን';

  @override
  String get driving_behavior_score => 'የማሽከርከር ባህሪ ነጥብ';

  @override
  String get event_major_crashes => 'ከባድ ግጭቶች';

  @override
  String get event_speeding_incident => 'ከፍተኛ ፍጥነት ክስተቶች';

  @override
  String get driver_id => 'የሾፌር መታወቂያ';

  @override
  String get more_details => 'ተጨማሪ ዝርዝሮች';

  @override
  String get events => 'ክስተቶች';

  @override
  String get error_email_exists => 'ይህ ኢሜይል ቀድሞ አለ';

  @override
  String get error_wrong_password => 'ፓስወርድ ትክክል አይደለም';

  @override
  String get error_phone_exists => 'ይህ ስልክ ቁጥር ቀድሞ ጥቅም ላይ ውሏል';

  @override
  String get error_sp_ch => 'ፓስወርድ ቢያንስ አንድ ልዩ ቁምፊ መያዝ አለበት';

  @override
  String get error_up => 'ፓስወርድ ቢያንስ አንድ ትልቅ ፊደል መያዝ አለበት';

  @override
  String get error_low => 'ፓስወርድ ቢያንስ አንድ ትንሽ ፊደል መያዝ አለበት';

  @override
  String get error_num => 'ፓስወርድ ቢያንስ አንድ ቁጥር መያዝ አለበት';

  @override
  String get error_required => 'ይህ ሳጥን ያስፈልጋል';

  @override
  String get error_invalid_email => 'ኢሜይል ትክክል አይደለም';

  @override
  String error_password_short(Object length) {
    return 'ፓስወርድ ቢያንስ $length ቁምፊዎች መሆን አለበት';
  }
}
