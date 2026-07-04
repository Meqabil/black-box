// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ano';

  @override
  String get common_no => 'Ne';

  @override
  String get common_cancel => 'Zrušit';

  @override
  String get common_save => 'Uložit';

  @override
  String get common_save_changes => 'Uložit změny';

  @override
  String get common_continue => 'Pokračovat';

  @override
  String get common_next => 'Další';

  @override
  String get auth_login => 'Přihlásit';

  @override
  String get auth_space_login => 'Přihlásit se';

  @override
  String get auth_logout => 'Odhlásit';

  @override
  String get auth_confirm_logout => 'Opravdu se chcete odhlásit?';

  @override
  String get auth_signup => 'Zaregistrovat';

  @override
  String get auth_create_account => 'Vytvořit účet';

  @override
  String get auth_already_have_account => 'Již máte účet? ';

  @override
  String get auth_no_account => 'Nemáte účet?';

  @override
  String get auth_forgot_password => 'Zapomenuté heslo?';

  @override
  String get auth_reset_password => 'Obnovit heslo?';

  @override
  String get auth_change_password => 'Změnit heslo';

  @override
  String get auth_continue => 'Pokračováním souhlasíte s\n';

  @override
  String get auth_terms =>
      'Podmínkami použití a Zásadami ochrany osobních údajů';

  @override
  String get auth_email => 'E-mail';

  @override
  String get auth_password => 'Heslo';

  @override
  String get auth_confirm_password => 'Potvrdit heslo';

  @override
  String get auth_new_password => 'Nové heslo';

  @override
  String get auth_confirm_new_password => 'Potvrdit nové heslo';

  @override
  String get auth_enter_email => 'Zadejte e-mailovou adresu';

  @override
  String get auth_password_hint => 'Zadejte své heslo';

  @override
  String get full_name => 'Celé jméno';

  @override
  String get email_hint => 'priklad@gmail.com';

  @override
  String get name_hint => 'Jan Novák';

  @override
  String get required_name => 'Celé jméno je povinné';

  @override
  String get required_email => 'E-mail je povinný';

  @override
  String get email_end => 'E-mail musí končit na @gmail.com';

  @override
  String get required_password => 'Heslo je povinné';

  @override
  String get required_confirm_password => 'Potvrzení hesla je povinné';

  @override
  String get password_do_not_match => 'Hesla se neshodují';

  @override
  String get min_password => 'Heslo musí mít alespoň 8 znaků a obsahovat čísla';

  @override
  String get send_verification_code => 'Odeslat ověřovací kód';

  @override
  String get password_changed_successfully => 'Heslo bylo úspěšně změněno';

  @override
  String get forget_password_title =>
      'Zadejte e-mail přidružený k vašemu účtu a zašleme vám bezpečnostní PIN pro obnovení hesla.';

  @override
  String get auth_security_pin => 'Bezpečnostní PIN';

  @override
  String get auth_enter_pin => 'Zadejte bezpečnostní PIN';

  @override
  String get verify => 'Ověřit';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Poslat znovu za $seconds s';
  }

  @override
  String get home_title => 'Domů';

  @override
  String get home_welcome => 'Ahoj, vítej zpět';

  @override
  String get home_good_morning => 'Dobré ráno';

  @override
  String get home_good_afternoon => 'Dobré odpoledne';

  @override
  String get home_good_evening => 'Dobrý večer';

  @override
  String get home_looks_good => 'Vypadá to\ndobře';

  @override
  String get home_safety_score => 'Přehled bezpečnostního skóre';

  @override
  String get home_total_accidents => 'Celkem nehod';

  @override
  String get total_active_cars => 'Celkem aktivních vozidel';

  @override
  String get total_cars => 'Celkem vozidel';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% vašich vozidel je aktivních';
  }

  @override
  String get car_section_title => 'Vozidla';

  @override
  String get car_view_all => 'Zobrazit vozidla';

  @override
  String get car_add => 'Přidat vozidlo';

  @override
  String get car_edit => 'Upravit vozidlo';

  @override
  String get car_name => 'Název vozidla';

  @override
  String get car_plate => 'SPZ';

  @override
  String get car_type => 'Typ vozidla';

  @override
  String get car_driver_name => 'Jméno řidiče';

  @override
  String car_item_title(Object id) {
    return 'Vozidlo #$id';
  }

  @override
  String get tracking_live => 'Živé sledování';

  @override
  String get tracking_last_updates => 'Poslední aktualizace';

  @override
  String get event_title => 'Jízdní události';

  @override
  String get event_speeding => 'Překročení rychlosti';

  @override
  String get event_hard_braking => 'Prudké brzdění';

  @override
  String get event_aggressive_turns => 'Agresivní zatáčky';

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
  String get event_severity => 'Závažnost';

  @override
  String get event_severity_low => 'Nízká';

  @override
  String get event_severity_medium => 'Střední';

  @override
  String get event_severity_high => 'Vysoká';

  @override
  String get event_severity_critical => 'Kritická';

  @override
  String get event_reason => 'Důvod';

  @override
  String get event_last_speed => 'Poslední zaznamenaná rychlost';

  @override
  String get notification_title => 'Oznámení';

  @override
  String get notification_today => 'Dnes';

  @override
  String get notification_yesterday => 'Včera';

  @override
  String get notification_earlier => 'Dříve tento týden';

  @override
  String get notification_fuel_alert => 'Varování před únikem paliva!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Vozidlo $car řízené $driver hlásí prudký pokles hladiny paliva.';
  }

  @override
  String get notification_crash_alert => 'Detekována kritická nehoda!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Vozidlo $car řízené $driver hlásí závažnou kolizi.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Upravit můj profil';

  @override
  String get update_profile => 'Aktualizovat profil';

  @override
  String get user_name => 'Uživatelské jméno';

  @override
  String get security_title => 'Zabezpečení';

  @override
  String get change_password => 'Změnit heslo';

  @override
  String get settings_title => 'Nastavení';

  @override
  String get settings_notifications => 'Nastavení oznámení';

  @override
  String get settings_general_notifications => 'Obecná oznámení';

  @override
  String get account_settings => 'Nastavení účtu';

  @override
  String get push_notification => 'Push oznámení';

  @override
  String get dark_mode => 'Tmavý režim zapnut';

  @override
  String get help_title => 'Centrum nápovědy';

  @override
  String get help_and_faq => 'Nápověda a FAQ';

  @override
  String get help_contact => 'Kontaktujte nás';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Jak vám můžeme pomoci?';

  @override
  String get on_wh_num => 'Na WhatsApp čísle';

  @override
  String get language => 'Jazyk';

  @override
  String get question1 => 'Jak používat BlackBox?';

  @override
  String get answer1 =>
      'Nainstalujte zařízení BlackBox do svého vozu, přihlaste se do aplikace a začněte řídit. Aplikace bude automaticky zaznamenávat a zobrazovat vaše jízdní údaje.';

  @override
  String get question2 => 'Kolik stojí používání BlackBox?';

  @override
  String get answer2 =>
      'Cena závisí na zvoleném tarifu a službách. Podrobnosti o cenách vám sdělí naše společnost.';

  @override
  String get question3 => 'Jak kontaktovat podporu?';

  @override
  String get answer3 =>
      'Podporu můžete kontaktovat přes WhatsApp na oficiálním čísle společnosti nebo osobní návštěvou kanceláře v pracovní době.';

  @override
  String get question4 => 'Jak mohu obnovit heslo, pokud ho zapomenu?';

  @override
  String get answer4 =>
      'Použijte možnost \'Zapomenuté heslo\' na přihlašovací obrazovce a postupujte podle pokynů k obnovení hesla.';

  @override
  String get question5 =>
      'Existují opatření na ochranu soukromí a zabezpečení dat?';

  @override
  String get answer5 =>
      'Ano. Vaše data jsou bezpečně uložena a chráněna a nejsou sdílena bez vašeho svolení, pokud to nevyžaduje zákon.';

  @override
  String get question6 => 'Mohu přizpůsobit nastavení v aplikaci?';

  @override
  String get answer6 =>
      'Ano. Můžete přizpůsobit dostupná nastavení, jako jsou oznámení a preference v aplikaci.';

  @override
  String get question7 => 'Jak mohu smazat svůj účet?';

  @override
  String get answer7 =>
      'Chcete-li smazat svůj účet, kontaktujte prosím společnost přes WhatsApp nebo navštivte kancelář společnosti.';

  @override
  String get question8 => 'Jak získám přístup k historii svých analýz?';

  @override
  String get answer8 =>
      'Své minulé cesty a jízdní analýzy můžete zobrazit v sekci Historie nebo Analýzy v aplikaci.';

  @override
  String get question9 => 'Mohu aplikaci používat offline?';

  @override
  String get answer9 =>
      'Aplikace má omezenou offline funkčnost. Pro synchronizaci dat a přístup k plným funkcím je vyžadováno internetové připojení.';

  @override
  String get terms_title => 'Obchodní podmínky';

  @override
  String get terms_accept => 'Přijímám obchodní podmínky';

  @override
  String get terms_full =>
      '1. Přijetí podmínek\nInstalací nebo používáním této aplikace souhlasíte s těmito obchodními podmínkami. Pokud nesouhlasíte, přestaňte aplikaci používat.\n\n2. Účel aplikace\nTato aplikace je palubní jednotka a telematický systém vozidla sloužící výhradně pro informační, bezpečnostní a analytické účely ke sledování výkonu vozidla a chování řidiče.\n\n3. Sběr datových parametrů\nAplikace může sbírat a zpracovávat údaje o vozidle a jízdě, včetně, ale ne výhradně:\n\n• Rychlost vozidla\n• Spotřeba paliva a hladina paliva\n• Zrychlování a zpomalování\n• Prudké brzdění a prudké zrychlování\n• Prudké zatáčení\n• Údaje o poloze GPS (zeměpisná šířka a délka)\n• Vzdálenost, doba trvání a čas cesty\n• Identifikační údaje řidiče a vozidla\n\nPoužíváním aplikace výslovně souhlasíte se sběrem těchto parametrů.\n\n4. Dostupnost služby\nKontinuální, nepřetržitý nebo bezchybný provoz aplikace není zaručen kvůli technickým omezením.';

  @override
  String get validation_password_mismatch => 'Hesla se neshodují';

  @override
  String get validation_invalid_phone => 'Neplatné telefonní číslo';

  @override
  String get validation_incorrect_pin => 'Nesprávný PIN';

  @override
  String get validation_empty_fields => 'Vyplňte prosím všechna pole';

  @override
  String get empty_no_cars => 'Nebyla nalezena žádná vozidla';

  @override
  String get empty_no_notifications => 'Zatím žádná oznámení';

  @override
  String get empty_no_events => 'Nejsou k dispozici žádné události';

  @override
  String get status_loading => 'Načítání...';

  @override
  String get status_success => 'Operace úspěšná';

  @override
  String get status_error => 'Něco se pokazilo';

  @override
  String get confirm_delete_car => 'Opravdu chcete smazat toto vozidlo?';

  @override
  String get confirm_reset_password => 'Opravdu chcete obnovit své heslo?';

  @override
  String get search => 'Hledat';

  @override
  String get search_hint => 'Hledat...';

  @override
  String get search_no_results => 'Nebyly nalezeny žádné výsledky';

  @override
  String get filter => 'Filtr';

  @override
  String get sort => 'Seřadit';

  @override
  String get onboarding_title_1 => 'Vítejte';

  @override
  String get onboarding_desc_1 => 'v aplikaci Black Box Manager';

  @override
  String get onboarding_title_2 => 'Podívejte se na příběh za vaší jízdou,';

  @override
  String get onboarding_desc_2 =>
      'Zaznamenáváme každou cestu, analyzujeme každý kilometr.';

  @override
  String get delete_car => 'Smazat auto';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Těžký náklad';

  @override
  String get current_password => 'Současné heslo';

  @override
  String get password_requirement =>
      'Musí být dlouhé alespoň 8 znaků a obsahovat jak písmena, tak číslice.';

  @override
  String get current_password_is_not_correct => 'Současné heslo není správné.';

  @override
  String get vehicle => 'Vozidlo';

  @override
  String get driven_by => 'řídí';

  @override
  String get report_fuel_level => 'hlásí rychlý pokles hladiny paliva.';

  @override
  String get report_collision_or_rollover =>
      'hlásí vážnou srážku nebo převrácení (sos).';

  @override
  String get report_overheating_or_dtc =>
      'hlásí přehřátí motoru nebo detekované DTC kódy.';

  @override
  String get unknown_driver => 'Neznámý řidič';

  @override
  String get mechanical_failure => 'Varování před mechanickou poruchou!';

  @override
  String get critical_crash => 'Detekována kritická srážka!';

  @override
  String get fuel_leak => 'Varování před únikem paliva!';

  @override
  String get today => 'Dnes';

  @override
  String get yesterday => 'Včera';

  @override
  String get day => 'den';

  @override
  String get days => 'dny';

  @override
  String get week => 'týden';

  @override
  String get weeks => 'týdny';

  @override
  String get month => 'měsíc';

  @override
  String get months => 'měsíce';

  @override
  String get year => 'rok';

  @override
  String get years => 'roky';

  @override
  String get january => 'Leden';

  @override
  String get february => 'Únor';

  @override
  String get march => 'Březen';

  @override
  String get april => 'Duben';

  @override
  String get may => 'Květen';

  @override
  String get june => 'Červen';

  @override
  String get july => 'Červenec';

  @override
  String get august => 'Srpen';

  @override
  String get september => 'Září';

  @override
  String get october => 'Říjen';

  @override
  String get november => 'Listopad';

  @override
  String get december => 'Prosinec';

  @override
  String more_than_years(Object num) {
    return 'Od #$num let';
  }

  @override
  String get since_two_years => 'Od 2 let';

  @override
  String get since_year => 'Od roku';

  @override
  String since_months(Object num) {
    return 'Od #$num měsíců';
  }

  @override
  String get since_two_months => 'Od 2 měsíců';

  @override
  String get since_month => 'Od měsíce';

  @override
  String since_weeks(Object num) {
    return 'Od #$num týdnů';
  }

  @override
  String get since_two_weeks => 'Od 2 týdnů';

  @override
  String get since_week => 'Od týdne';

  @override
  String since_days(Object num) {
    return 'Od #$num dnů';
  }

  @override
  String get since_two_days => 'Od 2 dnů';

  @override
  String get since_day => 'Od dne';

  @override
  String get view_driving_events => 'Zobrazit události řízení';

  @override
  String get coolant_temp => 'Teplota chladicí kapaliny';

  @override
  String get dtc_codes => 'DTC kódy';

  @override
  String get road_bump => 'Nerovnost vozovky';

  @override
  String get fuel_level => 'Hladina paliva';

  @override
  String get driving_behavior_score => 'Skóre chování při řízení';

  @override
  String get event_major_crashes => 'Vážné srážky';

  @override
  String get event_speeding_incident => 'Překročení rychlosti';

  @override
  String get driver_id => 'ID řidiče';

  @override
  String get more_details => 'Více podrobností';

  @override
  String get events => 'Události';

  @override
  String get error_email_exists => 'Tento e-mail již existuje';

  @override
  String get error_wrong_password => 'Nesprávné heslo';

  @override
  String get error_phone_exists => 'Toto telefonní číslo je již používáno';

  @override
  String get error_sp_ch => 'Heslo musí obsahovat alespoň jeden speciální znak';

  @override
  String get error_up => 'Heslo musí obsahovat alespoň jedno velké písmeno';

  @override
  String get error_low => 'Heslo musí obsahovat alespoň jedno malé písmeno';

  @override
  String get error_num => 'Heslo musí obsahovat alespoň jedno číslo';

  @override
  String get error_required => 'Toto pole je povinné';

  @override
  String get error_invalid_email => 'Neplatná e-mailová adresa';

  @override
  String error_password_short(Object length) {
    return 'Heslo musí mít alespoň $length znaků';
  }
}
