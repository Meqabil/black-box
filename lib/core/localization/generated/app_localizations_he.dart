// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'כן';

  @override
  String get common_no => 'לא';

  @override
  String get common_cancel => 'ביטול';

  @override
  String get common_save => 'שמור';

  @override
  String get common_save_changes => 'שמור שינויים';

  @override
  String get common_continue => 'המשך';

  @override
  String get common_next => 'הבא';

  @override
  String get auth_login => 'כניסה';

  @override
  String get auth_space_login => 'התחבר';

  @override
  String get auth_logout => 'יציאה';

  @override
  String get auth_confirm_logout => 'האם אתה בטוח שברצונך להתנתק?';

  @override
  String get auth_signup => 'הרשמה';

  @override
  String get auth_create_account => 'צור חשבון';

  @override
  String get auth_already_have_account => 'כבר יש לך חשבון? ';

  @override
  String get auth_no_account => 'אין לך חשבון?';

  @override
  String get auth_forgot_password => 'שכחת סיסמה?';

  @override
  String get auth_reset_password => 'איפוס סיסמה?';

  @override
  String get auth_change_password => 'שינוי סיסמה';

  @override
  String get auth_continue => 'בהמשך, אתה מסכים ל\n';

  @override
  String get auth_terms => 'תנאי שימוש ומדיניות פרטיות';

  @override
  String get auth_email => 'אימייל';

  @override
  String get auth_password => 'סיסמה';

  @override
  String get auth_confirm_password => 'אימות סיסמה';

  @override
  String get auth_new_password => 'סיסמה חדשה';

  @override
  String get auth_confirm_new_password => 'אימות סיסמה חדשה';

  @override
  String get auth_enter_email => 'הכנס כתובת אימייל';

  @override
  String get auth_password_hint => 'הכנס את הסיסמה שלך';

  @override
  String get full_name => 'שם מלא';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'ישראל ישראלי';

  @override
  String get required_name => 'שם מלא נדרש';

  @override
  String get required_email => 'אימייל נדרש';

  @override
  String get email_end => 'האימייל חייב להסתיים ב-@gmail.com';

  @override
  String get required_password => 'סיסמה נדרשת';

  @override
  String get required_confirm_password => 'אימות סיסמה נדרש';

  @override
  String get password_do_not_match => 'הסיסמאות אינן תואמות';

  @override
  String get min_password => 'הסיסמה חייבת להכיל לפחות 8 תווים ומספרים';

  @override
  String get send_verification_code => 'שלח קוד אימות';

  @override
  String get password_changed_successfully => 'הסיסמה שונתה\nבהצלחה';

  @override
  String get forget_password_title =>
      'הכנס את האימייל המשויך לחשבונך ואנו נשלח לך קוד PIN לאיפוס הסיסמה.';

  @override
  String get auth_security_pin => 'קוד אבטחה';

  @override
  String get auth_enter_pin => 'הכנס קוד אבטחה';

  @override
  String get verify => 'אמת';

  @override
  String auth_resend_pin(Object seconds) {
    return 'שלח שוב בעוד $seconds שניות';
  }

  @override
  String get home_title => 'בית';

  @override
  String get home_welcome => 'היי, ברוך שובך';

  @override
  String get home_good_morning => 'בוקר טוב';

  @override
  String get home_good_afternoon => 'צהריים טובים';

  @override
  String get home_good_evening => 'ערב טוב';

  @override
  String get home_looks_good => 'נראה\nטוב';

  @override
  String get home_safety_score => 'סקירת ציון בטיחות';

  @override
  String get home_total_accidents => 'סך כל התאונות';

  @override
  String get total_active_cars => 'סך כל הרכבים הפעילים';

  @override
  String get total_cars => 'סך כל הרכבים';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% מהרכבים שלך פעילים';
  }

  @override
  String get car_section_title => 'רכבים';

  @override
  String get car_view_all => 'צפה ברכבים';

  @override
  String get car_add => 'הוסף רכב';

  @override
  String get car_edit => 'ערוך רכב';

  @override
  String get car_name => 'שם הרכב';

  @override
  String get car_plate => 'לוחית רישוי';

  @override
  String get car_type => 'סוג הרכב';

  @override
  String get car_driver_name => 'שם הנהג';

  @override
  String car_item_title(Object id) {
    return 'רכב #$id';
  }

  @override
  String get tracking_live => 'מעקב חי';

  @override
  String get tracking_last_updates => 'עדכונים אחרונים';

  @override
  String get event_title => 'אירועי נהיגה';

  @override
  String get event_speeding => 'מהירות יתר';

  @override
  String get event_hard_braking => 'בלימה חדה';

  @override
  String get event_aggressive_turns => 'פניות אגרסיביות';

  @override
  String get event_crash => 'תאונה';

  @override
  String event_location(Object location) {
    return 'ב$location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed קמ\"ש';
  }

  @override
  String get event_severity => 'חומרה';

  @override
  String get event_severity_low => 'נמוכה';

  @override
  String get event_severity_medium => 'בינונית';

  @override
  String get event_severity_high => 'גבוהה';

  @override
  String get event_severity_critical => 'קריטית';

  @override
  String get event_reason => 'סיבה';

  @override
  String get event_last_speed => 'מהירות אחרונה שנרשמה';

  @override
  String get notification_title => 'התראות';

  @override
  String get notification_today => 'היום';

  @override
  String get notification_yesterday => 'אתמול';

  @override
  String get notification_earlier => 'מוקדם יותר השבוע';

  @override
  String get notification_fuel_alert => 'התראת דליפת דלק!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'רכב $car בניהול $driver דיווח על ירידה מהירה ברמת הדלק.';
  }

  @override
  String get notification_crash_alert => 'זוהתה התנגשות קריטית!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'רכב $car בניהול $driver דיווח על התנגשות חמורה.';
  }

  @override
  String get profile_title => 'פרופיל';

  @override
  String get profile_edit => 'ערוך את הפרופיל שלי';

  @override
  String get update_profile => 'עדכן פרופיל';

  @override
  String get user_name => 'שם משתמש';

  @override
  String get security_title => 'אבטחה';

  @override
  String get change_password => 'שנה סיסמה';

  @override
  String get settings_title => 'הגדרות';

  @override
  String get settings_notifications => 'הגדרות התראות';

  @override
  String get settings_general_notifications => 'התראה כללית';

  @override
  String get account_settings => 'הגדרות חשבון';

  @override
  String get push_notification => 'התראות דחיפה';

  @override
  String get dark_mode => 'מצב כהה פעיל';

  @override
  String get help_title => 'מרכז עזרה';

  @override
  String get help_and_faq => 'עזרה ושאלות נפוצות';

  @override
  String get help_contact => 'צור קשר';

  @override
  String get help_faq => 'שאלות נפוצות';

  @override
  String get how_help => 'כיצד נוכל לעזור לך?';

  @override
  String get on_wh_num => 'במספר WhatsApp';

  @override
  String get language => 'שפה';

  @override
  String get question1 => 'כיצד להשתמש ב-BlackBox?';

  @override
  String get answer1 =>
      'התקן את מכשיר BlackBox ברכבך, התחבר לאפליקציה והתחל לנהוג. האפליקציה תרשום ותציג אוטומטית את נתוני הנהיגה שלך.';

  @override
  String get question2 => 'כמה עולה השימוש ב-BlackBox?';

  @override
  String get answer2 =>
      'העלות תלויה בתוכנית ובשירותים שנבחרו. אנא צור קשר עם החברה לפרטי תמחור.';

  @override
  String get question3 => 'כיצד ליצור קשר עם התמיכה?';

  @override
  String get answer3 =>
      'ניתן לפנות לתמיכה דרך WhatsApp במספר הרשמי של החברה או בביקור במשרדי החברה בשעות הפעילות.';

  @override
  String get question4 => 'כיצד אוכל לאפס את סיסמתי אם שכחתיה?';

  @override
  String get answer4 =>
      'השתמש באפשרות \'שכחת סיסמה\' במסך הכניסה ופעל לפי ההוראות לאיפוס הסיסמה.';

  @override
  String get question5 => 'האם קיימים אמצעי פרטיות ואבטחת מידע?';

  @override
  String get answer5 =>
      'כן. הנתונים שלך מאוחסנים ומוגנים בצורה מאובטחת ואינם משותפים ללא רשותך אלא כנדרש על פי חוק.';

  @override
  String get question6 => 'האם ניתן להתאים הגדרות באפליקציה?';

  @override
  String get answer6 =>
      'כן. ניתן להתאים הגדרות זמינות כגון התראות והעדפות באפליקציה.';

  @override
  String get question7 => 'כיצד אוכל למחוק את חשבוני?';

  @override
  String get answer7 =>
      'למחיקת החשבון, אנא צור קשר עם החברה דרך WhatsApp או בביקור במשרדי החברה.';

  @override
  String get question8 => 'כיצד אוכל לגשת להיסטוריית הניתוחים שלי?';

  @override
  String get answer8 =>
      'ניתן לצפות בנסיעות העבר ובניתוחי הנהיגה בקטע היסטוריה או ניתוח באפליקציה.';

  @override
  String get question9 => 'האם ניתן להשתמש באפליקציה במצב לא מקוון?';

  @override
  String get answer9 =>
      'לאפליקציה פונקציונליות מוגבלת במצב לא מקוון. נדרש חיבור לאינטרנט לסנכרון נתונים וגישה לכלל התכונות.';

  @override
  String get terms_title => 'תנאים והגבלות';

  @override
  String get terms_accept => 'קבל את התנאים וההגבלות';

  @override
  String get terms_full =>
      '1. קבלת התנאים\nבהתקנה או שימוש באפליקציה זו, אתה מסכים לתנאים והגבלות אלה. אם אינך מסכים, אנא הפסק את השימוש באפליקציה.\n\n2. מטרת האפליקציה\nאפליקציה זו היא מערכת קופסה שחורה ותקשורת טלמטית לרכב המשמשת לניטור ביצועי הרכב והתנהגות הנהיגה למטרות מידע, בטיחות וניתוח בלבד.\n\n3. פרמטרי הנתונים הנאספים\nהאפליקציה עשויה לאסוף ולעבד נתוני רכב ונהיגה, כולל אך לא מוגבל ל:\n\n• מהירות הרכב\n• צריכת דלק ורמת הדלק\n• האצה ובלימה\n• אירועי בלימה חדה והאצה מהירה\n• פנייה חדה\n• נתוני מיקום GPS (קו רוחב וקו אורך)\n• מרחק הנסיעה, משך הזמן והשעה\n• נתוני זיהוי נהג ורכב\n\nבשימוש באפליקציה, אתה מסכים במפורש לאיסוף פרמטרים אלה.\n\n4. זמינות השירות\nפעולה רציפה, בזמן אמת או ללא שגיאות של האפליקציה אינה מובטחת עקב מגבלות טכניות.';

  @override
  String get validation_password_mismatch => 'הסיסמאות אינן תואמות';

  @override
  String get validation_invalid_phone => 'מספר טלפון לא חוקי';

  @override
  String get validation_incorrect_pin => 'PIN שגוי';

  @override
  String get validation_empty_fields => 'אנא מלא את כל השדות';

  @override
  String get empty_no_cars => 'לא נמצאו רכבים';

  @override
  String get empty_no_notifications => 'אין התראות עדיין';

  @override
  String get empty_no_events => 'אין אירועים זמינים';

  @override
  String get status_loading => 'טוען...';

  @override
  String get status_success => 'הפעולה הצליחה';

  @override
  String get status_error => 'משהו השתבש';

  @override
  String get confirm_delete_car => 'האם אתה בטוח שברצונך למחוק רכב זה?';

  @override
  String get confirm_reset_password =>
      'האם אתה בטוח שברצונך לאפס את הסיסמה שלך?';

  @override
  String get search => 'חיפוש';

  @override
  String get search_hint => 'חיפוש...';

  @override
  String get search_no_results => 'לא נמצאו תוצאות';

  @override
  String get filter => 'סינון';

  @override
  String get sort => 'מיון';

  @override
  String get onboarding_title_1 => 'ברוך הבא';

  @override
  String get onboarding_desc_1 => 'למנהל Black Box';

  @override
  String get onboarding_title_2 => 'ראה את הסיפור מאחורי הנסיעה שלך,';

  @override
  String get onboarding_desc_2 => 'מתעד כל מסע, מנתח כל קילומטר.';

  @override
  String get delete_car => 'מחק רכב';

  @override
  String get sedan => 'סדאן';

  @override
  String get heavy_duty => 'כבד';

  @override
  String get current_password => 'סיסמה נוכחית';

  @override
  String get password_requirement =>
      'חייבת להיות באורך של 8 תווים לפחות ולהכיל אותיות ומספרים.';

  @override
  String get current_password_is_not_correct => 'הסיסמה הנוכחית שגויה.';

  @override
  String get vehicle => 'רכב';

  @override
  String get driven_by => 'נוסע על ידי';

  @override
  String get report_fuel_level => 'דיווח על ירידה מהירה במפלס הדלק.';

  @override
  String get report_collision_or_rollover =>
      'דיווח על התנגשות חמורה או התהפכות (sos).';

  @override
  String get report_overheating_or_dtc =>
      'דיווח על התחממות יתר של המנוע או קודי DTC שזוהו.';

  @override
  String get unknown_driver => 'נהג לא ידוע';

  @override
  String get mechanical_failure => 'אזהרת תקלה מכנית!';

  @override
  String get critical_crash => 'התנגשות קריטית זוהתה!';

  @override
  String get fuel_leak => 'התראת דליפת דלק!';

  @override
  String get today => 'היום';

  @override
  String get yesterday => 'אתמול';

  @override
  String get day => 'יום';

  @override
  String get days => 'ימים';

  @override
  String get week => 'שבוע';

  @override
  String get weeks => 'שבועות';

  @override
  String get month => 'חודש';

  @override
  String get months => 'חודשים';

  @override
  String get year => 'שנה';

  @override
  String get years => 'שנים';

  @override
  String get january => 'ינואר';

  @override
  String get february => 'פברואר';

  @override
  String get march => 'מרץ';

  @override
  String get april => 'אפריל';

  @override
  String get may => 'מאי';

  @override
  String get june => 'יוני';

  @override
  String get july => 'יולי';

  @override
  String get august => 'אוגוסט';

  @override
  String get september => 'ספטמבר';

  @override
  String get october => 'אוקטובר';

  @override
  String get november => 'נובמבר';

  @override
  String get december => 'דצמבר';

  @override
  String more_than_years(Object num) {
    return 'מאז #$num שנים';
  }

  @override
  String get since_two_years => 'מאז שנתיים';

  @override
  String get since_year => 'מאז שנה';

  @override
  String since_months(Object num) {
    return 'מאז #$num חודשים';
  }

  @override
  String get since_two_months => 'מאז חודשיים';

  @override
  String get since_month => 'מאז חודש';

  @override
  String since_weeks(Object num) {
    return 'מאז #$num שבועות';
  }

  @override
  String get since_two_weeks => 'מאז שבועיים';

  @override
  String get since_week => 'מאז שבוע';

  @override
  String since_days(Object num) {
    return 'מאז #$num ימים';
  }

  @override
  String get since_two_days => 'מאז יומיים';

  @override
  String get since_day => 'מאז יום';

  @override
  String get view_driving_events => 'הצג אירועי נהיגה';

  @override
  String get coolant_temp => 'טמפרטורת נוזל קירור';

  @override
  String get dtc_codes => 'קודי DTC';

  @override
  String get road_bump => 'מהמורה';

  @override
  String get fuel_level => 'מפלס דלק';

  @override
  String get driving_behavior_score => 'ציון התנהגות נהיגה';

  @override
  String get event_major_crashes => 'התנגשויות גדולות';

  @override
  String get event_speeding_incident => 'אירועי מהירות מופרזת';

  @override
  String get driver_id => 'מזהה נהג';

  @override
  String get more_details => 'פרטים נוספים';

  @override
  String get events => 'אירועים';

  @override
  String get error_email_exists => 'אימייל זה כבר קיים';

  @override
  String get error_wrong_password => 'סיסמה שגויה';

  @override
  String get error_phone_exists => 'מספר טלפון זה כבר בשימוש';

  @override
  String get error_sp_ch => 'הסיסמה חייבת להכיל לפחות תו מיוחד אחד';

  @override
  String get error_up => 'הסיסמה חייבת להכיל לפחות אות גדולה אחת';

  @override
  String get error_low => 'הסיסמה חייבת להכיל לפחות אות קטנה אחת';

  @override
  String get error_num => 'הסיסמה חייבת להכיל לפחות ספרה אחת';

  @override
  String get error_required => 'שדה זה נדרש';

  @override
  String get error_invalid_email => 'כתובת אימייל לא חוקית';

  @override
  String error_password_short(Object length) {
    return 'הסיסמה חייבת להכיל לפחות $length תווים';
  }
}
