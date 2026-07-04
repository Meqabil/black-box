// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get app_title => 'BlackBox অ্যাপ';

  @override
  String get common_yes => 'হ্যাঁ';

  @override
  String get common_no => 'না';

  @override
  String get common_cancel => 'বাতিল করুন';

  @override
  String get common_save => 'সংরক্ষণ করুন';

  @override
  String get common_save_changes => 'পরিবর্তন সংরক্ষণ করুন';

  @override
  String get common_continue => 'চালিয়ে যান';

  @override
  String get common_next => 'পরবর্তী';

  @override
  String get auth_login => 'লগইন';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'লগ আউট';

  @override
  String get auth_confirm_logout => 'আপনি কি নিশ্চিত যে লগ আউট করতে চান?';

  @override
  String get auth_signup => 'সাইন আপ';

  @override
  String get auth_create_account => 'অ্যাকাউন্ট তৈরি করুন';

  @override
  String get auth_already_have_account => 'ইতিমধ্যে অ্যাকাউন্ট আছে? ';

  @override
  String get auth_no_account => 'অ্যাকাউন্ট নেই?';

  @override
  String get auth_forgot_password => 'পাসওয়ার্ড ভুলে গেছেন?';

  @override
  String get auth_reset_password => 'পাসওয়ার্ড রিসেট করবেন?';

  @override
  String get auth_change_password => 'পাসওয়ার্ড পরিবর্তন করুন';

  @override
  String get auth_continue => 'চালিয়ে যাওয়ার মাধ্যমে, আপনি সম্মত হচ্ছেন\n';

  @override
  String get auth_terms => 'ব্যবহারের শর্তাবলী এবং গোপনীয়তা নীতি';

  @override
  String get auth_email => 'ইমেইল';

  @override
  String get auth_password => 'পাসওয়ার্ড';

  @override
  String get auth_confirm_password => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get auth_new_password => 'নতুন পাসওয়ার্ড';

  @override
  String get auth_confirm_new_password => 'নতুন পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get auth_enter_email => 'ইমেইল ঠিকানা লিখুন';

  @override
  String get auth_password_hint => 'আপনার পাসওয়ার্ড লিখুন';

  @override
  String get full_name => 'পুরো নাম';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'পুরো নাম প্রয়োজন';

  @override
  String get required_email => 'ইমেইল প্রয়োজন';

  @override
  String get email_end => 'ইমেইল @gmail.com দিয়ে শেষ হতে হবে';

  @override
  String get required_password => 'পাসওয়ার্ড প্রয়োজন';

  @override
  String get required_confirm_password => 'পাসওয়ার্ড নিশ্চিতকরণ প্রয়োজন';

  @override
  String get password_do_not_match => 'পাসওয়ার্ড মিলছে না';

  @override
  String get min_password =>
      'পাসওয়ার্ড কমপক্ষে ৮ অক্ষরের হতে হবে এবং সংখ্যা থাকতে হবে';

  @override
  String get send_verification_code => 'ভেরিফিকেশন কোড পাঠান';

  @override
  String get password_changed_successfully =>
      'পাসওয়ার্ড সফলভাবে\nপরিবর্তিত হয়েছে';

  @override
  String get forget_password_title =>
      'আপনার অ্যাকাউন্টের সাথে যুক্ত ইমেইল লিখুন, আমরা আপনাকে পাসওয়ার্ড রিসেট সিকিউরিটি পিন পাঠাব।';

  @override
  String get auth_security_pin => 'সিকিউরিটি পিন';

  @override
  String get auth_enter_pin => 'সিকিউরিটি পিন লিখুন';

  @override
  String get verify => 'যাচাই করুন';

  @override
  String auth_resend_pin(Object seconds) {
    return '$seconds সেকেন্ড পর আবার পাঠান';
  }

  @override
  String get home_title => 'হোম';

  @override
  String get home_welcome => 'হ্যালো, ফিরে আসার জন্য স্বাগতম';

  @override
  String get home_good_morning => 'শুভ সকাল';

  @override
  String get home_good_afternoon => 'শুভ অপরাহ্ন';

  @override
  String get home_good_evening => 'শুভ সন্ধ্যা';

  @override
  String get home_looks_good => 'ভালো\nলাগছে';

  @override
  String get home_safety_score => 'নিরাপত্তা স্কোর ওভারভিউ';

  @override
  String get home_total_accidents => 'মোট দুর্ঘটনা';

  @override
  String get total_active_cars => 'মোট সক্রিয় গাড়ি';

  @override
  String get total_cars => 'মোট গাড়ি';

  @override
  String home_active_cars(Object percentage) {
    return 'আপনার গাড়ির $percentage% সক্রিয়';
  }

  @override
  String get car_section_title => 'গাড়ি';

  @override
  String get car_view_all => 'সব গাড়ি দেখুন';

  @override
  String get car_add => 'গাড়ি যোগ করুন';

  @override
  String get car_edit => 'গাড়ি সম্পাদনা করুন';

  @override
  String get car_name => 'গাড়ির নাম';

  @override
  String get car_plate => 'গাড়ির প্লেট';

  @override
  String get car_type => 'গাড়ির ধরন';

  @override
  String get car_driver_name => 'ড্রাইভারের নাম';

  @override
  String car_item_title(Object id) {
    return 'গাড়ি #$id';
  }

  @override
  String get tracking_live => 'লাইভ ট্র্যাকিং';

  @override
  String get tracking_last_updates => 'সর্বশেষ আপডেট';

  @override
  String get event_title => 'ড্রাইভিং ইভেন্ট';

  @override
  String get event_speeding => 'স্পিডিং';

  @override
  String get event_hard_braking => 'হার্ড ব্রেকিং';

  @override
  String get event_aggressive_turns => 'আক্রমণাত্মক টার্ন';

  @override
  String get event_crash => 'দুর্ঘটনা';

  @override
  String event_location(Object location) {
    return '$location এ';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed কিমি/ঘণ্টা';
  }

  @override
  String get event_severity => 'তীব্রতা';

  @override
  String get event_severity_low => 'কম';

  @override
  String get event_severity_medium => 'মাঝারি';

  @override
  String get event_severity_high => 'উচ্চ';

  @override
  String get event_severity_critical => 'গুরুতর';

  @override
  String get event_reason => 'কারণ';

  @override
  String get event_last_speed => 'সর্বশেষ রেকর্ড করা গতি';

  @override
  String get notification_title => 'নোটিফিকেশন';

  @override
  String get notification_today => 'আজ';

  @override
  String get notification_yesterday => 'গতকাল';

  @override
  String get notification_earlier => 'এই সপ্তাহের আগে';

  @override
  String get notification_fuel_alert => 'জ্বালানি লিক অ্যালার্ট!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return '$driver চালিত $car গাড়িতে জ্বালানির স্তরে দ্রুত হ্রাসের খবর পাওয়া গেছে।';
  }

  @override
  String get notification_crash_alert => 'গুরুতর দুর্ঘটনা শনাক্ত হয়েছে!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return '$driver চালিত $car গাড়িতে গুরুতর সংঘর্ষের খবর পাওয়া গেছে।';
  }

  @override
  String get profile_title => 'প্রোফাইল';

  @override
  String get profile_edit => 'আমার প্রোফাইল সম্পাদনা করুন';

  @override
  String get update_profile => 'প্রোফাইল আপডেট করুন';

  @override
  String get user_name => 'ব্যবহারকারীর নাম';

  @override
  String get security_title => 'নিরাপত্তা';

  @override
  String get change_password => 'পাসওয়ার্ড পরিবর্তন করুন';

  @override
  String get settings_title => 'সেটিংস';

  @override
  String get settings_notifications => 'নোটিফিকেশন সেটিংস';

  @override
  String get settings_general_notifications => 'সাধারণ নোটিফিকেশন';

  @override
  String get account_settings => 'অ্যাকাউন্ট সেটিংস';

  @override
  String get push_notification => 'পুশ নোটিফিকেশন';

  @override
  String get dark_mode => 'ডার্ক মোড চালু';

  @override
  String get help_title => 'সাহায্য কেন্দ্র';

  @override
  String get help_and_faq => 'সাহায্য ও FAQ';

  @override
  String get help_contact => 'যোগাযোগ করুন';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'আমরা আপনাকে কীভাবে সাহায্য করতে পারি?';

  @override
  String get on_wh_num => 'হোয়াটসঅ্যাপ নম্বরে';

  @override
  String get language => 'ভাষা';

  @override
  String get question1 => 'BlackBox কীভাবে ব্যবহার করবেন?';

  @override
  String get answer1 =>
      'আপনার গাড়িতে BlackBox ডিভাইস ইনস্টল করুন, অ্যাপে লগইন করুন এবং ড্রাইভিং শুরু করুন। অ্যাপটি স্বয়ংক্রিয়ভাবে আপনার ড্রাইভিং ডেটা রেকর্ড ও প্রদর্শন করবে।';

  @override
  String get question2 => 'BlackBox ব্যবহার করতে কত খরচ হয়?';

  @override
  String get answer2 =>
      'খরচ নির্বাচিত প্ল্যান এবং সেবার উপর নির্ভর করে। দামের বিস্তারিত জানতে কোম্পানির সাথে যোগাযোগ করুন।';

  @override
  String get question3 => 'সাপোর্টের সাথে কীভাবে যোগাযোগ করব?';

  @override
  String get answer3 =>
      'আপনি কোম্পানির অফিসিয়াল নম্বরে হোয়াটসঅ্যাপের মাধ্যমে অথবা অফিস সময়ে কোম্পানির অফিসে গিয়ে যোগাযোগ করতে পারেন।';

  @override
  String get question4 => 'পাসওয়ার্ড ভুলে গেলে কীভাবে রিসেট করব?';

  @override
  String get answer4 =>
      'লগইন স্ক্রিনে \'Forgot Password\' অপশন ব্যবহার করে নির্দেশনা অনুসরণ করুন।';

  @override
  String get question5 => 'কোনো গোপনীয়তা বা ডেটা নিরাপত্তা ব্যবস্থা আছে কি?';

  @override
  String get answer5 =>
      'হ্যাঁ। আপনার ডেটা নিরাপদে সংরক্ষিত এবং সুরক্ষিত, এবং আপনার অনুমতি ছাড়া শেয়ার করা হয় না আইনত প্রয়োজন না হলে।';

  @override
  String get question6 => 'আমি কি অ্যাপের সেটিংস কাস্টমাইজ করতে পারি?';

  @override
  String get answer6 =>
      'হ্যাঁ। আপনি নোটিফিকেশন এবং পছন্দসমূহের মতো উপলব্ধ সেটিংস অ্যাপে কাস্টমাইজ করতে পারেন।';

  @override
  String get question7 => 'আমার অ্যাকাউন্ট কীভাবে মুছে ফেলব?';

  @override
  String get answer7 =>
      'অ্যাকাউন্ট মুছে ফেলতে কোম্পানির সাথে হোয়াটসঅ্যাপ বা অফিসের মাধ্যমে যোগাযোগ করুন।';

  @override
  String get question8 =>
      'আমি কীভাবে আমার অ্যানালিটিক্স হিস্ট্রি অ্যাক্সেস করব?';

  @override
  String get answer8 =>
      'আপনি অ্যাপের History বা Analytics বিভাগে আপনার অতীত ট্রিপ এবং ড্রাইভিং অ্যানালিটিক্স দেখতে পারবেন।';

  @override
  String get question9 => 'আমি কি অ্যাপ অফলাইনে ব্যবহার করতে পারি?';

  @override
  String get answer9 =>
      'অ্যাপের সীমিত অফলাইন কার্যকারিতা আছে। ডেটা সিঙ্ক এবং পূর্ণ বৈশিষ্ট্যের জন্য ইন্টারনেট সংযোগ প্রয়োজন।';

  @override
  String get terms_title => 'শর্তাবলী';

  @override
  String get terms_accept => 'শর্তাবলী গ্রহণ করুন';

  @override
  String get terms_full =>
      '১. শর্তাবলীর স্বীকৃতি\nএই অ্যাপ্লিকেশন ইনস্টল বা ব্যবহার করে আপনি এই শর্তাবলীতে সম্মত হচ্ছেন। যদি সম্মত না হন, তাহলে অ্যাপ ব্যবহার বন্ধ করুন।\n\n২. অ্যাপ্লিকেশনের উদ্দেশ্য\nএই অ্যাপ্লিকেশনটি যানবাহন ব্ল্যাক বক্স এবং টেলিমেটিক্স সিস্টেম যা শুধুমাত্র তথ্যমূলক, নিরাপত্তা এবং বিশ্লেষণাত্মক উদ্দেশ্যে যানবাহনের কর্মক্ষমতা ও ড্রাইভিং আচরণ পর্যবেক্ষণ করে।\n\n৩. সংগৃহীত ডেটা প্যারামিটার\nঅ্যাপ্লিকেশন যানবাহন ও ড্রাইভিং ডেটা সংগ্রহ ও প্রক্রিয়া করতে পারে, যার মধ্যে রয়েছে:\n\n• যানবাহনের গতি\n• জ্বালানি খরচ ও স্তর\n• ত্বরণ ও মন্থরণ\n• কঠিন ব্রেকিং ও দ্রুত ত্বরণ ঘটনা\n• তীক্ষ্ণ মোড়\n• GPS অবস্থান ডেটা (অক্ষাংশ ও দ্রাঘিমাংশ)\n• ভ্রমণ দূরত্ব, সময়কাল ও সময়\n• ড্রাইভার ও যানবাহন শনাক্তকরণ ডেটা\n\nঅ্যাপ ব্যবহার করে আপনি এই প্যারামিটার সংগ্রহের জন্য স্পষ্ট সম্মতি দিচ্ছেন।\n\n৪. সেবার প্রাপ্যতা\nপ্রযুক্তিগত সীমাবদ্ধতার কারণে অ্যাপের অবিচ্ছিন্ন, রিয়েল-টাইম বা ত্রুটিমুক্ত কার্যক্রমের গ্যারান্টি দেওয়া যায় না।';

  @override
  String get validation_password_mismatch => 'পাসওয়ার্ড মিলছে না';

  @override
  String get validation_invalid_phone => 'অবৈধ ফোন নম্বর';

  @override
  String get validation_incorrect_pin => 'ভুল পিন';

  @override
  String get validation_empty_fields => 'অনুগ্রহ করে সবগুলো ক্ষেত্র পূরণ করুন';

  @override
  String get empty_no_cars => 'কোনো গাড়ি পাওয়া যায়নি';

  @override
  String get empty_no_notifications => 'এখনো কোনো নোটিফিকেশন নেই';

  @override
  String get empty_no_events => 'কোনো ইভেন্ট নেই';

  @override
  String get status_loading => 'লোড হচ্ছে...';

  @override
  String get status_success => 'অপারেশন সফল';

  @override
  String get status_error => 'কিছু ভুল হয়েছে';

  @override
  String get confirm_delete_car =>
      'আপনি কি নিশ্চিত যে এই গাড়ি মুছে ফেলতে চান?';

  @override
  String get confirm_reset_password =>
      'আপনি কি নিশ্চিত যে পাসওয়ার্ড রিসেট করতে চান?';

  @override
  String get search => 'অনুসন্ধান';

  @override
  String get search_hint => 'অনুসন্ধান করুন...';

  @override
  String get search_no_results => 'কোনো ফলাফল পাওয়া যায়নি';

  @override
  String get filter => 'ফিল্টার';

  @override
  String get sort => 'সাজান';

  @override
  String get onboarding_title_1 => 'স্বাগতম';

  @override
  String get onboarding_desc_1 => 'Black Box Manager এ';

  @override
  String get onboarding_title_2 => 'আপনার ড্রাইভের পেছনের গল্প দেখুন,';

  @override
  String get onboarding_desc_2 =>
      'প্রতিটি যাত্রা রেকর্ড করা, প্রতিটি মাইল বিশ্লেষণ করা।';

  @override
  String get delete_car => 'গাড়ি মুছুন';

  @override
  String get sedan => 'সেডান';

  @override
  String get heavy_duty => 'ভারী শুল্ক';

  @override
  String get current_password => 'বর্তমান পাসওয়ার্ড';

  @override
  String get password_requirement =>
      'অবশ্যই কমপক্ষে 8 অক্ষর দীর্ঘ হতে হবে এবং উভয় অক্ষর এবং সংখ্যা থাকতে হবে।';

  @override
  String get current_password_is_not_correct =>
      'বর্তমান পাসওয়ার্ডটি সঠিক নয়।';

  @override
  String get vehicle => 'গাড়ি';

  @override
  String get driven_by => 'চালাচ্ছেন';

  @override
  String get report_fuel_level => 'জ্বালানির মাত্রায় দ্রুত পতন সনাক্ত হয়েছে।';

  @override
  String get report_collision_or_rollover =>
      'একটি গুরুতর সংঘর্ষ বা উল্টে যাওয়া (এসওএস) রিপোর্ট করেছে।';

  @override
  String get report_overheating_or_dtc =>
      'ইঞ্জিন অতিরিক্ত গরম হওয়া বা ডিটিসি কোড সনাক্ত হয়েছে।';

  @override
  String get unknown_driver => 'অজানা চালক';

  @override
  String get mechanical_failure => 'যান্ত্রিক ব্যর্থতার সতর্কতা!';

  @override
  String get critical_crash => 'গুরুতর সংঘর্ষ সনাক্ত হয়েছে!';

  @override
  String get fuel_leak => 'জ্বালানি ফাঁসের সতর্কতা!';

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String get day => 'দিন';

  @override
  String get days => 'দিন';

  @override
  String get week => 'সপ্তাহ';

  @override
  String get weeks => 'সপ্তাহ';

  @override
  String get month => 'মাস';

  @override
  String get months => 'মাস';

  @override
  String get year => 'বছর';

  @override
  String get years => 'বছর';

  @override
  String get january => 'জানুয়ারি';

  @override
  String get february => 'ফেব্রুয়ারি';

  @override
  String get march => 'মার্চ';

  @override
  String get april => 'এপ্রিল';

  @override
  String get may => 'মে';

  @override
  String get june => 'জুন';

  @override
  String get july => 'জুলাই';

  @override
  String get august => 'আগস্ট';

  @override
  String get september => 'সেপ্টেম্বর';

  @override
  String get october => 'অক্টোবর';

  @override
  String get november => 'নভেম্বর';

  @override
  String get december => 'ডিসেম্বর';

  @override
  String more_than_years(Object num) {
    return '#$num বছর ধরে';
  }

  @override
  String get since_two_years => '২ বছর ধরে';

  @override
  String get since_year => 'এক বছর ধরে';

  @override
  String since_months(Object num) {
    return '#$num মাস ধরে';
  }

  @override
  String get since_two_months => '২ মাস ধরে';

  @override
  String get since_month => 'এক মাস ধরে';

  @override
  String since_weeks(Object num) {
    return '#$num সপ্তাহ ধরে';
  }

  @override
  String get since_two_weeks => '২ সপ্তাহ ধরে';

  @override
  String get since_week => 'এক সপ্তাহ ধরে';

  @override
  String since_days(Object num) {
    return '#$num দিন ধরে';
  }

  @override
  String get since_two_days => '২ দিন ধরে';

  @override
  String get since_day => 'এক দিন ধরে';

  @override
  String get view_driving_events => 'ড্রাইভিং ইভেন্ট দেখুন';

  @override
  String get coolant_temp => 'কুল্যান্ট তাপমাত্রা';

  @override
  String get dtc_codes => 'ডিটিসি কোড';

  @override
  String get road_bump => 'রাস্তার উঁচু-নিচু';

  @override
  String get fuel_level => 'জ্বালানি স্তর';

  @override
  String get driving_behavior_score => 'ড্রাইভিং আচরণ স্কোর';

  @override
  String get event_major_crashes => 'বড় সংঘর্ষ';

  @override
  String get event_speeding_incident => 'দ্রুত গতির ঘটনা';

  @override
  String get driver_id => 'চালক আইডি';

  @override
  String get more_details => 'আরও বিবরণ';

  @override
  String get events => 'ইভেন্ট';

  @override
  String get error_email_exists => 'এই ইমেইলটি ইতিমধ্যে বিদ্যমান';

  @override
  String get error_wrong_password => 'ভুল পাসওয়ার্ড';

  @override
  String get error_phone_exists => 'এই ফোন নম্বরটি ইতিমধ্যে ব্যবহৃত হচ্ছে';

  @override
  String get error_sp_ch => 'পাসওয়ার্ডে কমপক্ষে একটি বিশেষ চিহ্ন থাকতে হবে';

  @override
  String get error_up => 'পাসওয়ার্ডে কমপক্ষে একটি বড় হাতের অক্ষর থাকতে হবে';

  @override
  String get error_low => 'পাসওয়ার্ডে কমপক্ষে একটি ছোট হাতের অক্ষর থাকতে হবে';

  @override
  String get error_num => 'পাসওয়ার্ডে কমপক্ষে একটি সংখ্যা থাকতে হবে';

  @override
  String get error_required => 'এই ক্ষেত্রটি প্রয়োজনীয়';

  @override
  String get error_invalid_email => 'অবৈধ ইমেইল ঠিকানা';

  @override
  String error_password_short(Object length) {
    return 'পাসওয়ার্ড কমপক্ষে $length অক্ষরের হতে হবে';
  }
}
