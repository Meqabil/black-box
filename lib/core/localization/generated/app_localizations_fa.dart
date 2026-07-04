// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get app_title => 'اپلیکیشن BlackBox';

  @override
  String get common_yes => 'بله';

  @override
  String get common_no => 'خیر';

  @override
  String get common_cancel => 'لغو';

  @override
  String get common_save => 'ذخیره';

  @override
  String get common_save_changes => 'ذخیره تغییرات';

  @override
  String get common_continue => 'ادامه';

  @override
  String get common_next => 'بعدی';

  @override
  String get auth_login => 'ورود';

  @override
  String get auth_space_login => 'ورود';

  @override
  String get auth_logout => 'خروج';

  @override
  String get auth_confirm_logout => 'آیا مطمئن هستید که می‌خواهید خارج شوید؟';

  @override
  String get auth_signup => 'ثبت‌نام';

  @override
  String get auth_create_account => 'ایجاد حساب کاربری';

  @override
  String get auth_already_have_account => 'از قبل حساب کاربری دارید؟ ';

  @override
  String get auth_no_account => 'حساب کاربری ندارید؟';

  @override
  String get auth_forgot_password => 'رمز عبور را فراموش کرده‌اید؟';

  @override
  String get auth_reset_password => 'بازنشانی رمز عبور؟';

  @override
  String get auth_change_password => 'تغییر رمز عبور';

  @override
  String get auth_continue => 'با ادامه دادن، شما موافقت خود را با\n';

  @override
  String get auth_terms => 'شرایط استفاده و سیاست حریم خصوصی';

  @override
  String get auth_email => 'ایمیل';

  @override
  String get auth_password => 'رمز عبور';

  @override
  String get auth_confirm_password => 'تأیید رمز عبور';

  @override
  String get auth_new_password => 'رمز عبور جدید';

  @override
  String get auth_confirm_new_password => 'تأیید رمز عبور جدید';

  @override
  String get auth_enter_email => 'آدرس ایمیل را وارد کنید';

  @override
  String get auth_password_hint => 'رمز عبور خود را وارد کنید';

  @override
  String get full_name => 'نام کامل';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'محمد حسینی';

  @override
  String get required_name => 'نام کامل الزامی است';

  @override
  String get required_email => 'ایمیل الزامی است';

  @override
  String get email_end => 'ایمیل باید با @gmail.com خاتمه یابد';

  @override
  String get required_password => 'رمز عبور الزامی است';

  @override
  String get required_confirm_password => 'تأیید رمز عبور الزامی است';

  @override
  String get password_do_not_match => 'رمزهای عبور مطابقت ندارند';

  @override
  String get min_password => 'رمز عبور باید حداقل ۸ کاراکتر و شامل اعداد باشد';

  @override
  String get send_verification_code => 'ارسال کد تأیید';

  @override
  String get password_changed_successfully => 'رمز عبور با موفقیت تغییر کرد';

  @override
  String get forget_password_title =>
      'ایمیل مرتبط با حساب خود را وارد کنید تا ما PIN امنیتی بازنشانی رمز عبور را برای شما ارسال کنیم.';

  @override
  String get auth_security_pin => 'PIN امنیتی';

  @override
  String get auth_enter_pin => 'PIN امنیتی را وارد کنید';

  @override
  String get verify => 'تأیید';

  @override
  String auth_resend_pin(Object seconds) {
    return 'ارسال مجدد در $seconds ثانیه';
  }

  @override
  String get home_title => 'صفحه اصلی';

  @override
  String get home_welcome => 'سلام، خوش آمدید';

  @override
  String get home_good_morning => 'صبح بخیر';

  @override
  String get home_good_afternoon => 'بعد از ظهر بخیر';

  @override
  String get home_good_evening => 'عصر بخیر';

  @override
  String get home_looks_good => 'خوب\nبه نظر می‌رسد';

  @override
  String get home_safety_score => 'نمای کلی امتیاز ایمنی';

  @override
  String get home_total_accidents => 'مجموع تصادفات';

  @override
  String get total_active_cars => 'مجموع خودروهای فعال';

  @override
  String get total_cars => 'مجموع خودروها';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage٪ از خودروهای شما فعال هستند';
  }

  @override
  String get car_section_title => 'خودروها';

  @override
  String get car_view_all => 'مشاهده خودروها';

  @override
  String get car_add => 'افزودن خودرو';

  @override
  String get car_edit => 'ویرایش خودرو';

  @override
  String get car_name => 'نام خودرو';

  @override
  String get car_plate => 'پلاک خودرو';

  @override
  String get car_type => 'نوع خودرو';

  @override
  String get car_driver_name => 'نام راننده';

  @override
  String car_item_title(Object id) {
    return 'خودرو #$id';
  }

  @override
  String get tracking_live => 'ردیابی زنده';

  @override
  String get tracking_last_updates => 'آخرین به‌روزرسانی‌ها';

  @override
  String get event_title => 'رویدادهای رانندگی';

  @override
  String get event_speeding => 'سرعت غیرمجاز';

  @override
  String get event_hard_braking => 'ترمز ناگهانی';

  @override
  String get event_aggressive_turns => 'پیچ‌های ناگهانی';

  @override
  String get event_crash => 'تصادف';

  @override
  String event_location(Object location) {
    return 'در $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed کیلومتر بر ساعت';
  }

  @override
  String get event_severity => 'شدت';

  @override
  String get event_severity_low => 'کم';

  @override
  String get event_severity_medium => 'متوسط';

  @override
  String get event_severity_high => 'زیاد';

  @override
  String get event_severity_critical => 'بحرانی';

  @override
  String get event_reason => 'دلیل';

  @override
  String get event_last_speed => 'آخرین سرعت ثبت شده';

  @override
  String get notification_title => 'اعلان‌ها';

  @override
  String get notification_today => 'امروز';

  @override
  String get notification_yesterday => 'دیروز';

  @override
  String get notification_earlier => 'اوایل این هفته';

  @override
  String get notification_fuel_alert => 'هشدار نشت سوخت!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'خودرو $car که توسط $driver رانندگی می‌شود کاهش سریع سطح سوخت را گزارش کرده است.';
  }

  @override
  String get notification_crash_alert => 'تصادف بحرانی تشخیص داده شد!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'خودرو $car که توسط $driver رانندگی می‌شود یک برخورد شدید را گزارش کرده است.';
  }

  @override
  String get profile_title => 'پروفایل';

  @override
  String get profile_edit => 'ویرایش پروفایل من';

  @override
  String get update_profile => 'به‌روزرسانی پروفایل';

  @override
  String get user_name => 'نام کاربری';

  @override
  String get security_title => 'امنیت';

  @override
  String get change_password => 'تغییر رمز عبور';

  @override
  String get settings_title => 'تنظیمات';

  @override
  String get settings_notifications => 'تنظیمات اعلان';

  @override
  String get settings_general_notifications => 'اعلان عمومی';

  @override
  String get account_settings => 'تنظیمات حساب';

  @override
  String get push_notification => 'اعلان‌های فشاری';

  @override
  String get dark_mode => 'حالت تاریک فعال';

  @override
  String get help_title => 'مرکز راهنمایی';

  @override
  String get help_and_faq => 'راهنما و سوالات متداول';

  @override
  String get help_contact => 'تماس با ما';

  @override
  String get help_faq => 'سوالات متداول';

  @override
  String get how_help => 'چگونه می‌توانیم به شما کمک کنیم؟';

  @override
  String get on_wh_num => 'در شماره واتس‌اپ';

  @override
  String get language => 'زبان';

  @override
  String get question1 => 'چگونه از BlackBox استفاده کنم؟';

  @override
  String get answer1 =>
      'دستگاه BlackBox را در خودروی خود نصب کنید، وارد برنامه شوید و رانندگی را شروع کنید. برنامه به طور خودکار داده‌های رانندگی شما را ثبت و نمایش می‌دهد.';

  @override
  String get question2 => 'هزینه استفاده از BlackBox چقدر است؟';

  @override
  String get answer2 =>
      'هزینه به طرح و خدمات انتخاب شده بستگی دارد. لطفاً برای جزئیات قیمت با شرکت تماس بگیرید.';

  @override
  String get question3 => 'چگونه با پشتیبانی تماس بگیرم؟';

  @override
  String get answer3 =>
      'می‌توانید از طریق واتس‌اپ با استفاده از شماره رسمی شرکت یا با مراجعه به دفتر شرکت در ساعات کاری با پشتیبانی تماس بگیرید.';

  @override
  String get question4 =>
      'اگر رمز عبور خود را فراموش کردم چگونه می‌توانم آن را بازنشانی کنم؟';

  @override
  String get answer4 =>
      'از گزینه \'رمز عبور را فراموش کرده‌اید\' در صفحه ورود استفاده کنید و دستورالعمل‌ها را برای بازنشانی رمز عبور خود دنبال کنید.';

  @override
  String get question5 => 'آیا اقدامات حریم خصوصی یا امنیت داده‌ها وجود دارد؟';

  @override
  String get answer5 =>
      'بله. داده‌های شما با امنیت ذخیره و محافظت می‌شوند و بدون اجازه شما به اشتراک گذاشته نمی‌شوند مگر اینکه قانون الزام کند.';

  @override
  String get question6 => 'آیا می‌توانم تنظیمات داخل برنامه را سفارشی کنم؟';

  @override
  String get answer6 =>
      'بله. می‌توانید تنظیمات موجود مانند اعلان‌ها و اولویت‌ها را در داخل برنامه سفارشی کنید.';

  @override
  String get question7 => 'چگونه می‌توانم حساب خود را حذف کنم؟';

  @override
  String get answer7 =>
      'برای حذف حساب خود، لطفاً از طریق واتس‌اپ با شرکت تماس بگیرید یا به دفتر شرکت مراجعه کنید.';

  @override
  String get question8 => 'چگونه به تاریخچه تحلیل‌های خود دسترسی پیدا کنم؟';

  @override
  String get answer8 =>
      'می‌توانید سفرهای گذشته و تحلیل‌های رانندگی خود را در بخش تاریخچه یا تحلیل برنامه مشاهده کنید.';

  @override
  String get question9 => 'آیا می‌توانم از برنامه به صورت آفلاین استفاده کنم؟';

  @override
  String get answer9 =>
      'برنامه عملکرد آفلاین محدودی دارد. اتصال به اینترنت برای همگام‌سازی داده‌ها و دسترسی به ویژگی‌های کامل مورد نیاز است.';

  @override
  String get terms_title => 'شرایط و قوانین';

  @override
  String get terms_accept => 'پذیرش شرایط و قوانین';

  @override
  String get terms_full =>
      '1. پذیرش شرایط\nبا نصب یا استفاده از این برنامه، شما این شرایط و قوانین را می‌پذیرید. اگر موافق نیستید، لطفاً استفاده از برنامه را متوقف کنید.\n\n2. هدف برنامه\nاین برنامه یک سیستم جعبه سیاه و تله‌ماتیک خودرو است که برای نظارت بر عملکرد خودرو و رفتار رانندگی فقط برای اهداف اطلاعاتی، ایمنی و تحلیلی استفاده می‌شود.\n\n3. پارامترهای داده جمع‌آوری شده\nبرنامه ممکن است داده‌های خودرو و رانندگی را جمع‌آوری و پردازش کند، از جمله اما نه محدود به:\n\n• سرعت خودرو\n• مصرف سوخت و سطح سوخت\n• شتاب و کاهش سرعت\n• ترمز ناگهانی و رویدادهای شتاب ناگهانی\n• پیچ‌های تند\n• داده‌های موقعیت مکانی GPS (عرض و طول جغرافیایی)\n• مسافت، مدت و زمان سفر\n• داده‌های شناسایی راننده و خودرو\n\nبا استفاده از برنامه، شما به صراحت با جمع‌آوری این پارامترها موافقت می‌کنید.\n\n4. در دسترس بودن سرویس\nعملکرد مداوم، بی‌وقفه یا بدون خطای برنامه به دلیل محدودیت‌های فنی تضمین نمی‌شود.';

  @override
  String get validation_password_mismatch => 'رمزهای عبور مطابقت ندارند';

  @override
  String get validation_invalid_phone => 'شماره تلفن نامعتبر';

  @override
  String get validation_incorrect_pin => 'PIN نادرست';

  @override
  String get validation_empty_fields => 'لطفاً همه فیلدها را پر کنید';

  @override
  String get empty_no_cars => 'هیچ خودرویی یافت نشد';

  @override
  String get empty_no_notifications => 'هنوز اعلانی وجود ندارد';

  @override
  String get empty_no_events => 'هیچ رویدادی در دسترس نیست';

  @override
  String get status_loading => 'در حال بارگذاری...';

  @override
  String get status_success => 'عملیات موفقیت‌آمیز بود';

  @override
  String get status_error => 'مشکلی پیش آمده است';

  @override
  String get confirm_delete_car =>
      'آیا مطمئن هستید که می‌خواهید این خودرو را حذف کنید؟';

  @override
  String get confirm_reset_password =>
      'آیا مطمئن هستید که می‌خواهید رمز عبور خود را بازنشانی کنید؟';

  @override
  String get search => 'جستجو';

  @override
  String get search_hint => 'جستجو...';

  @override
  String get search_no_results => 'نتیجه‌ای یافت نشد';

  @override
  String get filter => 'فیلتر';

  @override
  String get sort => 'مرتب‌سازی';

  @override
  String get onboarding_title_1 => 'خوش آمدید';

  @override
  String get onboarding_desc_1 => 'به Black Box Manager';

  @override
  String get onboarding_title_2 => 'داستان پشت رانندگی خود را ببینید،';

  @override
  String get onboarding_desc_2 => 'ثبت هر سفر، تحلیل هر کیلومتر.';

  @override
  String get delete_car => 'حذف ماشین';

  @override
  String get sedan => 'سدان';

  @override
  String get heavy_duty => 'سنگین';

  @override
  String get current_password => 'رمز عبور فعلی';

  @override
  String get password_requirement =>
      'باید حداقل ۸ کاراکتر باشد و شامل حروف و اعداد باشد.';

  @override
  String get current_password_is_not_correct => 'رمز عبور فعلی نادرست است.';

  @override
  String get vehicle => 'وسیله نقلیه';

  @override
  String get driven_by => 'توسط';

  @override
  String get report_fuel_level => 'کاهش سریع سطح سوخت گزارش شد.';

  @override
  String get report_collision_or_rollover =>
      'برخورد شدید یا واژگونی (sos) گزارش شد.';

  @override
  String get report_overheating_or_dtc =>
      'داغ شدن بیش از حد موتور یا کدهای DTC تشخیص داده شد.';

  @override
  String get unknown_driver => 'راننده ناشناس';

  @override
  String get mechanical_failure => 'هشدار خرابی مکانیکی!';

  @override
  String get critical_crash => 'برخورد بحرانی تشخیص داده شد!';

  @override
  String get fuel_leak => 'هشدار نشت سوخت!';

  @override
  String get today => 'امروز';

  @override
  String get yesterday => 'دیروز';

  @override
  String get day => 'روز';

  @override
  String get days => 'روز';

  @override
  String get week => 'هفته';

  @override
  String get weeks => 'هفته';

  @override
  String get month => 'ماه';

  @override
  String get months => 'ماه';

  @override
  String get year => 'سال';

  @override
  String get years => 'سال';

  @override
  String get january => 'ژانویه';

  @override
  String get february => 'فوریه';

  @override
  String get march => 'مارس';

  @override
  String get april => 'آوریل';

  @override
  String get may => 'می';

  @override
  String get june => 'ژوئن';

  @override
  String get july => 'ژوئیه';

  @override
  String get august => 'اوت';

  @override
  String get september => 'سپتامبر';

  @override
  String get october => 'اکتبر';

  @override
  String get november => 'نوامبر';

  @override
  String get december => 'دسامبر';

  @override
  String more_than_years(Object num) {
    return 'از #$num سال پیش';
  }

  @override
  String get since_two_years => 'از ۲ سال پیش';

  @override
  String get since_year => 'از یک سال پیش';

  @override
  String since_months(Object num) {
    return 'از #$num ماه پیش';
  }

  @override
  String get since_two_months => 'از ۲ ماه پیش';

  @override
  String get since_month => 'از یک ماه پیش';

  @override
  String since_weeks(Object num) {
    return 'از #$num هفته پیش';
  }

  @override
  String get since_two_weeks => 'از ۲ هفته پیش';

  @override
  String get since_week => 'از یک هفته پیش';

  @override
  String since_days(Object num) {
    return 'از #$num روز پیش';
  }

  @override
  String get since_two_days => 'از ۲ روز پیش';

  @override
  String get since_day => 'از یک روز پیش';

  @override
  String get view_driving_events => 'مشاهده رویدادهای رانندگی';

  @override
  String get coolant_temp => 'دمای مایع خنک‌کننده';

  @override
  String get dtc_codes => 'کدهای DTC';

  @override
  String get road_bump => 'دستانداز';

  @override
  String get fuel_level => 'سطح سوخت';

  @override
  String get driving_behavior_score => 'امتیاز رفتار رانندگی';

  @override
  String get event_major_crashes => 'تصادفات شدید';

  @override
  String get event_speeding_incident => 'حوادث سرعت غیرمجاز';

  @override
  String get driver_id => 'شناسه راننده';

  @override
  String get more_details => 'جزئیات بیشتر';

  @override
  String get events => 'رویدادها';

  @override
  String get error_email_exists => 'این ایمیل از قبل وجود دارد';

  @override
  String get error_wrong_password => 'رمز عبور اشتباه است';

  @override
  String get error_phone_exists => 'این شماره تلفن قبلاً استفاده شده است';

  @override
  String get error_sp_ch => 'رمز عبور باید حداقل شامل یک کاراکتر ویژه باشد';

  @override
  String get error_up => 'رمز عبور باید حداقل شامل یک حرف بزرگ باشد';

  @override
  String get error_low => 'رمز عبور باید حداقل شامل یک حرف کوچک باشد';

  @override
  String get error_num => 'رمز عبور باید حداقل شامل یک عدد باشد';

  @override
  String get error_required => 'این فیلد الزامی است';

  @override
  String get error_invalid_email => 'آدرس ایمیل نامعتبر است';

  @override
  String error_password_short(Object length) {
    return 'رمز عبور باید حداقل $length کاراکتر باشد';
  }
}
