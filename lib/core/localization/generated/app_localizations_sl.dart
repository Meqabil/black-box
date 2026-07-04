// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Da';

  @override
  String get common_no => 'Ne';

  @override
  String get common_cancel => 'Prekliči';

  @override
  String get common_save => 'Shrani';

  @override
  String get common_save_changes => 'Shrani spremembe';

  @override
  String get common_continue => 'Nadaljuj';

  @override
  String get common_next => 'Naprej';

  @override
  String get auth_login => 'Prijava';

  @override
  String get auth_space_login => 'Prijavi se';

  @override
  String get auth_logout => 'Odjava';

  @override
  String get auth_confirm_logout => 'Ste prepričani, da se želite odjaviti?';

  @override
  String get auth_signup => 'Registracija';

  @override
  String get auth_create_account => 'Ustvari račun';

  @override
  String get auth_already_have_account => 'Že imate račun? ';

  @override
  String get auth_no_account => 'Nimate računa?';

  @override
  String get auth_forgot_password => 'Pozabljeno geslo?';

  @override
  String get auth_reset_password => 'Ponastavi geslo?';

  @override
  String get auth_change_password => 'Spremeni geslo';

  @override
  String get auth_continue => 'Z nadaljevanjem se strinjate z\n';

  @override
  String get auth_terms => 'Pogoji uporabe in Politiko zasebnosti';

  @override
  String get auth_email => 'E-pošta';

  @override
  String get auth_password => 'Geslo';

  @override
  String get auth_confirm_password => 'Potrdi geslo';

  @override
  String get auth_new_password => 'Novo geslo';

  @override
  String get auth_confirm_new_password => 'Potrdi novo geslo';

  @override
  String get auth_enter_email => 'Vnesite e-poštni naslov';

  @override
  String get auth_password_hint => 'Vnesite svoje geslo';

  @override
  String get full_name => 'Polno ime';

  @override
  String get email_hint => 'primer@gmail.com';

  @override
  String get name_hint => 'Janez Novak';

  @override
  String get required_name => 'Polno ime je obvezno';

  @override
  String get required_email => 'E-pošta je obvezna';

  @override
  String get email_end => 'E-pošta se mora končati z @gmail.com';

  @override
  String get required_password => 'Geslo je obvezno';

  @override
  String get required_confirm_password => 'Potrditev gesla je obvezna';

  @override
  String get password_do_not_match => 'Gesli se ne ujemata';

  @override
  String get min_password =>
      'Geslo mora imeti vsaj 8 znakov in vsebovati številke';

  @override
  String get send_verification_code => 'Pošlji potrditveno kodo';

  @override
  String get password_changed_successfully =>
      'Geslo je bilo uspešno spremenjeno';

  @override
  String get forget_password_title =>
      'Vnesite e-pošto, povezano z vašim računom, in poslali vam bomo varnostno PIN kodo za ponastavitev gesla.';

  @override
  String get auth_security_pin => 'Varnostna PIN koda';

  @override
  String get auth_enter_pin => 'Vnesite varnostno PIN kodo';

  @override
  String get verify => 'Preveri';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Pošlji ponovno čez $seconds s';
  }

  @override
  String get home_title => 'Domov';

  @override
  String get home_welcome => 'Zdravo, dobrodošel nazaj';

  @override
  String get home_good_morning => 'Dobro jutro';

  @override
  String get home_good_afternoon => 'Dober dan';

  @override
  String get home_good_evening => 'Dober večer';

  @override
  String get home_looks_good => 'Izgleda\ndobro';

  @override
  String get home_safety_score => 'Pregled varnostne ocene';

  @override
  String get home_total_accidents => 'Skupno število nesreč';

  @override
  String get total_active_cars => 'Skupaj aktivnih avtomobilov';

  @override
  String get total_cars => 'Skupaj avtomobilov';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% vaših avtomobilov je aktivnih';
  }

  @override
  String get car_section_title => 'Avtomobili';

  @override
  String get car_view_all => 'Poglej avtomobile';

  @override
  String get car_add => 'Dodaj avtomobil';

  @override
  String get car_edit => 'Uredi avtomobil';

  @override
  String get car_name => 'Ime avtomobila';

  @override
  String get car_plate => 'Registrska tablica';

  @override
  String get car_type => 'Tip avtomobila';

  @override
  String get car_driver_name => 'Ime voznika';

  @override
  String car_item_title(Object id) {
    return 'Avtomobil #$id';
  }

  @override
  String get tracking_live => 'Sledenje v živo';

  @override
  String get tracking_last_updates => 'Zadnje posodobitve';

  @override
  String get event_title => 'Dogodki med vožnjo';

  @override
  String get event_speeding => 'Prekoračitev hitrosti';

  @override
  String get event_hard_braking => 'Močno zaviranje';

  @override
  String get event_aggressive_turns => 'Agresivni zavoji';

  @override
  String get event_crash => 'Trčenje';

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
  String get event_severity => 'Resnost';

  @override
  String get event_severity_low => 'Nizka';

  @override
  String get event_severity_medium => 'Srednja';

  @override
  String get event_severity_high => 'Visoka';

  @override
  String get event_severity_critical => 'Kritična';

  @override
  String get event_reason => 'Razlog';

  @override
  String get event_last_speed => 'Zadnja zabeležena hitrost';

  @override
  String get notification_title => 'Obvestila';

  @override
  String get notification_today => 'Danes';

  @override
  String get notification_yesterday => 'Včeraj';

  @override
  String get notification_earlier => 'Prejšnji teden';

  @override
  String get notification_fuel_alert => 'Opozorilo o puščanju goriva!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Vozilo $car, ki ga vozi $driver, je prijavilo hiter padec ravni goriva.';
  }

  @override
  String get notification_crash_alert => 'Zaznano kritično trčenje!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Vozilo $car, ki ga vozi $driver, je prijavilo hudo trčenje.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Uredi moj profil';

  @override
  String get update_profile => 'Posodobi profil';

  @override
  String get user_name => 'Uporabniško ime';

  @override
  String get security_title => 'Varnost';

  @override
  String get change_password => 'Spremeni geslo';

  @override
  String get settings_title => 'Nastavitve';

  @override
  String get settings_notifications => 'Nastavitve obvestil';

  @override
  String get settings_general_notifications => 'Splošna obvestila';

  @override
  String get account_settings => 'Nastavitve računa';

  @override
  String get push_notification => 'Potisna obvestila';

  @override
  String get dark_mode => 'Temni način vklopljen';

  @override
  String get help_title => 'Center za pomoč';

  @override
  String get help_and_faq => 'Pomoč in Pogosta vprašanja';

  @override
  String get help_contact => 'Kontaktirajte nas';

  @override
  String get help_faq => 'Pogosta vprašanja';

  @override
  String get how_help => 'Kako vam lahko pomagamo?';

  @override
  String get on_wh_num => 'Na WhatsApp številki';

  @override
  String get language => 'Jezik';

  @override
  String get question1 => 'Kako uporabljati BlackBox?';

  @override
  String get answer1 =>
      'Namestite napravo BlackBox v svoj avtomobil, se prijavite v aplikacijo in začnite voziti. Aplikacija bo samodejno beležila in prikazovala vaše podatke o vožnji.';

  @override
  String get question2 => 'Koliko stane uporaba BlackBox-a?';

  @override
  String get answer2 =>
      'Strošek je odvisen od izbranega paketa in storitev. Za podrobnosti o cenah kontaktirajte podjetje.';

  @override
  String get question3 => 'Kako stopiti v stik s podporo?';

  @override
  String get answer3 =>
      'Podporo lahko kontaktirate preko WhatsApp-a z uradno številko podjetja ali z obiskom pisarne podjetja med delovnim časom.';

  @override
  String get question4 => 'Kako lahko ponastavim geslo, če ga pozabim?';

  @override
  String get answer4 =>
      'Uporabite možnost \'Pozabljeno geslo\' na zaslonu za prijavo in sledite navodilom za ponastavitev gesla.';

  @override
  String get question5 =>
      'Ali obstajajo ukrepi za zasebnost ali varnost podatkov?';

  @override
  String get answer5 =>
      'Da. Vaši podatki so varno shranjeni in zaščiteni ter se ne delijo brez vašega dovoljenja, razen če to zahteva zakon.';

  @override
  String get question6 => 'Ali lahko prilagodim nastavitve znotraj aplikacije?';

  @override
  String get answer6 =>
      'Da. Znotraj aplikacije lahko prilagodite razpoložljive nastavitve, kot so obvestila in preference.';

  @override
  String get question7 => 'Kako lahko izbrišem svoj račun?';

  @override
  String get answer7 =>
      'Če želite izbrisati svoj račun, kontaktirajte podjetje preko WhatsApp-a ali obiščite pisarno podjetja.';

  @override
  String get question8 => 'Kako dostopam do svoje zgodovine analiz?';

  @override
  String get answer8 =>
      'Svoje pretekle vožnje in analize vožnje si lahko ogledate v razdelku Zgodovina ali Analize v aplikaciji.';

  @override
  String get question9 => 'Ali lahko uporabljam aplikacijo brez povezave?';

  @override
  String get answer9 =>
      'Aplikacija ima omejeno funkcionalnost brez povezave. Za sinhronizacijo podatkov in dostop do vseh funkcij je potrebna internetna povezava.';

  @override
  String get terms_title => 'Pogoji in določila';

  @override
  String get terms_accept => 'Sprejmem pogoje in določila';

  @override
  String get terms_full =>
      '1. Sprejem pogojev\nZ namestitvijo ali uporabo te aplikacije se strinjate s temi pogoji in določili. Če se ne strinjate, prenehajte uporabljati aplikacijo.\n\n2. Namen aplikacije\nTa aplikacija je črna skrinjica in telematični sistem vozila, ki se uporablja za spremljanje zmogljivosti vozila in voznikovega obnašanja izključno v informativne, varnostne in analitične namene.\n\n3. Parametri podatkov, ki se zbirajo\nAplikacija lahko zbira in obdeluje podatke o vozilu in vožnji, vključno z:\n\n• Hitrostjo vozila\n• Porabo goriva in nivojem goriva\n• Pospeševanjem in zaviranjem\n• Močnim zaviranjem in nenadnim pospeševanjem\n• Ostrimi zavoji\n• Podatki o lokaciji GPS (geografska širina in dolžina)\n• Razdaljo, trajanjem in časom potovanja\n• Identifikacijskimi podatki voznika in vozila\n\nZ uporabo aplikacije izrecno soglašate z zbiranjem teh parametrov.\n\n4. Razpoložljivost storitve\nNeprekinjeno, delovanje v realnem času ali brezhibno delovanje aplikacije zaradi tehničnih omejitev ni zagotovljeno.';

  @override
  String get validation_password_mismatch => 'Gesli se ne ujemata';

  @override
  String get validation_invalid_phone => 'Neveljavna telefonska številka';

  @override
  String get validation_incorrect_pin => 'Napačna PIN koda';

  @override
  String get validation_empty_fields => 'Prosimo, izpolnite vsa polja';

  @override
  String get empty_no_cars => 'Ni najdenih avtomobilov';

  @override
  String get empty_no_notifications => 'Še ni obvestil';

  @override
  String get empty_no_events => 'Ni na voljo nobenih dogodkov';

  @override
  String get status_loading => 'Nalaganje...';

  @override
  String get status_success => 'Operacija uspešna';

  @override
  String get status_error => 'Nekaj je šlo narobe';

  @override
  String get confirm_delete_car =>
      'Ste prepričani, da želite izbrisati ta avtomobil?';

  @override
  String get confirm_reset_password =>
      'Ste prepričani, da želite ponastaviti svoje geslo?';

  @override
  String get search => 'Iskanje';

  @override
  String get search_hint => 'Išči...';

  @override
  String get search_no_results => 'Ni najdenih rezultatov';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Razvrsti';

  @override
  String get onboarding_title_1 => 'Dobrodošli';

  @override
  String get onboarding_desc_1 => 'v Black Box Manager';

  @override
  String get onboarding_title_2 => 'Oglejte si zgodbo za vašo vožnjo,';

  @override
  String get onboarding_desc_2 =>
      'Beležimo vsako pot, analiziramo vsak kilometer.';

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
  String get error_email_exists => 'Ta e-pošta že obstaja';

  @override
  String get error_wrong_password => 'Napačno geslo';

  @override
  String get error_phone_exists => 'Ta telefonska številka je že v uporabi';

  @override
  String get error_sp_ch => 'Geslo mora vsebovati vsaj en poseben znak';

  @override
  String get error_up => 'Geslo mora vsebovati vsaj eno veliko črko';

  @override
  String get error_low => 'Geslo mora vsebovati vsaj eno malo črko';

  @override
  String get error_num => 'Geslo mora vsebovati vsaj eno številko';

  @override
  String get error_required => 'To polje je obvezno';

  @override
  String get error_invalid_email => 'Neveljaven e-poštni naslov';

  @override
  String error_password_short(Object length) {
    return 'Geslo mora imeti vsaj $length znakov';
  }
}
