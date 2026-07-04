// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ja';

  @override
  String get common_no => 'Nej';

  @override
  String get common_cancel => 'Avbryt';

  @override
  String get common_save => 'Spara';

  @override
  String get common_save_changes => 'Spara Ändringar';

  @override
  String get common_continue => 'Fortsätt';

  @override
  String get common_next => 'Nästa';

  @override
  String get auth_login => 'Logga in';

  @override
  String get auth_space_login => 'Logga in';

  @override
  String get auth_logout => 'Logga ut';

  @override
  String get auth_confirm_logout => 'Är du säker på att du vill logga ut?';

  @override
  String get auth_signup => 'Registrera dig';

  @override
  String get auth_create_account => 'Skapa Konto';

  @override
  String get auth_already_have_account => 'Har du redan ett konto? ';

  @override
  String get auth_no_account => 'Har du inget konto?';

  @override
  String get auth_forgot_password => 'Glömt Lösenord?';

  @override
  String get auth_reset_password => 'Återställa Lösenord?';

  @override
  String get auth_change_password => 'Byt Lösenord';

  @override
  String get auth_continue => 'Genom att fortsätta godkänner du\n';

  @override
  String get auth_terms => 'Användarvillkor och Integritetspolicy';

  @override
  String get auth_email => 'E-post';

  @override
  String get auth_password => 'Lösenord';

  @override
  String get auth_confirm_password => 'Bekräfta Lösenord';

  @override
  String get auth_new_password => 'Nytt Lösenord';

  @override
  String get auth_confirm_new_password => 'Bekräfta Nytt Lösenord';

  @override
  String get auth_enter_email => 'Ange e-postadress';

  @override
  String get auth_password_hint => 'Ange ditt lösenord';

  @override
  String get full_name => 'Fullständigt Namn';

  @override
  String get email_hint => 'exempel@gmail.com';

  @override
  String get name_hint => 'Erik Svensson';

  @override
  String get required_name => 'Fullständigt namn krävs';

  @override
  String get required_email => 'E-post krävs';

  @override
  String get email_end => 'E-post måste sluta med @gmail.com';

  @override
  String get required_password => 'Lösenord krävs';

  @override
  String get required_confirm_password => 'Bekräftelse av lösenord krävs';

  @override
  String get password_do_not_match => 'Lösenorden stämmer inte överens';

  @override
  String get min_password =>
      'Lösenordet måste ha minst 8 tecken och innehålla siffror';

  @override
  String get send_verification_code => 'Skicka Verifieringskod';

  @override
  String get password_changed_successfully => 'Lösenordet Har\nÄndrats';

  @override
  String get forget_password_title =>
      'Ange e-postadressen som är kopplad till ditt konto så skickar vi en säkerhets-PIN för återställning av lösenord.';

  @override
  String get auth_security_pin => 'Säkerhets-PIN';

  @override
  String get auth_enter_pin => 'Ange säkerhets-PIN';

  @override
  String get verify => 'Verifiera';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Skicka igen om ${seconds}s';
  }

  @override
  String get home_title => 'Hem';

  @override
  String get home_welcome => 'Hej, Välkommen Tillbaka';

  @override
  String get home_good_morning => 'God Morgon';

  @override
  String get home_good_afternoon => 'God eftermiddag';

  @override
  String get home_good_evening => 'God kväll';

  @override
  String get home_looks_good => 'Ser\nBra Ut';

  @override
  String get home_safety_score => 'Översikt Säkerhetspoäng';

  @override
  String get home_total_accidents => 'Totalt Antal Olyckor';

  @override
  String get total_active_cars => 'Totalt Aktiva Bilar';

  @override
  String get total_cars => 'Totalt Bilar';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% av dina bilar är aktiva';
  }

  @override
  String get car_section_title => 'Bilar';

  @override
  String get car_view_all => 'Visa Bilar';

  @override
  String get car_add => 'Lägg till Bil';

  @override
  String get car_edit => 'Redigera Bil';

  @override
  String get car_name => 'Bilnamn';

  @override
  String get car_plate => 'Registreringsnummer';

  @override
  String get car_type => 'Biltyp';

  @override
  String get car_driver_name => 'Förarens Namn';

  @override
  String car_item_title(Object id) {
    return 'Bil #$id';
  }

  @override
  String get tracking_live => 'Live-spårning';

  @override
  String get tracking_last_updates => 'Senaste Uppdateringar';

  @override
  String get event_title => 'Körningshändelser';

  @override
  String get event_speeding => 'Fortkörning';

  @override
  String get event_hard_braking => 'Hård Bromsning';

  @override
  String get event_aggressive_turns => 'Aggressiva Svängar';

  @override
  String get event_crash => 'Krock';

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
    return '$speed km/h';
  }

  @override
  String get event_severity => 'Allvarlighetsgrad';

  @override
  String get event_severity_low => 'Låg';

  @override
  String get event_severity_medium => 'Medel';

  @override
  String get event_severity_high => 'Hög';

  @override
  String get event_severity_critical => 'Kritisk';

  @override
  String get event_reason => 'Anledning';

  @override
  String get event_last_speed => 'Senast Registrerad Hastighet';

  @override
  String get notification_title => 'Aviseringar';

  @override
  String get notification_today => 'Idag';

  @override
  String get notification_yesterday => 'Igår';

  @override
  String get notification_earlier => 'Tidigare Denna Vecka';

  @override
  String get notification_fuel_alert => 'Bränslel Läcka Varning!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Fordon $car kört av $driver rapporterade ett snabbt fall i bränslenivå.';
  }

  @override
  String get notification_crash_alert => 'Kritisk krock detekterad!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Fordon $car kört av $driver rapporterade en allvarlig kollision.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Redigera Min Profil';

  @override
  String get update_profile => 'Uppdatera Profil';

  @override
  String get user_name => 'Användarnamn';

  @override
  String get security_title => 'Säkerhet';

  @override
  String get change_password => 'Byt Lösenord';

  @override
  String get settings_title => 'Inställningar';

  @override
  String get settings_notifications => 'Aviseringsinställningar';

  @override
  String get settings_general_notifications => 'Allmän Avisering';

  @override
  String get account_settings => 'Kontoinställningar';

  @override
  String get push_notification => 'Push-aviseringar';

  @override
  String get dark_mode => 'Mörkt Läge På';

  @override
  String get help_title => 'Hjälpcenter';

  @override
  String get help_and_faq => 'Hjälp & Vanliga Frågor';

  @override
  String get help_contact => 'Kontakta Oss';

  @override
  String get help_faq => 'Vanliga Frågor';

  @override
  String get how_help => 'Hur Kan Vi Hjälpa Dig?';

  @override
  String get on_wh_num => 'På WhatsApp-nummer';

  @override
  String get language => 'Språk';

  @override
  String get question1 => 'Hur använder jag BlackBox?';

  @override
  String get answer1 =>
      'Installera BlackBox-enheten i din bil, logga in på appen och börja köra. Appen registrerar och visar automatiskt dina kördata.';

  @override
  String get question2 => 'Hur mycket kostar det att använda BlackBox?';

  @override
  String get answer2 =>
      'Kostnaden beror på valt abonnemang och tjänster. Kontakta företaget för prisinformation.';

  @override
  String get question3 => 'Hur kontaktar jag supporten?';

  @override
  String get answer3 =>
      'Du kan kontakta supporten via WhatsApp med företagets officiella nummer eller besöka företagets kontor under öppettiderna.';

  @override
  String get question4 =>
      'Hur kan jag återställa mitt lösenord om jag glömmer det?';

  @override
  String get answer4 =>
      'Använd alternativet \'Glömt lösenord\' på inloggningsskärmen och följ instruktionerna för att återställa ditt lösenord.';

  @override
  String get question5 => 'Finns det sekretess- eller datasäkerhetsåtgärder?';

  @override
  String get answer5 =>
      'Ja. Dina uppgifter lagras och skyddas säkert och delas inte utan ditt tillstånd förutom när det krävs enligt lag.';

  @override
  String get question6 => 'Kan jag anpassa inställningar i appen?';

  @override
  String get answer6 =>
      'Ja. Du kan anpassa tillgängliga inställningar som aviseringar och preferenser inom appen.';

  @override
  String get question7 => 'Hur kan jag ta bort mitt konto?';

  @override
  String get answer7 =>
      'För att ta bort ditt konto, kontakta företaget via WhatsApp eller besök företagets kontor.';

  @override
  String get question8 => 'Hur kommer jag åt min analyshistorik?';

  @override
  String get answer8 =>
      'Du kan se dina tidigare resor och körningsanalyser i avsnittet Historik eller Analyser i appen.';

  @override
  String get question9 => 'Kan jag använda appen offline?';

  @override
  String get answer9 =>
      'Appen har begränsad offline-funktionalitet. En internetanslutning krävs för att synkronisera data och komma åt alla funktioner.';

  @override
  String get terms_title => 'Användarvillkor';

  @override
  String get terms_accept => 'Acceptera användarvillkor';

  @override
  String get terms_full =>
      '1. Godkännande av Villkor\nGenom att installera eller använda den här appen godkänner du dessa Användarvillkor. Om du inte godkänner, sluta använda appen.\n\n2. Appens Syfte\nDen här appen är ett fordons-blackbox och telematikssystem som används för att övervaka fordonets prestanda och körbeteende enbart för informations-, säkerhets- och analytiska syften.\n\n3. Insamlade Dataparametrar\nAppen kan samla in och bearbeta fordons- och kördata, inklusive men inte begränsat till:\n\n• Fordonshastighet\n• Bränsleförbrukning och bränslenivå\n• Acceleration och deceleration\n• Hård bromsning och snabb acceleration\n• Skarpa kurvor\n• GPS-platsdata (latitud och longitud)\n• Reseavstånd, varaktighet och tid\n• Förar- och fordonsidentifieringsdata\n\nGenom att använda appen samtycker du uttryckligen till insamlingen av dessa parametrar.\n\n4. Tjänstetillgänglighet\nKontinuerlig, realtids- eller felfri drift av appen garanteras inte på grund av tekniska begränsningar.';

  @override
  String get validation_password_mismatch => 'Lösenorden stämmer inte överens';

  @override
  String get validation_invalid_phone => 'Ogiltigt telefonnummer';

  @override
  String get validation_incorrect_pin => 'Felaktig PIN';

  @override
  String get validation_empty_fields => 'Fyll i alla fält';

  @override
  String get empty_no_cars => 'Inga bilar hittades';

  @override
  String get empty_no_notifications => 'Inga aviseringar ännu';

  @override
  String get empty_no_events => 'Inga händelser tillgängliga';

  @override
  String get status_loading => 'Laddar...';

  @override
  String get status_success => 'Åtgärd slutförd';

  @override
  String get status_error => 'Något gick fel';

  @override
  String get confirm_delete_car =>
      'Är du säker på att du vill ta bort den här bilen?';

  @override
  String get confirm_reset_password =>
      'Är du säker på att du vill återställa ditt lösenord?';

  @override
  String get search => 'Sök';

  @override
  String get search_hint => 'Sök...';

  @override
  String get search_no_results => 'Inga resultat hittades';

  @override
  String get filter => 'Filtrera';

  @override
  String get sort => 'Sortera';

  @override
  String get onboarding_title_1 => 'Välkommen';

  @override
  String get onboarding_desc_1 => 'Till Black Box Manager';

  @override
  String get onboarding_title_2 => 'Se Historien Bakom Din Körning,';

  @override
  String get onboarding_desc_2 =>
      'Registrerar varje resa, analyserar varje kilometer.';

  @override
  String get delete_car => 'Ta bort bil';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Tung';

  @override
  String get current_password => 'Nuvarande lösenord';

  @override
  String get password_requirement =>
      'Måste vara minst 8 tecken långt och innehålla både bokstäver och siffror.';

  @override
  String get current_password_is_not_correct =>
      'Nuvarande lösenord är felaktigt.';

  @override
  String get vehicle => 'Fordon';

  @override
  String get driven_by => 'körs av';

  @override
  String get report_fuel_level =>
      'rapporterade en snabb minskning av bränslenivån.';

  @override
  String get report_collision_or_rollover =>
      'rapporterade en allvarlig kollision eller vältning (sos).';

  @override
  String get report_overheating_or_dtc =>
      'rapporterade motoröverhettning eller upptäckta DTC-koder.';

  @override
  String get unknown_driver => 'Okänd förare';

  @override
  String get mechanical_failure => 'Varning för mekaniskt fel!';

  @override
  String get critical_crash => 'Kritisk kollision upptäckt!';

  @override
  String get fuel_leak => 'Varning för bränsleläckage!';

  @override
  String get today => 'Idag';

  @override
  String get yesterday => 'Igår';

  @override
  String get day => 'dag';

  @override
  String get days => 'dagar';

  @override
  String get week => 'vecka';

  @override
  String get weeks => 'veckor';

  @override
  String get month => 'månad';

  @override
  String get months => 'månader';

  @override
  String get year => 'år';

  @override
  String get years => 'år';

  @override
  String get january => 'Januari';

  @override
  String get february => 'Februari';

  @override
  String get march => 'Mars';

  @override
  String get april => 'April';

  @override
  String get may => 'Maj';

  @override
  String get june => 'Juni';

  @override
  String get july => 'Juli';

  @override
  String get august => 'Augusti';

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
    return 'Sedan #$num år';
  }

  @override
  String get since_two_years => 'Sedan 2 år';

  @override
  String get since_year => 'Sedan ett år';

  @override
  String since_months(Object num) {
    return 'Sedan #$num månader';
  }

  @override
  String get since_two_months => 'Sedan 2 månader';

  @override
  String get since_month => 'Sedan en månad';

  @override
  String since_weeks(Object num) {
    return 'Sedan #$num veckor';
  }

  @override
  String get since_two_weeks => 'Sedan 2 veckor';

  @override
  String get since_week => 'Sedan en vecka';

  @override
  String since_days(Object num) {
    return 'Sedan #$num dagar';
  }

  @override
  String get since_two_days => 'Sedan 2 dagar';

  @override
  String get since_day => 'Sedan en dag';

  @override
  String get view_driving_events => 'Visa körhändelser';

  @override
  String get coolant_temp => 'Kylvätsketemperatur';

  @override
  String get dtc_codes => 'DTC-koder';

  @override
  String get road_bump => 'Väg ojämnhet';

  @override
  String get fuel_level => 'Bränslenivå';

  @override
  String get driving_behavior_score => 'Körbeteendepoäng';

  @override
  String get event_major_crashes => 'Stora krascher';

  @override
  String get event_speeding_incident => 'Hastighetsöverträdelser';

  @override
  String get driver_id => 'Förarens ID';

  @override
  String get more_details => 'Mer information';

  @override
  String get events => 'Händelser';

  @override
  String get error_email_exists => 'Den här e-postadressen finns redan';

  @override
  String get error_wrong_password => 'Felaktigt lösenord';

  @override
  String get error_phone_exists => 'Det här telefonnumret används redan';

  @override
  String get error_sp_ch =>
      'Lösenordet måste innehålla minst ett specialtecken';

  @override
  String get error_up => 'Lösenordet måste innehålla minst en stor bokstav';

  @override
  String get error_low => 'Lösenordet måste innehålla minst en liten bokstav';

  @override
  String get error_num => 'Lösenordet måste innehålla minst en siffra';

  @override
  String get error_required => 'Det här fältet är obligatoriskt';

  @override
  String get error_invalid_email => 'Ogiltig e-postadress';

  @override
  String error_password_short(Object length) {
    return 'Lösenordet måste ha minst $length tecken';
  }
}
