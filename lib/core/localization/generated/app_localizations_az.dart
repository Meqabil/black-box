// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get app_title => 'BlackBox Tətbiqi';

  @override
  String get common_yes => 'Bəli';

  @override
  String get common_no => 'Xeyr';

  @override
  String get common_cancel => 'Ləğv et';

  @override
  String get common_save => 'Yadda saxla';

  @override
  String get common_save_changes => 'Dəyişiklikləri yadda saxla';

  @override
  String get common_continue => 'Davam et';

  @override
  String get common_next => 'Növbəti';

  @override
  String get auth_login => 'Daxil ol';

  @override
  String get auth_space_login => 'Daxil ol';

  @override
  String get auth_logout => 'Çıxış';

  @override
  String get auth_confirm_logout => 'Çıxış etmək istədiyinizdən əminsiniz?';

  @override
  String get auth_signup => 'Qeydiyyat';

  @override
  String get auth_create_account => 'Hesab yarat';

  @override
  String get auth_already_have_account => 'Artıq hesabınız var? ';

  @override
  String get auth_no_account => 'Hesabınız yoxdur?';

  @override
  String get auth_forgot_password => 'Şifrənizi unutmusunuz?';

  @override
  String get auth_reset_password => 'Şifrəni sıfırla?';

  @override
  String get auth_change_password => 'Şifrəni dəyiş';

  @override
  String get auth_continue => 'Davam etməklə, siz\n';

  @override
  String get auth_terms =>
      'İstifadə Şərtləri və Gizlilik Siyasətini qəbul edirsiniz';

  @override
  String get auth_email => 'E-poçt';

  @override
  String get auth_password => 'Şifrə';

  @override
  String get auth_confirm_password => 'Şifrəni təsdiq et';

  @override
  String get auth_new_password => 'Yeni şifrə';

  @override
  String get auth_confirm_new_password => 'Yeni şifrəni təsdiq et';

  @override
  String get auth_enter_email => 'E-poçt ünvanını daxil edin';

  @override
  String get auth_password_hint => 'Şifrənizi daxil edin';

  @override
  String get full_name => 'Tam ad';

  @override
  String get email_hint => 'nümunə@gmail.com';

  @override
  String get name_hint => 'Asif Rzayev';

  @override
  String get required_name => 'Tam ad tələb olunur';

  @override
  String get required_email => 'E-poçt tələb olunur';

  @override
  String get email_end => 'E-poçt @gmail.com ilə bitməlidir';

  @override
  String get required_password => 'Şifrə tələb olunur';

  @override
  String get required_confirm_password => 'Şifrənin təsdiqi tələb olunur';

  @override
  String get password_do_not_match => 'Şifrələr uyğun gəlmir';

  @override
  String get min_password =>
      'Şifrə ən azı 8 simvol olmalı və rəqəmlər ehtiva etməlidir';

  @override
  String get send_verification_code => 'Təsdiq kodunu göndər';

  @override
  String get password_changed_successfully => 'Şifrə uğurla dəyişdirildi';

  @override
  String get forget_password_title =>
      'Hesabınızla əlaqəli e-poçtu daxil edin və şifrənizi sıfırlamaq üçün sizə təhlükəsizlik PIN-i göndərəcəyik.';

  @override
  String get auth_security_pin => 'Təhlükəsizlik PIN-i';

  @override
  String get auth_enter_pin => 'Təhlükəsizlik PIN-ni daxil edin';

  @override
  String get verify => 'Təsdiq et';

  @override
  String auth_resend_pin(Object seconds) {
    return '$seconds saniyə sonra yenidən göndər';
  }

  @override
  String get home_title => 'Əsas səhifə';

  @override
  String get home_welcome => 'Salam, xoş gəlmisiniz';

  @override
  String get home_good_morning => 'Sabahınız xeyir';

  @override
  String get home_good_afternoon => 'Günortanız Xeyir';

  @override
  String get home_good_evening => 'Axşamınız Xeyir';

  @override
  String get home_looks_good => 'Yaxşı\ngörünür';

  @override
  String get home_safety_score => 'Təhlükəsizlik balı icmalı';

  @override
  String get home_total_accidents => 'Ümumi qəzalar';

  @override
  String get total_active_cars => 'Ümumi aktiv avtomobillər';

  @override
  String get total_cars => 'Ümumi avtomobillər';

  @override
  String home_active_cars(Object percentage) {
    return 'Avtomobillərinizin $percentage%-i aktivdir';
  }

  @override
  String get car_section_title => 'Avtomobillər';

  @override
  String get car_view_all => 'Avtomobillərə bax';

  @override
  String get car_add => 'Avtomobil əlavə et';

  @override
  String get car_edit => 'Avtomobili redaktə et';

  @override
  String get car_name => 'Avtomobilin adı';

  @override
  String get car_plate => 'Avtomobilin nömrə nişanı';

  @override
  String get car_type => 'Avtomobilin tipi';

  @override
  String get car_driver_name => 'Sürücünün adı';

  @override
  String car_item_title(Object id) {
    return 'Avtomobil #$id';
  }

  @override
  String get tracking_live => 'Canlı izləmə';

  @override
  String get tracking_last_updates => 'Son yeniləmələr';

  @override
  String get event_title => 'Sürücülük hadisələri';

  @override
  String get event_speeding => 'Sürət həddini aşma';

  @override
  String get event_hard_braking => 'Kəskin əyləc';

  @override
  String get event_aggressive_turns => 'Aqressiv dönüşlər';

  @override
  String get event_crash => 'Qəza';

  @override
  String event_location(Object location) {
    return '$location daxilində';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed km/saat';
  }

  @override
  String get event_severity => 'Şiddət dərəcəsi';

  @override
  String get event_severity_low => 'Aşağı';

  @override
  String get event_severity_medium => 'Orta';

  @override
  String get event_severity_high => 'Yüksək';

  @override
  String get event_severity_critical => 'Kritik';

  @override
  String get event_reason => 'Səbəb';

  @override
  String get event_last_speed => 'Son qeydə alınan sürət';

  @override
  String get notification_title => 'Bildirişlər';

  @override
  String get notification_today => 'Bu gün';

  @override
  String get notification_yesterday => 'Dünən';

  @override
  String get notification_earlier => 'Bu həftə əvvəl';

  @override
  String get notification_fuel_alert => 'Yanacaq sızması xəbərdarlığı!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return '$driver tərəfindən idarə olunan $car avtomobili yanacaq səviyyəsində sürətli bir düşüş barədə məlumat verdi.';
  }

  @override
  String get notification_crash_alert => 'Kritik qəza aşkar edildi!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return '$driver tərəfindən idarə olunan $car avtomobili ciddi toqquşma barədə məlumat verdi.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profilimi redaktə et';

  @override
  String get update_profile => 'Profili yenilə';

  @override
  String get user_name => 'İstifadəçi adı';

  @override
  String get security_title => 'Təhlükəsizlik';

  @override
  String get change_password => 'Şifrəni dəyiş';

  @override
  String get settings_title => 'Parametrlər';

  @override
  String get settings_notifications => 'Bildiriş parametrləri';

  @override
  String get settings_general_notifications => 'Ümumi bildiriş';

  @override
  String get account_settings => 'Hesab parametrləri';

  @override
  String get push_notification => 'Push bildirişlər';

  @override
  String get dark_mode => 'Qaranlıq rejim aktivdir';

  @override
  String get help_title => 'Yardım mərkəzi';

  @override
  String get help_and_faq => 'Yardım və FAQ';

  @override
  String get help_contact => 'Bizimlə əlaqə';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Sizə necə kömək edə bilərik?';

  @override
  String get on_wh_num => 'WhatsApp nömrəsində';

  @override
  String get language => 'Dil';

  @override
  String get question1 => 'BlackBox-dan necə istifadə etməli?';

  @override
  String get answer1 =>
      'BlackBox cihazını avtomobilinizdə quraşdırın, tətbiqə daxil olun və sürməyə başlayın. Tətbiq avtomatik olaraq sürücülük məlumatlarınızı qeyd edəcək və göstərəcək.';

  @override
  String get question2 => 'BlackBox-dan istifadə nə qədər başa gəlir?';

  @override
  String get answer2 =>
      'Qiymət seçilmiş plan və xidmətlərdən asılıdır. Qiymət məlumatı üçün şirkətlə əlaqə saxlayın.';

  @override
  String get question3 => 'Dəstək ilə necə əlaqə saxlamalı?';

  @override
  String get answer3 =>
      'WhatsApp vasitəsilə şirkətin rəsmi nömrəsini istifadə edərək və ya iş saatlarında şirkətin ofisinə baş çəkərək dəstək ilə əlaqə saxlaya bilərsiniz.';

  @override
  String get question4 => 'Şifrəmi unutsam, onu necə sıfırlaya bilərəm?';

  @override
  String get answer4 =>
      'Giriş ekranındakı \'Şifrənizi unutmusunuz?\' seçimindən istifadə edin və şifrənizi sıfırlamaq üçün təlimatlara əməl edin.';

  @override
  String get question5 =>
      'Məxfilik və ya məlumat təhlükəsizliyi tədbirləri varmı?';

  @override
  String get answer5 =>
      'Bəli. Məlumatlarınız təhlükəsiz şəkildə saxlanılır və qorunur və qanun tələb etmədikcə icazəniz olmadan paylaşılmır.';

  @override
  String get question6 =>
      'Tətbiq daxilində parametrləri fərdiləşdirə bilərəmmi?';

  @override
  String get answer6 =>
      'Bəli. Bildirişlər və üstünlüklər kimi mövcud parametrləri tətbiq daxilində fərdiləşdirə bilərsiniz.';

  @override
  String get question7 => 'Hesabımı necə silə bilərəm?';

  @override
  String get answer7 =>
      'Hesabınızı silmək üçün WhatsApp vasitəsilə şirkətlə əlaqə saxlayın və ya şirkətin ofisinə müraciət edin.';

  @override
  String get question8 => 'Analiz tarixçəmə necə daxil ola bilərəm?';

  @override
  String get answer8 =>
      'Keçmiş səfərlərinizi və sürücülük analizlərinizi tətbiqin \'Tarixçə\' və ya \'Analiz\' bölməsində görə bilərsiniz.';

  @override
  String get question9 => 'Tətbiqi oflayn istifadə edə bilərəmmi?';

  @override
  String get answer9 =>
      'Tətbiq məhdud oflayn funksionallığa malikdir. Məlumatları sinxronizasiya etmək və tam funksiyalara daxil olmaq üçün internet bağlantısı tələb olunur.';

  @override
  String get terms_title => 'Şərtlər və qaydalar';

  @override
  String get terms_accept => 'Şərtlər və qaydaları qəbul edirəm';

  @override
  String get terms_full =>
      '1. Şərtlərin qəbulu\nBu tətbiqi quraşdırmaqla və ya istifadə etməklə, siz bu Şərtlər və Qaydaları qəbul edirsiniz. Əgər razı deyilsinizsə, tətbiqdən istifadəni dayandırın.\n\n2. Tətbiqin məqsədi\nBu tətbiq yalnız məlumat, təhlükəsizlik və analitik məqsədlər üçün avtomobilin performansını və sürücülük davranışını izləmək üçün istifadə edilən avtomobil qara qutusu və telematika sistemidir.\n\n3. Toplanan məlumat parametrləri\nTətbiq aşağıdakılar daxil olmaqla lakin bununla məhdudlaşmamaqla avtomobil və sürücülük məlumatlarını toplaya və emal edə bilər:\n\n• Avtomobilin sürəti\n• Yanacaq sərfiyyatı və yanacaq səviyyəsi\n• Sürətlənmə və yavaşlama\n• Kəskin əyləc və sürətli sürətlənmə hadisələri\n• Kəskin dönüşlər\n• GPS mövqe məlumatları (en və uzunluq)\n• Səfər məsafəsi, müddəti və vaxtı\n• Sürücü və avtomobil identifikasiya məlumatları\n\nTətbiqdən istifadə etməklə, siz bu parametrlərin toplanmasına açıq şəkildə razılıq verirsiniz.\n\n4. Xidmətin mövcudluğu\nTexniki məhdudiyyətlər səbəbindən tətbiqin fasiləsiz, real vaxt rejimində və ya səhvsiz işləməsi təmin edilmir.';

  @override
  String get validation_password_mismatch => 'Şifrələr uyğun gəlmir';

  @override
  String get validation_invalid_phone => 'Yanlış telefon nömrəsi';

  @override
  String get validation_incorrect_pin => 'Yanlış PIN';

  @override
  String get validation_empty_fields => 'Xahiş edirik bütün sahələri doldurun';

  @override
  String get empty_no_cars => 'Heç bir avtomobil tapılmadı';

  @override
  String get empty_no_notifications => 'Hələ bildiriş yoxdur';

  @override
  String get empty_no_events => 'Heç bir hadisə mövcud deyil';

  @override
  String get status_loading => 'Yüklənir...';

  @override
  String get status_success => 'Əməliyyat uğurlu oldu';

  @override
  String get status_error => 'Nəsə səhv oldu';

  @override
  String get confirm_delete_car =>
      'Bu avtomobili silmək istədiyinizdən əminsiniz?';

  @override
  String get confirm_reset_password =>
      'Şifrənizi sıfırlamaq istədiyinizdən əminsiniz?';

  @override
  String get search => 'Axtar';

  @override
  String get search_hint => 'Axtar...';

  @override
  String get search_no_results => 'Heç bir nəticə tapılmadı';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Sırala';

  @override
  String get onboarding_title_1 => 'Xoş gəlmisiniz';

  @override
  String get onboarding_desc_1 => 'Black Box Manager tətbiqinə';

  @override
  String get onboarding_title_2 => 'Sürüşünüzün arxasındakı hekayəni görün,';

  @override
  String get onboarding_desc_2 =>
      'Hər səfəri qeyd edirik, hər kilometri analiz edirik.';

  @override
  String get delete_car => 'Maşını Sil';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Ağır Yük';

  @override
  String get current_password => 'Cari Şifrə';

  @override
  String get password_requirement =>
      'Ən azı 8 simvol uzunluğunda olmalı və həm hərfləri, həm də rəqəmləri ehtiva etməlidir.';

  @override
  String get current_password_is_not_correct => 'Cari şifrə düzgün deyil.';

  @override
  String get vehicle => 'Nəqliyyat Vasitəsi';

  @override
  String get driven_by => 'tərəfindən idarə olunur';

  @override
  String get report_fuel_level =>
      'yanacaq səviyyəsində sürətli bir düşmə aşkar edildi.';

  @override
  String get report_collision_or_rollover =>
      'şiddətli toqquşma və ya aşma (sos) bildirdi.';

  @override
  String get report_overheating_or_dtc =>
      'mühərrikin həddindən artıq istiləşməsi və ya DTC kodları aşkar edildi.';

  @override
  String get unknown_driver => 'Naməlum Sürücü';

  @override
  String get mechanical_failure => 'Mexanik Arıza Xəbərdarlığı!';

  @override
  String get critical_crash => 'Kritik toqquşma aşkar edildi!';

  @override
  String get fuel_leak => 'Yanacaq Sızması Xəbərdarlığı!';

  @override
  String get today => 'Bu Gün';

  @override
  String get yesterday => 'Dünən';

  @override
  String get day => 'gün';

  @override
  String get days => 'gün';

  @override
  String get week => 'həftə';

  @override
  String get weeks => 'həftə';

  @override
  String get month => 'ay';

  @override
  String get months => 'ay';

  @override
  String get year => 'il';

  @override
  String get years => 'il';

  @override
  String get january => 'Yanvar';

  @override
  String get february => 'Fevral';

  @override
  String get march => 'Mart';

  @override
  String get april => 'Aprel';

  @override
  String get may => 'May';

  @override
  String get june => 'İyun';

  @override
  String get july => 'İyul';

  @override
  String get august => 'Avqust';

  @override
  String get september => 'Sentyabr';

  @override
  String get october => 'Oktyabr';

  @override
  String get november => 'Noyabr';

  @override
  String get december => 'Dekabr';

  @override
  String more_than_years(Object num) {
    return '#$num İldır';
  }

  @override
  String get since_two_years => '2 İldır';

  @override
  String get since_year => 'Bir ildır';

  @override
  String since_months(Object num) {
    return '#$num Aydır';
  }

  @override
  String get since_two_months => '2 Aydır';

  @override
  String get since_month => 'Bir aydır';

  @override
  String since_weeks(Object num) {
    return '#$num Həftədir';
  }

  @override
  String get since_two_weeks => '2 Həftədir';

  @override
  String get since_week => 'Bir həftədir';

  @override
  String since_days(Object num) {
    return '#$num Gündür';
  }

  @override
  String get since_two_days => '2 Gündür';

  @override
  String get since_day => 'Bir gündür';

  @override
  String get view_driving_events => 'Sürüş Hadisələrinə Bax';

  @override
  String get coolant_temp => 'Soyuducu Temperaturu';

  @override
  String get dtc_codes => 'DTC Kodları';

  @override
  String get road_bump => 'Yol Çalası';

  @override
  String get fuel_level => 'Yanacaq Səviyyəsi';

  @override
  String get driving_behavior_score => 'Sürüş Davranış Balı';

  @override
  String get event_major_crashes => 'Böyük Toqquşmalar';

  @override
  String get event_speeding_incident => 'Sürət Həddini Aşma Hadisələri';

  @override
  String get driver_id => 'Sürücü ID-si';

  @override
  String get more_details => 'Ətraflı Məlumat';

  @override
  String get events => 'Hadisələr';

  @override
  String get error_email_exists => 'Bu e-poçt artıq mövcuddur';

  @override
  String get error_wrong_password => 'Yanlış şifrə';

  @override
  String get error_phone_exists => 'Bu telefon nömrəsi artıq istifadə olunur';

  @override
  String get error_sp_ch => 'Şifrə ən azı bir xüsusi simvol ehtiva etməlidir';

  @override
  String get error_up => 'Şifrə ən azı bir böyük hərf ehtiva etməlidir';

  @override
  String get error_low => 'Şifrə ən azı bir kiçik hərf ehtiva etməlidir';

  @override
  String get error_num => 'Şifrə ən azı bir rəqəm ehtiva etməlidir';

  @override
  String get error_required => 'Bu sahə tələb olunur';

  @override
  String get error_invalid_email => 'Yanlış e-poçt ünvanı';

  @override
  String error_password_short(Object length) {
    return 'Şifrə ən azı $length simvol olmalıdır';
  }
}
