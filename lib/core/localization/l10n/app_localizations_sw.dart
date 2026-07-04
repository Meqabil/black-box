// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ndio';

  @override
  String get common_no => 'Hapana';

  @override
  String get common_cancel => 'Ghairi';

  @override
  String get common_save => 'Hifadhi';

  @override
  String get common_save_changes => 'Hifadhi Mabadiliko';

  @override
  String get common_continue => 'Endelea';

  @override
  String get common_next => 'Ifuatayo';

  @override
  String get auth_login => 'Ingia';

  @override
  String get auth_space_login => 'Ingia';

  @override
  String get auth_logout => 'Toka';

  @override
  String get auth_confirm_logout => 'Una hakika unataka kutoka?';

  @override
  String get auth_signup => 'Jisajili';

  @override
  String get auth_create_account => 'Unda Akaunti';

  @override
  String get auth_already_have_account => 'Tayari una akaunti? ';

  @override
  String get auth_no_account => 'Huna akaunti?';

  @override
  String get auth_forgot_password => 'Umesahau Nenosiri?';

  @override
  String get auth_reset_password => 'Weka upya Nenosiri?';

  @override
  String get auth_change_password => 'Badilisha Nenosiri';

  @override
  String get auth_continue => 'Kwa kuendelea, unakubali\n';

  @override
  String get auth_terms => 'Masharti ya Matumizi na Sera ya Faragha';

  @override
  String get auth_email => 'Barua pepe';

  @override
  String get auth_password => 'Nenosiri';

  @override
  String get auth_confirm_password => 'Thibitisha Nenosiri';

  @override
  String get auth_new_password => 'Nenosiri Jipya';

  @override
  String get auth_confirm_new_password => 'Thibitisha Nenosiri Jipya';

  @override
  String get auth_enter_email => 'Weka anwani ya barua pepe';

  @override
  String get auth_password_hint => 'Weka nenosiri lako';

  @override
  String get full_name => 'Jina Kamili';

  @override
  String get email_hint => 'mfano@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'Jina Kamili linahitajika';

  @override
  String get required_email => 'Barua pepe inahitajika';

  @override
  String get email_end => 'Barua pepe lazima iishe kwa @gmail.com';

  @override
  String get required_password => 'Nenosiri linahitajika';

  @override
  String get required_confirm_password => 'Thibitisha Nenosiri linahitajika';

  @override
  String get password_do_not_match => 'Manenosiri hayalingani';

  @override
  String get min_password =>
      'Nenosiri lazima liwe na angalau herufi 8 na iwe na namba';

  @override
  String get send_verification_code => 'Tuma Msimbo wa Uthibitishaji';

  @override
  String get password_changed_successfully =>
      'Nenosiri Limebadilishwa Kwa Mafanikio';

  @override
  String get forget_password_title =>
      'Weka barua pepe inayohusishwa na akaunti yako na tutakutumia PIN ya Usalama ya kuweka upya nenosiri lako.';

  @override
  String get auth_security_pin => 'PIN ya Usalama';

  @override
  String get auth_enter_pin => 'Weka PIN ya usalama';

  @override
  String get verify => 'Thibitisha';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Tuma tena baada ya $seconds sekunde';
  }

  @override
  String get home_title => 'Nyumbani';

  @override
  String get home_welcome => 'Hujambo, Karibu Tena';

  @override
  String get home_good_morning => 'Habari za Asubuhi';

  @override
  String get home_good_afternoon => 'Mchana mwema';

  @override
  String get home_good_evening => 'Jioni njema';

  @override
  String get home_looks_good => 'Inaonekana\nNzuri';

  @override
  String get home_safety_score => 'Muhtasari wa Alama za Usalama';

  @override
  String get home_total_accidents => 'Jumla ya ajali';

  @override
  String get total_active_cars => 'Jumla ya Magari Yanayotumika';

  @override
  String get total_cars => 'Jumla ya Magari';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% ya magari yako yanatumika';
  }

  @override
  String get car_section_title => 'Magari';

  @override
  String get car_view_all => 'Tazama Magari';

  @override
  String get car_add => 'Ongeza Gari';

  @override
  String get car_edit => 'Hariri Gari';

  @override
  String get car_name => 'Jina la Gari';

  @override
  String get car_plate => 'Sahani ya Gari';

  @override
  String get car_type => 'Aina ya Gari';

  @override
  String get car_driver_name => 'Jina la Dereva';

  @override
  String car_item_title(Object id) {
    return 'Gari #$id';
  }

  @override
  String get tracking_live => 'Ufuatiliaji wa Moja kwa Moja';

  @override
  String get tracking_last_updates => 'Sasisho za Mwisho';

  @override
  String get event_title => 'Matukio ya Kuendesha';

  @override
  String get event_speeding => 'Kasi Kupita Kiasi';

  @override
  String get event_hard_braking => 'Kusimama Ghafla';

  @override
  String get event_aggressive_turns => 'Mageuko Makali';

  @override
  String get event_crash => 'Ajali';

  @override
  String event_location(Object location) {
    return 'Katika $location';
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
  String get event_severity => 'Ukali';

  @override
  String get event_severity_low => 'Chini';

  @override
  String get event_severity_medium => 'Kati';

  @override
  String get event_severity_high => 'Juu';

  @override
  String get event_severity_critical => 'Muhimu';

  @override
  String get event_reason => 'Sababu';

  @override
  String get event_last_speed => 'Kasi ya Mwisho Iliyorekodiwa';

  @override
  String get notification_title => 'Arifa';

  @override
  String get notification_today => 'Leo';

  @override
  String get notification_yesterday => 'Jana';

  @override
  String get notification_earlier => 'Mapema Wiki Hii';

  @override
  String get notification_fuel_alert => 'Tahadhari ya Kuvuja kwa Mafuta!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Gari $car linaloendeshwa na $driver limeripoti kushuka kwa kasi kwa kiwango cha mafuta.';
  }

  @override
  String get notification_crash_alert => 'Ajali muhimu imegunduliwa!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Gari $car linaloendeshwa na $driver limeripoti mgongano mkali.';
  }

  @override
  String get profile_title => 'Wasifu';

  @override
  String get profile_edit => 'Hariri Wasifu Wangu';

  @override
  String get update_profile => 'Sasisha Wasifu';

  @override
  String get user_name => 'Jina la Mtumiaji';

  @override
  String get security_title => 'Usalama';

  @override
  String get change_password => 'Badilisha Nenosiri';

  @override
  String get settings_title => 'Mipangilio';

  @override
  String get settings_notifications => 'Mipangilio ya Arifa';

  @override
  String get settings_general_notifications => 'Arifa za Jumla';

  @override
  String get account_settings => 'Mipangilio ya Akaunti';

  @override
  String get push_notification => 'Arifa za Kushinikiza';

  @override
  String get dark_mode => 'Hali ya Giza Imewashwa';

  @override
  String get help_title => 'Kituo cha Msaada';

  @override
  String get help_and_faq => 'Msaada na Maswali Yanayoulizwa Sana';

  @override
  String get help_contact => 'Wasiliana Nasi';

  @override
  String get help_faq => 'Maswali Yanayoulizwa Sana';

  @override
  String get how_help => 'Tunaweza Kukusaidiaje?';

  @override
  String get on_wh_num => 'Kwenye Nambari ya WhatsApp';

  @override
  String get language => 'Lugha';

  @override
  String get question1 => 'Jinsi ya kutumia BlackBox?';

  @override
  String get answer1 =>
      'Sakinisha kifaa cha BlackBox kwenye gari lako, ingia kwenye programu, na anza kuendesha. Programu itarekodi na kuonyesha data yako ya kuendesha kiotomatiki.';

  @override
  String get question2 => 'Inagharimu kiasi gani kutumia BlackBox?';

  @override
  String get answer2 =>
      'Gharama inategemea mpango na huduma zilizochaguliwa. Tafadhali wasiliana na kampuni kwa maelezo ya bei.';

  @override
  String get question3 => 'Jinsi ya kuwasiliana na msaada?';

  @override
  String get answer3 =>
      'Unaweza kuwasiliana na msaada kupitia WhatsApp kwa kutumia nambari rasmi ya kampuni au kwa kutembelea ofisi ya kampuni wakati wa saa za kazi.';

  @override
  String get question4 =>
      'Je, ninawezaje kuweka upya nenosiri langu nikilisahau?';

  @override
  String get answer4 =>
      'Tumia chaguo la \'Umesahau Nenosiri\' kwenye skrini ya kuingia na ufuate maagizo ya kuweka upya nenosiri lako.';

  @override
  String get question5 => 'Je, kuna hatua za faragha au usalama wa data?';

  @override
  String get answer5 =>
      'Ndio. Data yako imehifadhiwa na kulindwa kwa usalama, na haishirikiwi bila ruhusa yako isipokuwa inapotakiwa na sheria.';

  @override
  String get question6 =>
      'Je, ninaweza kubinafsisha mipangilio ndani ya programu?';

  @override
  String get answer6 =>
      'Ndio. Unaweza kubinafsisha mipangilio inayopatikana kama vile arifa na mapendeleo ndani ya programu.';

  @override
  String get question7 => 'Je, ninawezaje kufuta akaunti yangu?';

  @override
  String get answer7 =>
      'Ili kufuta akaunti yako, tafadhali wasiliana na kampuni kupitia WhatsApp au tembelea ofisi ya kampuni.';

  @override
  String get question8 => 'Je, ninawezaje kupata historia yangu ya uchambuzi?';

  @override
  String get answer8 =>
      'Unaweza kuona safari zako zilizopita na uchambuzi wa kuendesha katika sehemu ya Historia au Uchambuzi wa programu.';

  @override
  String get question9 =>
      'Je, ninaweza kutumia programu nikiwa nje ya mtandao?';

  @override
  String get answer9 =>
      'Programu ina utendakazi mdogo wa nje ya mtandao. Muunganisho wa mtandao unahitajika kusawazisha data na kupata huduma kamili.';

  @override
  String get terms_title => 'Masharti na Kanuni';

  @override
  String get terms_accept => 'Kubali masharti na kanuni';

  @override
  String get terms_full =>
      '1. Kukubali Masharti\nKwa kusakinisha au kutumia programu hii, unakubali Masharti na Kanuni hizi. Ikiwa hukubali, tafadhali acha kutumia programu.\n\n2. Madhumuni ya Programu\nProgramu hii ni mfumo wa black box na telematics wa gari unaotumiwa kufuatilia utendaji wa gari na tabia ya kuendesha kwa madhumuni ya habari, usalama, na uchambuzi tu.\n\n3. Vigezo vya Data Vinavyokusanywa\nProgramu inaweza kukusanya na kuchakata data ya gari na kuendesha, ikijumuisha lakini sio tu:\n\n• Kasi ya gari\n• Matumizi ya mafuta na kiwango cha mafuta\n• Kuongeza na kupunguza kasi\n• Kusimama ghafla na matukio ya kuongeza kasi haraka\n• Kugeuka kwa kasi\n• Data ya eneo la GPS (latitudo na longitudo)\n• Umbali, muda, na wakati wa safari\n• Data ya kitambulisho cha dereva na gari\n\nKwa kutumia programu, unakubali kwa uwazi ukusanyaji wa vigezo hivi.\n\n4. Upatikanaji wa Huduma\nUendeshaji endelevu, wa wakati halisi, au usio na makosa wa programu hauhakikishiwi kutokana na mapungufu ya kiufundi.';

  @override
  String get validation_password_mismatch => 'Manenosiri hayalingani';

  @override
  String get validation_invalid_phone => 'Nambari ya simu si sahihi';

  @override
  String get validation_incorrect_pin => 'PIN si sahihi';

  @override
  String get validation_empty_fields => 'Tafadhali jaza sehemu zote';

  @override
  String get empty_no_cars => 'Hakuna magari yaliyopatikana';

  @override
  String get empty_no_notifications => 'Hakuna arifa bado';

  @override
  String get empty_no_events => 'Hakuna matukio yanayopatikana';

  @override
  String get status_loading => 'Inapakia...';

  @override
  String get status_success => 'Operesheni imefaulu';

  @override
  String get status_error => 'Kitu kilienda vibaya';

  @override
  String get confirm_delete_car => 'Una hakika unataka kufuta gari hili?';

  @override
  String get confirm_reset_password =>
      'Una hakika unataka kuweka upya nenosiri lako?';

  @override
  String get search => 'Tafuta';

  @override
  String get search_hint => 'Tafuta...';

  @override
  String get search_no_results => 'Hakuna matokeo yaliyopatikana';

  @override
  String get filter => 'Chuja';

  @override
  String get sort => 'Panga';

  @override
  String get onboarding_title_1 => 'Karibu';

  @override
  String get onboarding_desc_1 => 'kwa Black Box Manager';

  @override
  String get onboarding_title_2 => 'Angalia Hadithi Nyuma ya Uendeshaji Wako,';

  @override
  String get onboarding_desc_2 =>
      'Tunarekodi kila safari, kuchambua kila kilometa.';

  @override
  String get delete_car => 'Futa gari';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Mzito';

  @override
  String get current_password => 'Nenosiri la sasa';

  @override
  String get password_requirement =>
      'Lazima iwe na angalau herufi 8 na iwe na herufi na nambari.';

  @override
  String get current_password_is_not_correct => 'Nenosiri la sasa si sahihi.';

  @override
  String get vehicle => 'Gari';

  @override
  String get driven_by => 'inaendeshwa na';

  @override
  String get report_fuel_level =>
      'iliripoti kushuka kwa kiwango cha mafuta haraka.';

  @override
  String get report_collision_or_rollover =>
      'iliripoti mgongano mkubwa au kuingia chini (sos).';

  @override
  String get report_overheating_or_dtc =>
      'iliripoti injini kuwaka moto au misimbo ya DTC iliyogunduliwa.';

  @override
  String get unknown_driver => 'Dereva Asiyejulikana';

  @override
  String get mechanical_failure => 'Onyo la Hitilafu ya Mitambo!';

  @override
  String get critical_crash => 'Mgongano mkubwa umegunduliwa!';

  @override
  String get fuel_leak => 'Tahadhari ya Kuvuja kwa Mafuta!';

  @override
  String get today => 'Leo';

  @override
  String get yesterday => 'Jana';

  @override
  String get day => 'siku';

  @override
  String get days => 'siku';

  @override
  String get week => 'wiki';

  @override
  String get weeks => 'wiki';

  @override
  String get month => 'mwezi';

  @override
  String get months => 'miezi';

  @override
  String get year => 'mwaka';

  @override
  String get years => 'miaka';

  @override
  String get january => 'Januari';

  @override
  String get february => 'Februari';

  @override
  String get march => 'Machi';

  @override
  String get april => 'Aprili';

  @override
  String get may => 'Mei';

  @override
  String get june => 'Juni';

  @override
  String get july => 'Julai';

  @override
  String get august => 'Agosti';

  @override
  String get september => 'Septemba';

  @override
  String get october => 'Oktoba';

  @override
  String get november => 'Novemba';

  @override
  String get december => 'Desemba';

  @override
  String more_than_years(Object num) {
    return 'Tangu #$num miaka';
  }

  @override
  String get since_two_years => 'Tangu miaka 2';

  @override
  String get since_year => 'Tangu mwaka mmoja';

  @override
  String since_months(Object num) {
    return 'Tangu #$num miezi';
  }

  @override
  String get since_two_months => 'Tangu miezi 2';

  @override
  String get since_month => 'Tangu mwezi mmoja';

  @override
  String since_weeks(Object num) {
    return 'Tangu #$num wiki';
  }

  @override
  String get since_two_weeks => 'Tangu wiki 2';

  @override
  String get since_week => 'Tangu wiki moja';

  @override
  String since_days(Object num) {
    return 'Tangu #$num siku';
  }

  @override
  String get since_two_days => 'Tangu siku 2';

  @override
  String get since_day => 'Tangu siku moja';

  @override
  String get view_driving_events => 'Tazama Matukio ya Kuendesha';

  @override
  String get coolant_temp => 'Joto la Kipozezi';

  @override
  String get dtc_codes => 'Misimbo ya DTC';

  @override
  String get road_bump => 'Kichocheo cha Barabara';

  @override
  String get fuel_level => 'Kiwango cha Mafuta';

  @override
  String get driving_behavior_score => 'Alama ya Tabia ya Kuendesha';

  @override
  String get event_major_crashes => 'Migongano Mikubwa';

  @override
  String get event_speeding_incident => 'Matukio ya Kasi Kupita Kiasi';

  @override
  String get driver_id => 'Kitambulisho cha Dereva';

  @override
  String get more_details => 'Maelezo Zaidi';

  @override
  String get events => 'Matukio';

  @override
  String get error_email_exists => 'Barua pepe hii tayari ipo';

  @override
  String get error_wrong_password => 'Nenosiri si sahihi';

  @override
  String get error_phone_exists => 'Nambari hii ya simu tayari inatumika';

  @override
  String get error_sp_ch =>
      'Nenosiri lazima liwe na angalau herufi moja maalum';

  @override
  String get error_up => 'Nenosiri lazima liwe na angalau herufi moja kubwa';

  @override
  String get error_low => 'Nenosiri lazima liwe na angalau herufi moja ndogo';

  @override
  String get error_num => 'Nenosiri lazima liwe na angalau nambari moja';

  @override
  String get error_required => 'Sehemu hii inahitajika';

  @override
  String get error_invalid_email => 'Anwani ya barua pepe si sahihi';

  @override
  String error_password_short(Object length) {
    return 'Nenosiri lazima liwe na angalau herufi $length';
  }
}
