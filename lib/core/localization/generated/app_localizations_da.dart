// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ja';

  @override
  String get common_no => 'Nej';

  @override
  String get common_cancel => 'Annuller';

  @override
  String get common_save => 'Gem';

  @override
  String get common_save_changes => 'Gem Ændringer';

  @override
  String get common_continue => 'Fortsæt';

  @override
  String get common_next => 'Næste';

  @override
  String get auth_login => 'Log ind';

  @override
  String get auth_space_login => 'Log ind';

  @override
  String get auth_logout => 'Log ud';

  @override
  String get auth_confirm_logout => 'Er du sikker på, at du vil logge ud?';

  @override
  String get auth_signup => 'Tilmeld dig';

  @override
  String get auth_create_account => 'Opret Konto';

  @override
  String get auth_already_have_account => 'Har du allerede en konto? ';

  @override
  String get auth_no_account => 'Har du ikke en konto?';

  @override
  String get auth_forgot_password => 'Glemt Adgangskode?';

  @override
  String get auth_reset_password => 'Nulstil Adgangskode?';

  @override
  String get auth_change_password => 'Skift Adgangskode';

  @override
  String get auth_continue => 'Ved at fortsætte accepterer du\n';

  @override
  String get auth_terms => 'Vilkår for Brug og Privatlivspolitik';

  @override
  String get auth_email => 'E-mail';

  @override
  String get auth_password => 'Adgangskode';

  @override
  String get auth_confirm_password => 'Bekræft Adgangskode';

  @override
  String get auth_new_password => 'Ny Adgangskode';

  @override
  String get auth_confirm_new_password => 'Bekræft Ny Adgangskode';

  @override
  String get auth_enter_email => 'Indtast e-mailadresse';

  @override
  String get auth_password_hint => 'Indtast din adgangskode';

  @override
  String get full_name => 'Fuldt Navn';

  @override
  String get email_hint => 'eksempel@gmail.com';

  @override
  String get name_hint => 'Lars Nielsen';

  @override
  String get required_name => 'Fuldt navn er påkrævet';

  @override
  String get required_email => 'E-mail er påkrævet';

  @override
  String get email_end => 'E-mail skal slutte med @gmail.com';

  @override
  String get required_password => 'Adgangskode er påkrævet';

  @override
  String get required_confirm_password =>
      'Bekræftelse af adgangskode er påkrævet';

  @override
  String get password_do_not_match => 'Adgangskoderne stemmer ikke overens';

  @override
  String get min_password =>
      'Adgangskoden skal have mindst 8 tegn og indeholde tal';

  @override
  String get send_verification_code => 'Send Bekræftelseskode';

  @override
  String get password_changed_successfully => 'Adgangskoden er\nÆndret';

  @override
  String get forget_password_title =>
      'Indtast den e-mail, der er knyttet til din konto, og vi sender dig en sikkerheds-PIN til nulstilling af adgangskode.';

  @override
  String get auth_security_pin => 'Sikkerheds-PIN';

  @override
  String get auth_enter_pin => 'Indtast sikkerheds-PIN';

  @override
  String get verify => 'Bekræft';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Send igen om ${seconds}s';
  }

  @override
  String get home_title => 'Hjem';

  @override
  String get home_welcome => 'Hej, Velkommen Tilbage';

  @override
  String get home_good_morning => 'God Morgen';

  @override
  String get home_good_afternoon => 'God eftermiddag';

  @override
  String get home_good_evening => 'God aften';

  @override
  String get home_looks_good => 'Ser\nGodt Ud';

  @override
  String get home_safety_score => 'Oversigt over Sikkerhedspoint';

  @override
  String get home_total_accidents => 'Samlet Antal Ulykker';

  @override
  String get total_active_cars => 'Samlet Aktive Biler';

  @override
  String get total_cars => 'Samlet Biler';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% af dine biler er aktive';
  }

  @override
  String get car_section_title => 'Biler';

  @override
  String get car_view_all => 'Vis Biler';

  @override
  String get car_add => 'Tilføj Bil';

  @override
  String get car_edit => 'Rediger Bil';

  @override
  String get car_name => 'Bilnavn';

  @override
  String get car_plate => 'Nummerplade';

  @override
  String get car_type => 'Biltype';

  @override
  String get car_driver_name => 'Chaufførens Navn';

  @override
  String car_item_title(Object id) {
    return 'Bil #$id';
  }

  @override
  String get tracking_live => 'Live-sporing';

  @override
  String get tracking_last_updates => 'Seneste Opdateringer';

  @override
  String get event_title => 'Kørehændelser';

  @override
  String get event_speeding => 'Hastighedsovertrædelse';

  @override
  String get event_hard_braking => 'Hård Opbremsning';

  @override
  String get event_aggressive_turns => 'Aggressive Sving';

  @override
  String get event_crash => 'Ulykke';

  @override
  String event_location(Object location) {
    return 'I $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed km/t';
  }

  @override
  String get event_severity => 'Alvorlighed';

  @override
  String get event_severity_low => 'Lav';

  @override
  String get event_severity_medium => 'Middel';

  @override
  String get event_severity_high => 'Høj';

  @override
  String get event_severity_critical => 'Kritisk';

  @override
  String get event_reason => 'Årsag';

  @override
  String get event_last_speed => 'Sidst Registrerede Hastighed';

  @override
  String get notification_title => 'Notifikationer';

  @override
  String get notification_today => 'I dag';

  @override
  String get notification_yesterday => 'I går';

  @override
  String get notification_earlier => 'Tidligere Denne Uge';

  @override
  String get notification_fuel_alert => 'Brændstoflek Advarsel!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Køretøj $car kørt af $driver rapporterede et hurtigt fald i brændstofniveauet.';
  }

  @override
  String get notification_crash_alert => 'Kritisk kollision registreret!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Køretøj $car kørt af $driver rapporterede en alvorlig kollision.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Rediger Min Profil';

  @override
  String get update_profile => 'Opdater Profil';

  @override
  String get user_name => 'Brugernavn';

  @override
  String get security_title => 'Sikkerhed';

  @override
  String get change_password => 'Skift Adgangskode';

  @override
  String get settings_title => 'Indstillinger';

  @override
  String get settings_notifications => 'Notifikationsindstillinger';

  @override
  String get settings_general_notifications => 'Generel Notifikation';

  @override
  String get account_settings => 'Kontoindstillinger';

  @override
  String get push_notification => 'Push-notifikationer';

  @override
  String get dark_mode => 'Mørk Tilstand Til';

  @override
  String get help_title => 'Hjælpecenter';

  @override
  String get help_and_faq => 'Hjælp & FAQ';

  @override
  String get help_contact => 'Kontakt Os';

  @override
  String get help_faq => 'Ofte Stillede Spørgsmål';

  @override
  String get how_help => 'Hvordan Kan Vi Hjælpe Dig?';

  @override
  String get on_wh_num => 'På WhatsApp-nummer';

  @override
  String get language => 'Sprog';

  @override
  String get question1 => 'Hvordan bruger jeg BlackBox?';

  @override
  String get answer1 =>
      'Installer BlackBox-enheden i din bil, log ind på appen og begynd at køre. Appen registrerer og viser automatisk dine køredata.';

  @override
  String get question2 => 'Hvad koster det at bruge BlackBox?';

  @override
  String get answer2 =>
      'Prisen afhænger af det valgte abonnement og tjenester. Kontakt virksomheden for prisoplysninger.';

  @override
  String get question3 => 'Hvordan kontakter jeg support?';

  @override
  String get answer3 =>
      'Du kan kontakte support via WhatsApp med virksomhedens officielle nummer eller besøge virksomhedskontoret i åbningstiden.';

  @override
  String get question4 =>
      'Hvordan kan jeg nulstille min adgangskode, hvis jeg glemmer den?';

  @override
  String get answer4 =>
      'Brug indstillingen \'Glemt adgangskode\' på loginskærmen og følg instruktionerne for at nulstille din adgangskode.';

  @override
  String get question5 =>
      'Er der privatlivs- eller datasikkerhedsforanstaltninger?';

  @override
  String get answer5 =>
      'Ja. Dine data opbevares og beskyttes sikkert og deles ikke uden din tilladelse, medmindre det er påkrævet ved lov.';

  @override
  String get question6 => 'Kan jeg tilpasse indstillinger i appen?';

  @override
  String get answer6 =>
      'Ja. Du kan tilpasse tilgængelige indstillinger som notifikationer og præferencer i appen.';

  @override
  String get question7 => 'Hvordan kan jeg slette min konto?';

  @override
  String get answer7 =>
      'For at slette din konto skal du kontakte virksomheden via WhatsApp eller besøge virksomhedskontoret.';

  @override
  String get question8 => 'Hvordan får jeg adgang til min analysehistorik?';

  @override
  String get answer8 =>
      'Du kan se dine tidligere ture og køreanalyser i afsnittet Historik eller Analyser i appen.';

  @override
  String get question9 => 'Kan jeg bruge appen offline?';

  @override
  String get answer9 =>
      'Appen har begrænset offline-funktionalitet. Der kræves en internetforbindelse for at synkronisere data og få adgang til alle funktioner.';

  @override
  String get terms_title => 'Vilkår og Betingelser';

  @override
  String get terms_accept => 'Accepter vilkår og betingelser';

  @override
  String get terms_full =>
      '1. Accept af Vilkår\nVed at installere eller bruge denne app accepterer du disse Vilkår og Betingelser. Hvis du ikke accepterer, bedes du ophøre med at bruge appen.\n\n2. Appens Formål\nDenne app er et køretøjs-blackbox og telematikssystem, der bruges til at overvåge køretøjets ydeevne og køreadfærd udelukkende til informations-, sikkerheds- og analytiske formål.\n\n3. Indsamlede Dataparametre\nAppen kan indsamle og behandle køretøjs- og køredata, herunder men ikke begrænset til:\n\n• Køretøjshastighed\n• Brændstofforbrug og brændstofniveau\n• Acceleration og deceleration\n• Hård opbremsning og hurtig acceleration\n• Skarpe sving\n• GPS-positionsdata (bredde- og længdegrad)\n• Rejseafstand, varighed og tidspunkt\n• Fører- og køretøjsidentifikationsdata\n\nVed at bruge appen giver du udtrykkeligt samtykke til indsamlingen af disse parametre.\n\n4. Tjenestetilgængelighed\nKontinuerlig, realtids- eller fejlfri drift af appen er ikke garanteret på grund af tekniske begrænsninger.';

  @override
  String get validation_password_mismatch =>
      'Adgangskoderne stemmer ikke overens';

  @override
  String get validation_invalid_phone => 'Ugyldigt telefonnummer';

  @override
  String get validation_incorrect_pin => 'Forkert PIN';

  @override
  String get validation_empty_fields => 'Udfyld venligst alle felter';

  @override
  String get empty_no_cars => 'Ingen biler fundet';

  @override
  String get empty_no_notifications => 'Ingen notifikationer endnu';

  @override
  String get empty_no_events => 'Ingen hændelser tilgængelige';

  @override
  String get status_loading => 'Indlæser...';

  @override
  String get status_success => 'Handling lykkedes';

  @override
  String get status_error => 'Noget gik galt';

  @override
  String get confirm_delete_car =>
      'Er du sikker på, at du vil slette denne bil?';

  @override
  String get confirm_reset_password =>
      'Er du sikker på, at du vil nulstille din adgangskode?';

  @override
  String get search => 'Søg';

  @override
  String get search_hint => 'Søg...';

  @override
  String get search_no_results => 'Ingen resultater fundet';

  @override
  String get filter => 'Filtrer';

  @override
  String get sort => 'Sortér';

  @override
  String get onboarding_title_1 => 'Velkommen';

  @override
  String get onboarding_desc_1 => 'Til Black Box Manager';

  @override
  String get onboarding_title_2 => 'Se Historien Bag Din Køretur,';

  @override
  String get onboarding_desc_2 =>
      'Registrerer hver rejse, analyserer hver kilometer.';

  @override
  String get delete_car => 'Slet bil';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Tung last';

  @override
  String get current_password => 'Nuværende adgangskode';

  @override
  String get password_requirement =>
      'Skal være mindst 8 tegn lang og indeholde både bogstaver og tal.';

  @override
  String get current_password_is_not_correct =>
      'Den nuværende adgangskode er forkert.';

  @override
  String get vehicle => 'Køretøj';

  @override
  String get driven_by => 'køres af';

  @override
  String get report_fuel_level =>
      'rapporterede et hurtigt fald i brændstofniveauet.';

  @override
  String get report_collision_or_rollover =>
      'rapporterede en alvorlig kollision eller væltning (sos).';

  @override
  String get report_overheating_or_dtc =>
      'rapporterede motoroverophedning eller DTC-koder registreret.';

  @override
  String get unknown_driver => 'Ukendt chauffør';

  @override
  String get mechanical_failure => 'Advarsel om mekanisk fejl!';

  @override
  String get critical_crash => 'Kritisk kollision registreret!';

  @override
  String get fuel_leak => 'Advarsel om brændstoflækage!';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get day => 'dag';

  @override
  String get days => 'dage';

  @override
  String get week => 'uge';

  @override
  String get weeks => 'uger';

  @override
  String get month => 'måned';

  @override
  String get months => 'måneder';

  @override
  String get year => 'år';

  @override
  String get years => 'år';

  @override
  String get january => 'Januar';

  @override
  String get february => 'Februar';

  @override
  String get march => 'Marts';

  @override
  String get april => 'April';

  @override
  String get may => 'Maj';

  @override
  String get june => 'Juni';

  @override
  String get july => 'Juli';

  @override
  String get august => 'August';

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
    return 'Siden #$num år';
  }

  @override
  String get since_two_years => 'Siden 2 år';

  @override
  String get since_year => 'Siden et år';

  @override
  String since_months(Object num) {
    return 'Siden #$num måneder';
  }

  @override
  String get since_two_months => 'Siden 2 måneder';

  @override
  String get since_month => 'Siden en måned';

  @override
  String since_weeks(Object num) {
    return 'Siden #$num uger';
  }

  @override
  String get since_two_weeks => 'Siden 2 uger';

  @override
  String get since_week => 'Siden en uge';

  @override
  String since_days(Object num) {
    return 'Siden #$num dage';
  }

  @override
  String get since_two_days => 'Siden 2 dage';

  @override
  String get since_day => 'Siden en dag';

  @override
  String get view_driving_events => 'Se kørselshændelser';

  @override
  String get coolant_temp => 'Kølevæsketemperatur';

  @override
  String get dtc_codes => 'DTC-koder';

  @override
  String get road_bump => 'Vejbump';

  @override
  String get fuel_level => 'Brændstofniveau';

  @override
  String get driving_behavior_score => 'Kørselsadfærdsscore';

  @override
  String get event_major_crashes => 'Større kollisioner';

  @override
  String get event_speeding_incident => 'Hastighedsoverskridelser';

  @override
  String get driver_id => 'Chauffør-ID';

  @override
  String get more_details => 'Flere detaljer';

  @override
  String get events => 'Hændelser';

  @override
  String get error_email_exists => 'Denne e-mailadresse findes allerede';

  @override
  String get error_wrong_password => 'Forkert adgangskode';

  @override
  String get error_phone_exists => 'Dette telefonnummer er allerede i brug';

  @override
  String get error_sp_ch => 'Adgangskoden skal indeholde mindst ét specialtegn';

  @override
  String get error_up => 'Adgangskoden skal indeholde mindst ét stort bogstav';

  @override
  String get error_low => 'Adgangskoden skal indeholde mindst ét lille bogstav';

  @override
  String get error_num => 'Adgangskoden skal indeholde mindst ét tal';

  @override
  String get error_required => 'Dette felt er påkrævet';

  @override
  String get error_invalid_email => 'Ugyldig e-mailadresse';

  @override
  String error_password_short(Object length) {
    return 'Adgangskoden skal have mindst $length tegn';
  }
}
