// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get app_title => 'تطبيق الصندوق الأسود';

  @override
  String get common_yes => 'نعم';

  @override
  String get common_no => 'لا';

  @override
  String get common_cancel => 'إلغاء';

  @override
  String get common_save => 'حفظ';

  @override
  String get common_save_changes => 'حفظ التغييرات';

  @override
  String get common_continue => 'متابعة';

  @override
  String get common_next => 'التالي';

  @override
  String get auth_login => 'تسجيل الدخول';

  @override
  String get auth_space_login => 'تسجيل الدخول';

  @override
  String get auth_logout => 'تسجيل الخروج';

  @override
  String get auth_confirm_logout => 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get auth_signup => 'إنشاء حساب';

  @override
  String get auth_create_account => 'إنشاء حساب';

  @override
  String get auth_already_have_account => 'هل لديك حساب بالفعل؟';

  @override
  String get auth_no_account => 'ليس لديك حساب؟';

  @override
  String get auth_forgot_password => 'هل نسيت كلمة المرور؟';

  @override
  String get auth_reset_password => 'إعادة تعيين كلمة المرور';

  @override
  String get auth_change_password => 'تغيير كلمة المرور';

  @override
  String get auth_continue => 'بالمتابعة، فإنك توافق على\n';

  @override
  String get auth_terms => 'شروط الاستخدام وسياسة الخصوصية';

  @override
  String get auth_email => 'البريد الإلكتروني';

  @override
  String get auth_password => 'كلمة المرور';

  @override
  String get auth_confirm_password => 'تأكيد كلمة المرور';

  @override
  String get auth_new_password => 'كلمة المرور الجديدة';

  @override
  String get auth_confirm_new_password => 'تأكيد كلمة المرور الجديدة';

  @override
  String get auth_enter_email => 'أدخل البريد الإلكتروني';

  @override
  String get auth_password_hint => 'أدخل كلمة المرور';

  @override
  String get full_name => 'الاسم الكامل';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'عمر الدالـي';

  @override
  String get required_name => 'الاسم الكامل مطلوب';

  @override
  String get required_email => 'البريد الإلكتروني مطلوب';

  @override
  String get email_end => 'يجب أن ينتهي البريد الإلكتروني بـ @gmail.com';

  @override
  String get required_password => 'كلمة المرور مطلوبة';

  @override
  String get required_confirm_password => 'تأكيد كلمة المرور مطلوب';

  @override
  String get password_do_not_match => 'كلمتا المرور غير متطابقتين';

  @override
  String get min_password =>
      'يجب أن تكون كلمة المرور 8 أحرف على الأقل وتحتوي على أرقام';

  @override
  String get send_verification_code => 'إرسال رمز التحقق';

  @override
  String get password_changed_successfully => 'تم تغيير كلمة المرور بنجاح';

  @override
  String get forget_password_title =>
      'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رمز تحقق لإعادة تعيين كلمة المرور';

  @override
  String get auth_security_pin => 'رمز الأمان';

  @override
  String get auth_enter_pin => 'أدخل رمز الأمان';

  @override
  String get verify => 'تـأكيد';

  @override
  String auth_resend_pin(Object seconds) {
    return 'إعادة الإرسال خلال $seconds ثانية';
  }

  @override
  String get home_title => 'الرئيسية';

  @override
  String get home_welcome => 'مرحبًا، أهلاً بعودتك';

  @override
  String get home_good_morning => 'صبـاح الخيـر';

  @override
  String get home_good_afternoon => 'مسـاء الخيـر';

  @override
  String get home_good_evening => 'مسـاء الخيـر';

  @override
  String get home_looks_good => 'يبدو\nجيدًا';

  @override
  String get home_safety_score => 'نظرة عامة على درجة الأمان';

  @override
  String get home_total_accidents => 'إجمالي الحوادث';

  @override
  String get total_active_cars => 'إجمالي السيارات النشطة';

  @override
  String get total_cars => 'إجمالي السيارات';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% من سياراتك نشطة';
  }

  @override
  String get car_section_title => 'السيارات';

  @override
  String get car_view_all => 'عرض السيارات';

  @override
  String get car_add => 'إضافة سيارة';

  @override
  String get car_edit => 'تعديل السيارة';

  @override
  String get car_name => 'اسم السيارة';

  @override
  String get car_plate => 'لوحة السيارة';

  @override
  String get car_type => 'نوع السيارة';

  @override
  String get car_driver_name => 'اسم السائق';

  @override
  String car_item_title(Object id) {
    return 'سيارة : $id';
  }

  @override
  String get tracking_live => 'تتبــع مباشــر';

  @override
  String get tracking_last_updates => 'آخـر التحــديـثــات';

  @override
  String get event_title => 'أحداث القيادة';

  @override
  String get event_speeding => 'تجاوز السرعة';

  @override
  String get event_hard_braking => 'فرملة قوية';

  @override
  String get event_aggressive_turns => 'منعطفات حادة';

  @override
  String get event_crash => 'حادث';

  @override
  String event_location(Object location) {
    return 'في $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed كم/س';
  }

  @override
  String get event_severity => 'الخطورة';

  @override
  String get event_severity_low => 'منخفض';

  @override
  String get event_severity_medium => 'متوسط';

  @override
  String get event_severity_high => 'مرتفع';

  @override
  String get event_severity_critical => 'حرج';

  @override
  String get event_reason => 'السبب';

  @override
  String get event_last_speed => 'آخر سرعة مسجلة';

  @override
  String get notification_title => 'الإشعارات';

  @override
  String get notification_today => 'اليوم';

  @override
  String get notification_yesterday => 'أمس';

  @override
  String get notification_earlier => 'في وقت سابق هذا الأسبوع';

  @override
  String get notification_fuel_alert => 'تنبيه تسرب الوقود!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'المركبة $car التي يقودها $driver سجلت انخفاضًا سريعًا في مستوى الوقود.';
  }

  @override
  String get notification_crash_alert => 'تم اكتشاف حادث خطير!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'المركبة $car التي يقودها $driver سجلت تصادمًا شديدًا.';
  }

  @override
  String get profile_title => 'الملف الشخصي';

  @override
  String get profile_edit => 'تعديل الملف الشخصي';

  @override
  String get update_profile => 'تـحديث الملــف الشخــصي';

  @override
  String get user_name => 'إسـم المسـتخدم';

  @override
  String get security_title => 'الأمان';

  @override
  String get change_password => 'تغيير كلمة المرور';

  @override
  String get settings_title => 'الإعدادات';

  @override
  String get settings_notifications => 'إعدادات الإشعارات';

  @override
  String get settings_general_notifications => 'الإشعارات العامة';

  @override
  String get account_settings => 'إعـدادت الحساب';

  @override
  String get push_notification => 'تفعيل الإشـعارات';

  @override
  String get dark_mode => 'تفعيـل الوضـع المظلم';

  @override
  String get help_title => 'مركز المساعدة';

  @override
  String get help_and_faq => 'المسـاعدة والإسـتعلام';

  @override
  String get help_contact => 'تواصل معنا';

  @override
  String get help_faq => 'الأسئلة الشائعة';

  @override
  String get how_help => 'كيف يمكننا مسـاعدتك ؟';

  @override
  String get on_wh_num => 'على رقم الهاتف 5851';

  @override
  String get language => 'اللــغة';

  @override
  String get question1 => 'كيف أستخدم تطبيق BlackBox؟';

  @override
  String get answer1 =>
      'قم بتركيب جهاز BlackBox في سيارتك، ثم سجّل الدخول إلى التطبيق وابدأ القيادة. سيقوم التطبيق تلقائيًا بتسجيل وعرض بيانات القيادة الخاصة بك.';

  @override
  String get question2 => 'كم تبلغ تكلفة استخدام BlackBox؟';

  @override
  String get answer2 =>
      'تعتمد التكلفة على الباقة والخدمات المختارة. يُرجى التواصل مع الشركة لمعرفة تفاصيل الأسعار.';

  @override
  String get question3 => 'كيف يمكنني التواصل مع الدعم؟';

  @override
  String get answer3 =>
      'يمكنك التواصل مع الدعم عبر واتساب باستخدام الرقم الرسمي للشركة أو من خلال زيارة مقر الشركة خلال ساعات العمل.';

  @override
  String get question4 => 'كيف يمكنني إعادة تعيين كلمة المرور إذا نسيتها؟';

  @override
  String get answer4 =>
      'استخدم خيار \'نسيت كلمة المرور\' في شاشة تسجيل الدخول واتبع التعليمات لإعادة تعيين كلمة المرور.';

  @override
  String get question5 => 'هل توجد إجراءات لحماية الخصوصية وأمان البيانات؟';

  @override
  String get answer5 =>
      'نعم، يتم تخزين بياناتك بشكل آمن وحمايتها، ولا يتم مشاركتها دون إذنك إلا في الحالات التي يفرضها القانون.';

  @override
  String get question6 => 'هل يمكنني تخصيص الإعدادات داخل التطبيق؟';

  @override
  String get answer6 =>
      'نعم، يمكنك تخصيص الإعدادات المتاحة مثل الإشعارات والتفضيلات من داخل التطبيق.';

  @override
  String get question7 => 'كيف يمكنني حذف حسابي؟';

  @override
  String get answer7 =>
      'لحذف حسابك، يُرجى التواصل مع الشركة عبر واتساب أو زيارة مقر الشركة.';

  @override
  String get question8 => 'كيف يمكنني الوصول إلى سجل التحليلات الخاصة بي؟';

  @override
  String get answer8 =>
      'يمكنك عرض رحلاتك السابقة وتحليلات القيادة من خلال قسم السجل أو التحليلات داخل التطبيق.';

  @override
  String get question9 => 'هل يمكنني استخدام التطبيق بدون اتصال بالإنترنت؟';

  @override
  String get answer9 =>
      'يحتوي التطبيق على وظائف محدودة بدون اتصال. يلزم توفر اتصال بالإنترنت لمزامنة البيانات والوصول إلى جميع الميزات.';

  @override
  String get terms_title => 'الشروط والأحكام';

  @override
  String get terms_accept => 'أوافق على الشروط والأحكام';

  @override
  String get terms_full =>
      '1. قبول الشروط\nمن خلال تثبيت هذا التطبيق أو استخدامه، فإنك توافق على هذه الشروط والأحكام. إذا كنت لا توافق، يرجى التوقف عن استخدام التطبيق.\n\n2. الغرض من التطبيق\nهذا التطبيق هو نظام صندوق أسود للمركبات ونظام تتبع (Telematics) يُستخدم لمراقبة أداء المركبة وسلوك القيادة لأغراض معلوماتية وسلامة وتحليل فقط.\n\n3. البيانات التي يتم جمعها\nقد يقوم التطبيق بجمع ومعالجة بيانات المركبة والقيادة، بما في ذلك على سبيل المثال لا الحصر:\n\n• سرعة المركبة\n• استهلاك الوقود ومستوى الوقود\n• التسارع والتباطؤ\n• الفرملة القوية وحالات التسارع المفاجئ\n• الانعطافات الحادة\n• بيانات الموقع عبر GPS (خط الطول وخط العرض)\n• مسافة الرحلة ومدتها ووقتها\n• بيانات تعريف السائق والمركبة\n\nمن خلال استخدام التطبيق، فإنك توافق صراحةً على جمع هذه البيانات.\n\n4. توفر الخدمة\nلا يمكن ضمان التشغيل المستمر أو في الوقت الفعلي أو الخالي من الأخطاء للتطبيق بسبب القيود التقنية.';

  @override
  String get validation_password_mismatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get validation_invalid_phone => 'رقم هاتف غير صالح';

  @override
  String get validation_incorrect_pin => 'رمز PIN غير صحيح';

  @override
  String get validation_empty_fields => 'يرجى ملء جميع الحقول';

  @override
  String get empty_no_cars => 'لا توجد سيارات';

  @override
  String get empty_no_notifications => 'لا توجد إشعارات بعد';

  @override
  String get empty_no_events => 'لا توجد أحداث متاحة';

  @override
  String get status_loading => 'جارٍ التحميل...';

  @override
  String get status_success => 'تمت العملية بنجاح';

  @override
  String get status_error => 'حدث خطأ ما';

  @override
  String get confirm_delete_car =>
      'هل أنت متأكد أنك تريد حذف هذه السيارة؟ صاحبة الرقم ';

  @override
  String get confirm_reset_password =>
      'هل أنت متأكد أنك تريد إعادة تعيين كلمة المرور؟';

  @override
  String get search => 'بحث';

  @override
  String get search_hint => 'بحث...';

  @override
  String get search_no_results => 'لا توجد نتائج';

  @override
  String get filter => 'تصفية';

  @override
  String get sort => 'ترتيب';

  @override
  String get onboarding_title_1 => 'مرحبًا';

  @override
  String get onboarding_desc_1 => 'في مدير الصندوق الأسود';

  @override
  String get onboarding_title_2 => 'شاهد قصة قيادتك،';

  @override
  String get onboarding_desc_2 => 'تسجيل كل رحلة وتحليل كل ميل.';

  @override
  String get delete_car => 'حـذف السيارة';

  @override
  String get sedan => 'سـيدان';

  @override
  String get heavy_duty => 'نـقل ثقيــل';

  @override
  String get current_password => 'كلمة المرور الحالية';

  @override
  String get password_requirement =>
      'يجب أن تتكون من 8 أحرف على الأقل وتحتوي على حروف وأرقام.';

  @override
  String get current_password_is_not_correct => 'كلمة المرور الحالية غير صحيحة';

  @override
  String get vehicle => 'السيارة';

  @override
  String get driven_by => 'يقــودها ';

  @override
  String get report_fuel_level => 'سجلت انخفـاض سرــع في مستوى الوقــود.';

  @override
  String get report_collision_or_rollover => 'تصادمـت او أنـقلبت.';

  @override
  String get report_overheating_or_dtc =>
      'سجلت إرتـفاع في درجـة إرتفاع درجـة حـرارة المحرك او إكتـشاف رموز أعطـال.';

  @override
  String get unknown_driver => 'سـائق غيـر معـروف';

  @override
  String get mechanical_failure => ' تحـذير بحـدوث عطل ميكانيكي';

  @override
  String get critical_crash => 'تحذير بحـدوث تصـادم !';

  @override
  String get fuel_leak => 'تحذير: تسرب في الوقود!';

  @override
  String get today => 'اليوم';

  @override
  String get yesterday => 'أمس';

  @override
  String get day => 'يوم';

  @override
  String get days => 'أيام';

  @override
  String get week => 'أسبوع';

  @override
  String get weeks => 'أسابيع';

  @override
  String get month => 'شهر';

  @override
  String get months => 'شهور';

  @override
  String get year => 'سنة';

  @override
  String get years => 'سنوات';

  @override
  String get january => 'يناير';

  @override
  String get february => 'فبراير';

  @override
  String get march => 'مارس';

  @override
  String get april => 'أبريل';

  @override
  String get may => 'مايو';

  @override
  String get june => 'يونيو';

  @override
  String get july => 'يوليو';

  @override
  String get august => 'أغسطس';

  @override
  String get september => 'سبتمبر';

  @override
  String get october => 'أكتوبر';

  @override
  String get november => 'نوفمبر';

  @override
  String get december => 'ديسمبر';

  @override
  String more_than_years(Object num) {
    return 'مـنذ #$num أعـوام';
  }

  @override
  String get since_two_years => 'منـذ عاميـن';

  @override
  String get since_year => 'منـذ عـام';

  @override
  String since_months(Object num) {
    return 'منـذ #$num شـهور';
  }

  @override
  String get since_two_months => 'منـذ شهــرين';

  @override
  String get since_month => 'منـذ شـهر';

  @override
  String since_weeks(Object num) {
    return 'منـذ #$num أسـابيع';
  }

  @override
  String get since_two_weeks => 'منـذ إسـبوعين';

  @override
  String get since_week => 'منـذ إسبـوع';

  @override
  String since_days(Object num) {
    return 'منـذ #$num أيام';
  }

  @override
  String get since_two_days => 'منـذ يـومين';

  @override
  String get since_day => 'منـذ يـوم';

  @override
  String get view_driving_events => 'عرض أحداث القيادة';

  @override
  String get coolant_temp => 'درجة حرارة سائل التبريد';

  @override
  String get dtc_codes => 'رموز الأعـطـــال';

  @override
  String get road_bump => 'مـطـب الطـريــق';

  @override
  String get fuel_level => 'مستــوى الوقــود';

  @override
  String get driving_behavior_score => 'تقييم مســتوى السـائـق';

  @override
  String get event_major_crashes => 'الحـــوادث الكبيــرة';

  @override
  String get event_speeding_incident => 'مــؤشــرات الســرعة';

  @override
  String get driver_id => 'مـعــرف الســائـق';

  @override
  String get more_details => 'تـفــاصيــل أكــثـر';

  @override
  String get events => 'الأحــداث';

  @override
  String get error_email_exists => 'هذا البريد الإلكتروني مستخدم بالفعل';

  @override
  String get error_wrong_password => 'كلمة المرور غير صحيحة';

  @override
  String get error_phone_exists => 'رقم الهاتف مستخدم بالفعل';

  @override
  String get error_sp_ch =>
      'يجب أن تحتوي كلمة المرور على حرف خاص واحد على الأقل';

  @override
  String get error_up => 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل';

  @override
  String get error_low =>
      'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل';

  @override
  String get error_num => 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل';

  @override
  String get error_required => 'هذا الحقل مطلوب';

  @override
  String get error_invalid_email => 'بريد إلكتروني غير صالح';

  @override
  String error_password_short(Object length) {
    return 'يجب أن تكون كلمة المرور على الأقل $length أحرف';
  }
}
