// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get app_title => 'BlackBox Aplikácia';

  @override
  String get common_yes => 'Áno';

  @override
  String get common_no => 'Nie';

  @override
  String get common_cancel => 'Zrušiť';

  @override
  String get common_save => 'Uložiť';

  @override
  String get common_save_changes => 'Uložiť zmeny';

  @override
  String get common_continue => 'Pokračovať';

  @override
  String get common_next => 'Ďalej';

  @override
  String get auth_login => 'Prihlásiť sa';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'Odhlásiť sa';

  @override
  String get auth_confirm_logout => 'Naozaj sa chcete odhlásiť?';

  @override
  String get auth_signup => 'Registrovať sa';

  @override
  String get auth_create_account => 'Vytvoriť účet';

  @override
  String get auth_already_have_account => 'Už máte účet? ';

  @override
  String get auth_no_account => 'Nemáte účet?';

  @override
  String get auth_forgot_password => 'Zabudli ste heslo?';

  @override
  String get auth_reset_password => 'Obnoviť heslo?';

  @override
  String get auth_change_password => 'Zmeniť heslo';

  @override
  String get auth_continue => 'Pokračovaním súhlasíte s\n';

  @override
  String get auth_terms =>
      'Podmienkami používania a Zásadami ochrany osobných údajov';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Heslo';

  @override
  String get auth_confirm_password => 'Potvrdiť heslo';

  @override
  String get auth_new_password => 'Nové heslo';

  @override
  String get auth_confirm_new_password => 'Potvrdiť nové heslo';

  @override
  String get auth_enter_email => 'Zadajte emailovú adresu';

  @override
  String get auth_password_hint => 'Zadajte svoje heslo';

  @override
  String get full_name => 'Celé meno';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'Celé meno je povinné';

  @override
  String get required_email => 'Email je povinný';

  @override
  String get email_end => 'Email musí končiť na @gmail.com';

  @override
  String get required_password => 'Heslo je povinné';

  @override
  String get required_confirm_password => 'Potvrdenie hesla je povinné';

  @override
  String get password_do_not_match => 'Heslá sa nezhodujú';

  @override
  String get min_password =>
      'Heslo musí mať najmenej 8 znakov a obsahovať čísla';

  @override
  String get send_verification_code => 'Poslať overovací kód';

  @override
  String get password_changed_successfully => 'Heslo bolo úspešne\nzmenené';

  @override
  String get forget_password_title =>
      'Zadajte email spojený s vaším účtom a pošleme vám bezpečnostný PIN na obnovenie hesla.';

  @override
  String get auth_security_pin => 'Bezpečnostný PIN';

  @override
  String get auth_enter_pin => 'Zadajte bezpečnostný PIN';

  @override
  String get verify => 'Overiť';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Poslať znova o ${seconds}s';
  }

  @override
  String get home_title => 'Domov';

  @override
  String get home_welcome => 'Ahoj, vitajte späť';

  @override
  String get home_good_morning => 'Dobré ráno';

  @override
  String get home_good_afternoon => 'Dober dan';

  @override
  String get home_good_evening => 'Dober večer';

  @override
  String get home_looks_good => 'Vyzerá\nDobre';

  @override
  String get home_safety_score => 'Prehľad bezpečnostného skóre';

  @override
  String get home_total_accidents => 'Celkový počet nehôd';

  @override
  String get total_active_cars => 'Celkový počet aktívnych áut';

  @override
  String get total_cars => 'Celkový počet áut';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% vašich áut je aktívnych';
  }

  @override
  String get car_section_title => 'Autá';

  @override
  String get car_view_all => 'Zobraziť všetky autá';

  @override
  String get car_add => 'Pridať auto';

  @override
  String get car_edit => 'Upraviť auto';

  @override
  String get car_name => 'Názov auta';

  @override
  String get car_plate => 'ŠPZ auta';

  @override
  String get car_type => 'Typ auta';

  @override
  String get car_driver_name => 'Meno vodiča';

  @override
  String car_item_title(Object id) {
    return 'Auto #$id';
  }

  @override
  String get tracking_live => 'Živé sledovanie';

  @override
  String get tracking_last_updates => 'Posledné aktualizácie';

  @override
  String get event_title => 'Jazdnné udalosti';

  @override
  String get event_speeding => 'Prekročenie rýchlosti';

  @override
  String get event_hard_braking => ' Prudké brzdenie';

  @override
  String get event_aggressive_turns => 'Agresívne zatáčanie';

  @override
  String get event_crash => 'Nehoda';

  @override
  String event_location(Object location) {
    return 'V $location';
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
  String get event_severity => 'Závažnosť';

  @override
  String get event_severity_low => 'Nízka';

  @override
  String get event_severity_medium => 'Stredná';

  @override
  String get event_severity_high => 'Vysoká';

  @override
  String get event_severity_critical => 'Kritická';

  @override
  String get event_reason => 'Dôvod';

  @override
  String get event_last_speed => 'Posledná zaznamenaná rýchlosť';

  @override
  String get notification_title => 'Notifikácie';

  @override
  String get notification_today => 'Dnes';

  @override
  String get notification_yesterday => 'Včera';

  @override
  String get notification_earlier => 'Skôr tento týždeň';

  @override
  String get notification_fuel_alert => 'Upozornenie na únik paliva!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Vozidlo $car riadené vodičom $driver hlásilo rýchly pokles hladiny paliva.';
  }

  @override
  String get notification_crash_alert => 'Zistená kritická nehoda!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Vozidlo $car riadené vodičom $driver hlásilo vážnu zrážku.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Upraviť môj profil';

  @override
  String get update_profile => 'Aktualizovať profil';

  @override
  String get user_name => 'Meno používateľa';

  @override
  String get security_title => 'Zabezpečenie';

  @override
  String get change_password => 'Zmeniť heslo';

  @override
  String get settings_title => 'Nastavenia';

  @override
  String get settings_notifications => 'Nastavenia notifikácií';

  @override
  String get settings_general_notifications => 'Všeobecné notifikácie';

  @override
  String get account_settings => 'Nastavenia účtu';

  @override
  String get push_notification => 'Push notifikácie';

  @override
  String get dark_mode => 'Tmavý režim zapnutý';

  @override
  String get help_title => 'Centrum pomoci';

  @override
  String get help_and_faq => 'Pomoc & Často kladené otázky';

  @override
  String get help_contact => 'Kontaktovať nás';

  @override
  String get help_faq => 'Často kladené otázky';

  @override
  String get how_help => 'Ako vám môžeme pomôcť?';

  @override
  String get on_wh_num => 'Na WhatsApp čísle';

  @override
  String get language => 'Jezik';

  @override
  String get question1 => 'Ako používať BlackBox?';

  @override
  String get answer1 =>
      'Nainštalujte zariadenie BlackBox do svojho auta, prihláste sa do aplikácie a začnite jazdiť. Aplikácia automaticky zaznamená a zobrazí vaše jazdné údaje.';

  @override
  String get question2 => 'Koľko stojí používanie BlackBox?';

  @override
  String get answer2 =>
      'Cena závisí od zvoleného balíčka a služieb. Pre cenové informácie kontaktujte spoločnosť.';

  @override
  String get question3 => 'Ako kontaktovať podporu?';

  @override
  String get answer3 =>
      'Môžete kontaktovať podporu cez WhatsApp na oficiálnom čísle spoločnosti alebo navštíviť kanceláriu spoločnosti počas pracovných hodín.';

  @override
  String get question4 => 'Ako obnoviť heslo, ak som ho zabudol?';

  @override
  String get answer4 =>
      'Použite možnosť „Zabudli ste heslo?“ na prihlasovacej obrazovke a postupujte podľa pokynov.';

  @override
  String get question5 => 'Sú zavedené opatrenia na ochranu súkromia a údajov?';

  @override
  String get answer5 =>
      'Áno. Vaše údaje sú bezpečne uložené a chránené a nezdieľajú sa bez vášho súhlasu, okrem prípadov vyžadovaných zákonom.';

  @override
  String get question6 => 'Môžem prispôsobiť nastavenia v aplikácii?';

  @override
  String get answer6 =>
      'Áno. Môžete prispôsobiť dostupné nastavenia, ako sú notifikácie a preferencie v aplikácii.';

  @override
  String get question7 => 'Ako môžem odstrániť svoj účet?';

  @override
  String get answer7 =>
      'Ak chcete odstrániť svoj účet, kontaktujte spoločnosť cez WhatsApp alebo navštívte jej kanceláriu.';

  @override
  String get question8 => 'Ako získam prístup k histórii analýz?';

  @override
  String get answer8 =>
      'Históriu ciest a analýzu jazdy môžete zobraziť v sekcii História alebo Analýza v aplikácii.';

  @override
  String get question9 => 'Môžem používať aplikáciu offline?';

  @override
  String get answer9 =>
      'Aplikácia má obmedzenú offline funkčnosť. Na synchronizáciu dát a prístup k plným funkciám je potrebné internetové pripojenie.';

  @override
  String get terms_title => 'Podmienky používania';

  @override
  String get terms_accept => 'Prijať podmienky používania';

  @override
  String get terms_full =>
      '1. Prijať podmienky\nInštaláciou alebo používaním tejto aplikácie súhlasíte s týmito Podmienkami používania. Ak nesúhlasíte, prestaňte aplikáciu používať.\n\n2. Účel aplikácie\nTáto aplikácia je systém čiernej skrinky vozidla a telematiky, ktorý slúži na monitorovanie výkonu vozidla a správania pri jazde výlučne na informačné, bezpečnostné a analytické účely.\n\n3. Zberané údaje\nAplikácia môže zhromažďovať a spracovávať údaje o vozidle a jazde, vrátane:\n\n• Rýchlosť vozidla\n• Spotreba a hladina paliva\n• Zrýchlenie a spomalenie\n• Prudké brzdenie a rýchle zrýchlenie\n• Prudké zákruty\n• GPS poloha (zemepisná šírka a dĺžka)\n• Vzdialenosť, trvanie a čas cesty\n• Identifikačné údaje vodiča a vozidla\n\nPoužívaním aplikácie výslovne súhlasíte so zberom týchto parametrov.\n\n4. Dostupnosť služby\nZ dôvodu technických obmedzení nie je zaručený nepretržitý, reálny čas alebo bezchybný chod aplikácie.';

  @override
  String get validation_password_mismatch => 'Heslá sa nezhodujú';

  @override
  String get validation_invalid_phone => 'Neplatné telefónne číslo';

  @override
  String get validation_incorrect_pin => 'Nesprávny PIN';

  @override
  String get validation_empty_fields => 'Vyplňte prosím všetky polia';

  @override
  String get empty_no_cars => 'Nenašli sa žiadne autá';

  @override
  String get empty_no_notifications => 'Zatiaľ žiadne notifikácie';

  @override
  String get empty_no_events => 'Žiadne udalosti nie sú k dispozícii';

  @override
  String get status_loading => 'Načítava sa...';

  @override
  String get status_success => 'Operácia bola úspešná';

  @override
  String get status_error => 'Niečo sa pokazilo';

  @override
  String get confirm_delete_car => 'Naozaj chcete odstrániť toto auto?';

  @override
  String get confirm_reset_password => 'Naozaj chcete obnoviť svoje heslo?';

  @override
  String get search => 'Iskanje';

  @override
  String get search_hint => 'Hľadať...';

  @override
  String get search_no_results => 'Nenašli sa žiadne výsledky';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Zoradiť';

  @override
  String get onboarding_title_1 => 'Vitajte';

  @override
  String get onboarding_desc_1 => 'v Black Box Manager';

  @override
  String get onboarding_title_2 => 'Pozrite sa na príbeh za vašou jazdou,';

  @override
  String get onboarding_desc_2 =>
      'Zaznamenávame každú cestu, analyzujeme každý kilometer.';

  @override
  String get delete_car => 'Izbriši avto';

  @override
  String get sedan => 'Limuzina';

  @override
  String get heavy_duty => 'Težko tovorno vozilo';

  @override
  String get current_password => 'Trenutno geslo';

  @override
  String get password_requirement =>
      'Mora biti dolgo vsaj 8 znakov in vsebovati črke in številke.';

  @override
  String get current_password_is_not_correct => 'Trenutno geslo ni pravilno.';

  @override
  String get vehicle => 'Vozilo';

  @override
  String get driven_by => 'vozi';

  @override
  String get report_fuel_level => 'poroča o hitrem padcu ravni goriva.';

  @override
  String get report_collision_or_rollover =>
      'poroča o hudem trčenju ali prevrnitvi (sos).';

  @override
  String get report_overheating_or_dtc =>
      'poroča o pregrevanju motorja ali zaznanih DTC kodah.';

  @override
  String get unknown_driver => 'Neznan voznik';

  @override
  String get mechanical_failure => 'Opozorilo o mehanski okvari!';

  @override
  String get critical_crash => 'Zaznano kritično trčenje!';

  @override
  String get fuel_leak => 'Opozorilo o puščanju goriva!';

  @override
  String get today => 'Danes';

  @override
  String get yesterday => 'Včeraj';

  @override
  String get day => 'dan';

  @override
  String get days => 'dni';

  @override
  String get week => 'teden';

  @override
  String get weeks => 'tednov';

  @override
  String get month => 'mesec';

  @override
  String get months => 'mesecev';

  @override
  String get year => 'leto';

  @override
  String get years => 'let';

  @override
  String get january => 'Januar';

  @override
  String get february => 'Februar';

  @override
  String get march => 'Marec';

  @override
  String get april => 'April';

  @override
  String get may => 'Maj';

  @override
  String get june => 'Junij';

  @override
  String get july => 'Julij';

  @override
  String get august => 'Avgust';

  @override
  String get september => 'September';

  @override
  String get october => 'Oktober';

  @override
  String get november => 'November';

  @override
  String get december => 'December';

  @override
  String more_than_years(Object num) {
    return 'Že #$num let';
  }

  @override
  String get since_two_years => 'Že 2 leti';

  @override
  String get since_year => 'Že eno leto';

  @override
  String since_months(Object num) {
    return 'Že #$num mesecev';
  }

  @override
  String get since_two_months => 'Že 2 meseca';

  @override
  String get since_month => 'Že en mesec';

  @override
  String since_weeks(Object num) {
    return 'Že #$num tednov';
  }

  @override
  String get since_two_weeks => 'Že 2 tedna';

  @override
  String get since_week => 'Že en teden';

  @override
  String since_days(Object num) {
    return 'Že #$num dni';
  }

  @override
  String get since_two_days => 'Že 2 dni';

  @override
  String get since_day => 'Že en dan';

  @override
  String get view_driving_events => 'Ogled dogodkov vožnje';

  @override
  String get coolant_temp => 'Temperatura hladilne tekočine';

  @override
  String get dtc_codes => 'DTC kode';

  @override
  String get road_bump => 'Cestni udarec';

  @override
  String get fuel_level => 'Raven goriva';

  @override
  String get driving_behavior_score => 'Ocena vedenja pri vožnji';

  @override
  String get event_major_crashes => 'Huda trčenja';

  @override
  String get event_speeding_incident => 'Dogodki prehitre vožnje';

  @override
  String get driver_id => 'ID voznika';

  @override
  String get more_details => 'Več podrobnosti';

  @override
  String get events => 'Dogodki';

  @override
  String get error_email_exists => 'Tento email už existuje';

  @override
  String get error_wrong_password => 'Nesprávne heslo';

  @override
  String get error_phone_exists => 'Toto telefónne číslo sa už používa';

  @override
  String get error_sp_ch => 'Heslo musí obsahovať aspoň jeden špeciálny znak';

  @override
  String get error_up => 'Heslo musí obsahovať aspoň jedno veľké písmeno';

  @override
  String get error_low => 'Heslo musí obsahovať aspoň jedno malé písmeno';

  @override
  String get error_num => 'Heslo musí obsahovať aspoň jedno číslo';

  @override
  String get error_required => 'Toto pole je povinné';

  @override
  String get error_invalid_email => 'Neplatná emailová adresa';

  @override
  String error_password_short(Object length) {
    return 'Heslo musí mať najmenej $length znakov';
  }
}
