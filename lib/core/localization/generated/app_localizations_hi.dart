// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get app_title => 'BlackBox ऐप';

  @override
  String get common_yes => 'हाँ';

  @override
  String get common_no => 'नहीं';

  @override
  String get common_cancel => 'रद्द करें';

  @override
  String get common_save => 'सेव करें';

  @override
  String get common_save_changes => 'परिवर्तन सेव करें';

  @override
  String get common_continue => 'जारी रखें';

  @override
  String get common_next => 'अगला';

  @override
  String get auth_login => 'लॉगिन';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'लॉग आउट';

  @override
  String get auth_confirm_logout => 'क्या आप वाकई लॉग आउट करना चाहते हैं?';

  @override
  String get auth_signup => 'साइन अप';

  @override
  String get auth_create_account => 'खाता बनाएं';

  @override
  String get auth_already_have_account => 'पहले से खाता है? ';

  @override
  String get auth_no_account => 'खाता नहीं है?';

  @override
  String get auth_forgot_password => 'पासवर्ड भूल गए?';

  @override
  String get auth_reset_password => 'पासवर्ड रीसेट करें?';

  @override
  String get auth_change_password => 'पासवर्ड बदलें';

  @override
  String get auth_continue => 'जारी रखने पर, आप सहमत हैं\n';

  @override
  String get auth_terms => 'उपयोग की शर्तें और गोपनीयता नीति';

  @override
  String get auth_email => 'ईमेल';

  @override
  String get auth_password => 'पासवर्ड';

  @override
  String get auth_confirm_password => 'पासवर्ड की पुष्टि करें';

  @override
  String get auth_new_password => 'नया पासवर्ड';

  @override
  String get auth_confirm_new_password => 'नए पासवर्ड की पुष्टि करें';

  @override
  String get auth_enter_email => 'ईमेल पता दर्ज करें';

  @override
  String get auth_password_hint => 'अपना पासवर्ड दर्ज करें';

  @override
  String get full_name => 'पूरा नाम';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'पूरा नाम आवश्यक है';

  @override
  String get required_email => 'ईमेल आवश्यक है';

  @override
  String get email_end => 'ईमेल @gmail.com पर समाप्त होना चाहिए';

  @override
  String get required_password => 'पासवर्ड आवश्यक है';

  @override
  String get required_confirm_password => 'पासवर्ड की पुष्टि आवश्यक है';

  @override
  String get password_do_not_match => 'पासवर्ड मेल नहीं खाते';

  @override
  String get min_password =>
      'पासवर्ड कम से कम 8 अक्षर का होना चाहिए और इसमें संख्या होनी चाहिए';

  @override
  String get send_verification_code => 'वेरिफिकेशन कोड भेजें';

  @override
  String get password_changed_successfully =>
      'पासवर्ड सफलतापूर्वक\nबदल दिया गया है';

  @override
  String get forget_password_title =>
      'अपने खाते से जुड़ा ईमेल दर्ज करें, हम आपको पासवर्ड रीसेट सिक्योरिटी पिन भेजेंगे।';

  @override
  String get auth_security_pin => 'सुरक्षा पिन';

  @override
  String get auth_enter_pin => 'सुरक्षा पिन दर्ज करें';

  @override
  String get verify => 'सत्यापित करें';

  @override
  String auth_resend_pin(Object seconds) {
    return '$seconds सेकंड में फिर से भेजें';
  }

  @override
  String get home_title => 'होम';

  @override
  String get home_welcome => 'नमस्ते, वापस स्वागत है';

  @override
  String get home_good_morning => 'शुभ प्रभात';

  @override
  String get home_good_afternoon => 'शुभ अपराह्न';

  @override
  String get home_good_evening => 'शुभ संध्या';

  @override
  String get home_looks_good => 'अच्छा\nलग रहा है';

  @override
  String get home_safety_score => 'सुरक्षा स्कोर ओवरव्यू';

  @override
  String get home_total_accidents => 'कुल दुर्घटनाएँ';

  @override
  String get total_active_cars => 'कुल सक्रिय कारें';

  @override
  String get total_cars => 'कुल कारें';

  @override
  String home_active_cars(Object percentage) {
    return 'आपकी कारों में से $percentage% सक्रिय हैं';
  }

  @override
  String get car_section_title => 'कारें';

  @override
  String get car_view_all => 'सभी कारें देखें';

  @override
  String get car_add => 'कार जोड़ें';

  @override
  String get car_edit => 'कार संपादित करें';

  @override
  String get car_name => 'कार का नाम';

  @override
  String get car_plate => 'कार प्लेट';

  @override
  String get car_type => 'कार का प्रकार';

  @override
  String get car_driver_name => 'ड्राइवर का नाम';

  @override
  String car_item_title(Object id) {
    return 'कार #$id';
  }

  @override
  String get tracking_live => 'लाइव ट्रैकिंग';

  @override
  String get tracking_last_updates => 'अंतिम अपडेट';

  @override
  String get event_title => 'ड्राइविंग इवेंट्स';

  @override
  String get event_speeding => 'स्पीडिंग';

  @override
  String get event_hard_braking => 'हार्ड ब्रेकिंग';

  @override
  String get event_aggressive_turns => 'आक्रामक टर्न';

  @override
  String get event_crash => 'क्रैश';

  @override
  String event_location(Object location) {
    return '$location में';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed km/h';
  }

  @override
  String get event_severity => 'तीव्रता';

  @override
  String get event_severity_low => 'कम';

  @override
  String get event_severity_medium => 'मध्यम';

  @override
  String get event_severity_high => 'उच्च';

  @override
  String get event_severity_critical => 'गंभीर';

  @override
  String get event_reason => 'कारण';

  @override
  String get event_last_speed => 'अंतिम दर्ज गति';

  @override
  String get notification_title => 'नोटिफिकेशन';

  @override
  String get notification_today => 'आज';

  @override
  String get notification_yesterday => 'कल';

  @override
  String get notification_earlier => 'इस सप्ताह पहले';

  @override
  String get notification_fuel_alert => 'ईंधन रिसाव अलर्ट!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'वाहन $car जिसे $driver चला रहा है, में ईंधन स्तर में तेज गिरावट की सूचना मिली है।';
  }

  @override
  String get notification_crash_alert => 'गंभीर क्रैश का पता चला!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'वाहन $car जिसे $driver चला रहा है, में गंभीर टक्कर की सूचना मिली है।';
  }

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'मेरी प्रोफाइल संपादित करें';

  @override
  String get update_profile => 'प्रोफाइल अपडेट करें';

  @override
  String get user_name => 'यूजर नाम';

  @override
  String get security_title => 'सुरक्षा';

  @override
  String get change_password => 'पासवर्ड बदलें';

  @override
  String get settings_title => 'सेटिंग्स';

  @override
  String get settings_notifications => 'नोटिफिकेशन सेटिंग्स';

  @override
  String get settings_general_notifications => 'सामान्य नोटिफिकेशन';

  @override
  String get account_settings => 'खाता सेटिंग्स';

  @override
  String get push_notification => 'पुश नोटिफिकेशन';

  @override
  String get dark_mode => 'डार्क मोड चालू';

  @override
  String get help_title => 'सहायता केंद्र';

  @override
  String get help_and_faq => 'सहायता & FAQ';

  @override
  String get help_contact => 'हमसे संपर्क करें';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'हम आपकी कैसे मदद कर सकते हैं?';

  @override
  String get on_wh_num => 'व्हाट्सएप नंबर पर';

  @override
  String get language => 'भाषा';

  @override
  String get question1 => 'BlackBox का उपयोग कैसे करें?';

  @override
  String get answer1 =>
      'अपनी कार में BlackBox डिवाइस लगाएं, ऐप में लॉगिन करें और ड्राइविंग शुरू करें। ऐप स्वचालित रूप से आपका ड्राइविंग डेटा रिकॉर्ड और प्रदर्शित करेगा।';

  @override
  String get question2 => 'BlackBox का उपयोग करने में कितना खर्च आता है?';

  @override
  String get answer2 =>
      'लागत चुने गए प्लान और सेवाओं पर निर्भर करती है। कृपया मूल्य निर्धारण के लिए कंपनी से संपर्क करें।';

  @override
  String get question3 => 'सपोर्ट से कैसे संपर्क करें?';

  @override
  String get answer3 =>
      'आप कंपनी के आधिकारिक नंबर पर व्हाट्सएप के माध्यम से या कार्यालय समय में कंपनी ऑफिस जाकर सपोर्ट से संपर्क कर सकते हैं।';

  @override
  String get question4 => 'अगर पासवर्ड भूल जाएं तो कैसे रीसेट करें?';

  @override
  String get answer4 =>
      'लॉगिन स्क्रीन पर \'Forgot Password\' विकल्प का उपयोग करें और निर्देशों का पालन करें।';

  @override
  String get question5 => 'क्या कोई गोपनीयता या डेटा सुरक्षा उपाय हैं?';

  @override
  String get answer5 =>
      'हाँ। आपका डेटा सुरक्षित रूप से संग्रहीत और सुरक्षित है, और आपकी अनुमति के बिना साझा नहीं किया जाता सिवाय कानून द्वारा आवश्यक होने के।';

  @override
  String get question6 => 'क्या मैं ऐप में सेटिंग्स अनुकूलित कर सकता हूँ?';

  @override
  String get answer6 =>
      'हाँ। आप नोटिफिकेशन और प्राथमिकताओं जैसी उपलब्ध सेटिंग्स को ऐप में अनुकूलित कर सकते हैं।';

  @override
  String get question7 => 'मेरा खाता कैसे डिलीट करें?';

  @override
  String get answer7 =>
      'अपना खाता डिलीट करने के लिए, कृपया कंपनी से व्हाट्सएप या ऑफिस के माध्यम से संपर्क करें।';

  @override
  String get question8 =>
      'मैं अपनी एनालिटिक्स हिस्ट्री कैसे एक्सेस कर सकता हूँ?';

  @override
  String get answer8 =>
      'आप ऐप के History या Analytics सेक्शन में अपनी पिछली ट्रिप्स और ड्राइविंग एनालिटिक्स देख सकते हैं।';

  @override
  String get question9 => 'क्या मैं ऐप को ऑफलाइन उपयोग कर सकता हूँ?';

  @override
  String get answer9 =>
      'ऐप में सीमित ऑफलाइन कार्यक्षमता है। डेटा सिंक और पूर्ण सुविधाओं के लिए इंटरनेट कनेक्शन आवश्यक है।';

  @override
  String get terms_title => 'नियम और शर्तें';

  @override
  String get terms_accept => 'नियम और शर्तें स्वीकार करें';

  @override
  String get terms_full =>
      '1. शर्तों की स्वीकृति\nइस एप्लिकेशन को इंस्टॉल या उपयोग करके आप इन नियमों और शर्तों से सहमत हैं। यदि आप सहमत नहीं हैं, तो कृपया ऐप का उपयोग बंद करें।\n\n2. एप्लिकेशन का उद्देश्य\nयह एप्लिकेशन वाहन ब्लैक बॉक्स और टेलीमैटिक्स सिस्टम है जो केवल सूचनात्मक, सुरक्षा और विश्लेषणात्मक उद्देश्यों के लिए वाहन प्रदर्शन और ड्राइविंग व्यवहार की निगरानी करता है।\n\n3. एकत्र किए गए डेटा पैरामीटर\nएप्लिकेशन वाहन और ड्राइविंग डेटा एकत्र और संसाधित कर सकता है, जिसमें शामिल हैं लेकिन सीमित नहीं:\n\n• वाहन की गति\n• ईंधन खपत और स्तर\n• त्वरण और मंदन\n• कठिन ब्रेकिंग और तेज त्वरण घटनाएँ\n• तेज मोड़\n• GPS स्थान डेटा (अक्षांश और देशांतर)\n• यात्रा दूरी, अवधि और समय\n• ड्राइवर और वाहन पहचान डेटा\n\nऐप का उपयोग करके आप इन पैरामीटरों के संग्रह के लिए स्पष्ट सहमति देते हैं।\n\n4. सेवा उपलब्धता\nतकनीकी सीमाओं के कारण ऐप की निरंतर, रीयल-टाइम या त्रुटि-मुक्त संचालन की गारंटी नहीं है।';

  @override
  String get validation_password_mismatch => 'पासवर्ड मेल नहीं खाते';

  @override
  String get validation_invalid_phone => 'अमान्य फोन नंबर';

  @override
  String get validation_incorrect_pin => 'गलत PIN';

  @override
  String get validation_empty_fields => 'कृपया सभी फ़ील्ड भरें';

  @override
  String get empty_no_cars => 'कोई कार नहीं मिली';

  @override
  String get empty_no_notifications => 'अभी कोई नोटिफिकेशन नहीं';

  @override
  String get empty_no_events => 'कोई इवेंट उपलब्ध नहीं';

  @override
  String get status_loading => 'लोड हो रहा है...';

  @override
  String get status_success => 'ऑपरेशन सफल';

  @override
  String get status_error => 'कुछ गलत हो गया';

  @override
  String get confirm_delete_car =>
      'क्या आप वाकई इस कार को डिलीट करना चाहते हैं?';

  @override
  String get confirm_reset_password =>
      'क्या आप वाकई अपना पासवर्ड रीसेट करना चाहते हैं?';

  @override
  String get search => 'खोजें';

  @override
  String get search_hint => 'खोजें...';

  @override
  String get search_no_results => 'कोई परिणाम नहीं मिला';

  @override
  String get filter => 'फ़िल्टर';

  @override
  String get sort => 'सॉर्ट';

  @override
  String get onboarding_title_1 => 'स्वागत है';

  @override
  String get onboarding_desc_1 => 'Black Box Manager में';

  @override
  String get onboarding_title_2 => 'अपनी ड्राइव के पीछे की कहानी देखें,';

  @override
  String get onboarding_desc_2 =>
      'हर यात्रा रिकॉर्ड करना, हर मील का विश्लेषण करना।';

  @override
  String get delete_car => 'कार हटाएं';

  @override
  String get sedan => 'सेडान';

  @override
  String get heavy_duty => 'भारी वाहन';

  @override
  String get current_password => 'वर्तमान पासवर्ड';

  @override
  String get password_requirement =>
      'कम से कम 8 अक्षर लंबा होना चाहिए और इसमें अक्षर और संख्याएँ दोनों होनी चाहिए।';

  @override
  String get current_password_is_not_correct => 'वर्तमान पासवर्ड गलत है।';

  @override
  String get vehicle => 'वाहन';

  @override
  String get driven_by => 'द्वारा चलाया जा रहा है';

  @override
  String get report_fuel_level => 'ईंधन स्तर में तेज गिरावट की सूचना दी।';

  @override
  String get report_collision_or_rollover =>
      'गंभीर टक्कर या पलटाव (sos) की सूचना दी।';

  @override
  String get report_overheating_or_dtc =>
      'इंजन के अधिक गर्म होने या डीटीसी कोड का पता चलने की सूचना दी।';

  @override
  String get unknown_driver => 'अज्ञात चालक';

  @override
  String get mechanical_failure => 'यांत्रिक विफलता की चेतावनी!';

  @override
  String get critical_crash => 'गंभीर टक्कर का पता चला!';

  @override
  String get fuel_leak => 'ईंधन रिसाव अलर्ट!';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get day => 'दिन';

  @override
  String get days => 'दिन';

  @override
  String get week => 'सप्ताह';

  @override
  String get weeks => 'सप्ताह';

  @override
  String get month => 'महीना';

  @override
  String get months => 'महीने';

  @override
  String get year => 'साल';

  @override
  String get years => 'साल';

  @override
  String get january => 'जनवरी';

  @override
  String get february => 'फरवरी';

  @override
  String get march => 'मार्च';

  @override
  String get april => 'अप्रैल';

  @override
  String get may => 'मई';

  @override
  String get june => 'जून';

  @override
  String get july => 'जुलाई';

  @override
  String get august => 'अगस्त';

  @override
  String get september => 'सितंबर';

  @override
  String get october => 'अक्टूबर';

  @override
  String get november => 'नवंबर';

  @override
  String get december => 'दिसंबर';

  @override
  String more_than_years(Object num) {
    return '#$num सालों से';
  }

  @override
  String get since_two_years => '2 सालों से';

  @override
  String get since_year => 'एक साल से';

  @override
  String since_months(Object num) {
    return '#$num महीनों से';
  }

  @override
  String get since_two_months => '2 महीनों से';

  @override
  String get since_month => 'एक महीने से';

  @override
  String since_weeks(Object num) {
    return '#$num हफ्तों से';
  }

  @override
  String get since_two_weeks => '2 हफ्तों से';

  @override
  String get since_week => 'एक हफ्ते से';

  @override
  String since_days(Object num) {
    return '#$num दिनों से';
  }

  @override
  String get since_two_days => '2 दिनों से';

  @override
  String get since_day => 'एक दिन से';

  @override
  String get view_driving_events => 'ड्राइविंग ईवेंट देखें';

  @override
  String get coolant_temp => 'कूलेंट तापमान';

  @override
  String get dtc_codes => 'डीटीसी कोड';

  @override
  String get road_bump => 'सड़क का उबड़-खाबड़ हिस्सा';

  @override
  String get fuel_level => 'ईंधन स्तर';

  @override
  String get driving_behavior_score => 'ड्राइविंग व्यवहार स्कोर';

  @override
  String get event_major_crashes => 'बड़ी टक्करें';

  @override
  String get event_speeding_incident => 'तेज गति की घटनाएँ';

  @override
  String get driver_id => 'चालक आईडी';

  @override
  String get more_details => 'अधिक जानकारी';

  @override
  String get events => 'ईवेंट';

  @override
  String get error_email_exists => 'यह ईमेल पहले से मौजूद है';

  @override
  String get error_wrong_password => 'गलत पासवर्ड';

  @override
  String get error_phone_exists => 'यह फोन नंबर पहले से उपयोग में है';

  @override
  String get error_sp_ch => 'पासवर्ड में कम से कम एक विशेष वर्ण होना चाहिए';

  @override
  String get error_up => 'पासवर्ड में कम से कम एक अपरकेस अक्षर होना चाहिए';

  @override
  String get error_low => 'पासवर्ड में कम से कम एक लोअरकेस अक्षर होना चाहिए';

  @override
  String get error_num => 'पासवर्ड में कम से कम एक संख्या होनी चाहिए';

  @override
  String get error_required => 'यह फ़ील्ड आवश्यक है';

  @override
  String get error_invalid_email => 'अमान्य ईमेल पता';

  @override
  String error_password_short(Object length) {
    return 'पासवर्ड कम से कम $length अक्षर का होना चाहिए';
  }
}
