// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ja';

  @override
  String get common_no => 'Nei';

  @override
  String get common_cancel => 'Avbryt';

  @override
  String get common_save => 'Lagre';

  @override
  String get common_save_changes => 'Lagre Endringer';

  @override
  String get common_continue => 'Fortsett';

  @override
  String get common_next => 'Neste';

  @override
  String get auth_login => 'Logg inn';

  @override
  String get auth_space_login => 'Logg inn';

  @override
  String get auth_logout => 'Logg ut';

  @override
  String get auth_confirm_logout => 'Er du sikker på at du vil logge ut?';

  @override
  String get auth_signup => 'Registrer deg';

  @override
  String get auth_create_account => 'Opprett Konto';

  @override
  String get auth_already_have_account => 'Har du allerede en konto? ';

  @override
  String get auth_no_account => 'Har du ikke en konto?';

  @override
  String get auth_forgot_password => 'Glemt Passord?';

  @override
  String get auth_reset_password => 'Tilbakestill Passord?';

  @override
  String get auth_change_password => 'Endre Passord';

  @override
  String get auth_continue => 'Ved å fortsette, godtar du\n';

  @override
  String get auth_terms => 'Bruksvilkår og Personvernregler';

  @override
  String get auth_email => 'E-post';

  @override
  String get auth_password => 'Passord';

  @override
  String get auth_confirm_password => 'Bekreft Passord';

  @override
  String get auth_new_password => 'Nytt Passord';

  @override
  String get auth_confirm_new_password => 'Bekreft Nytt Passord';

  @override
  String get auth_enter_email => 'Skriv inn e-postadresse';

  @override
  String get auth_password_hint => 'Skriv inn passordet ditt';

  @override
  String get full_name => 'Fullt Navn';

  @override
  String get email_hint => 'eksempel@gmail.com';

  @override
  String get name_hint => 'Ole Hansen';

  @override
  String get required_name => 'Fullt navn er påkrevd';

  @override
  String get required_email => 'E-post er påkrevd';

  @override
  String get email_end => 'E-post må slutte med @gmail.com';

  @override
  String get required_password => 'Passord er påkrevd';

  @override
  String get required_confirm_password => 'Bekreftelse av passord er påkrevd';

  @override
  String get password_do_not_match => 'Passordene stemmer ikke overens';

  @override
  String get min_password => 'Passordet må ha minst 8 tegn og inneholde tall';

  @override
  String get send_verification_code => 'Send Bekreftelseskode';

  @override
  String get password_changed_successfully => 'Passordet er\nEndret';

  @override
  String get forget_password_title =>
      'Skriv inn e-postadressen knyttet til kontoen din, så sender vi deg en sikkerhets-PIN for tilbakestilling av passord.';

  @override
  String get auth_security_pin => 'Sikkerhets-PIN';

  @override
  String get auth_enter_pin => 'Skriv inn sikkerhets-PIN';

  @override
  String get verify => 'Bekreft';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Send igjen om ${seconds}s';
  }

  @override
  String get home_title => 'Hjem';

  @override
  String get home_welcome => 'Hei, Velkommen Tilbake';

  @override
  String get home_good_morning => 'God Morgen';

  @override
  String get home_good_afternoon => 'God ettermiddag';

  @override
  String get home_good_evening => 'God kveld';

  @override
  String get home_looks_good => 'Ser\nBra Ut';

  @override
  String get home_safety_score => 'Oversikt over Sikkerhetspoeng';

  @override
  String get home_total_accidents => 'Totalt Antall Ulykker';

  @override
  String get total_active_cars => 'Totalt Aktive Biler';

  @override
  String get total_cars => 'Totalt Biler';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% av bilene dine er aktive';
  }

  @override
  String get car_section_title => 'Biler';

  @override
  String get car_view_all => 'Vis Biler';

  @override
  String get car_add => 'Legg til Bil';

  @override
  String get car_edit => 'Rediger Bil';

  @override
  String get car_name => 'Bilnavn';

  @override
  String get car_plate => 'Kjennemerke';

  @override
  String get car_type => 'Biltype';

  @override
  String get car_driver_name => 'Sjåførens Navn';

  @override
  String car_item_title(Object id) {
    return 'Bil #$id';
  }

  @override
  String get tracking_live => 'Live-sporing';

  @override
  String get tracking_last_updates => 'Siste Oppdateringer';

  @override
  String get event_title => 'Kjørehendelser';

  @override
  String get event_speeding => 'Fartsovertredelse';

  @override
  String get event_hard_braking => 'Hard Bremsing';

  @override
  String get event_aggressive_turns => 'Aggressive Svinger';

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
  String get event_severity => 'Alvorlighetsgrad';

  @override
  String get event_severity_low => 'Lav';

  @override
  String get event_severity_medium => 'Middels';

  @override
  String get event_severity_high => 'Høy';

  @override
  String get event_severity_critical => 'Kritisk';

  @override
  String get event_reason => 'Årsak';

  @override
  String get event_last_speed => 'Sist Registrert Hastighet';

  @override
  String get notification_title => 'Varsler';

  @override
  String get notification_today => 'I dag';

  @override
  String get notification_yesterday => 'I går';

  @override
  String get notification_earlier => 'Tidligere Denne Uken';

  @override
  String get notification_fuel_alert => 'Drivstofflekkasjealarm!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Kjøretøy $car kjørt av $driver rapporterte et raskt fall i drivstoffnivå.';
  }

  @override
  String get notification_crash_alert => 'Kritisk kollisjon oppdaget!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Kjøretøy $car kjørt av $driver rapporterte en alvorlig kollisjon.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Rediger Min Profil';

  @override
  String get update_profile => 'Oppdater Profil';

  @override
  String get user_name => 'Brukernavn';

  @override
  String get security_title => 'Sikkerhet';

  @override
  String get change_password => 'Endre Passord';

  @override
  String get settings_title => 'Innstillinger';

  @override
  String get settings_notifications => 'Varselinnstillinger';

  @override
  String get settings_general_notifications => 'Generelt Varsel';

  @override
  String get account_settings => 'Kontoinnstillinger';

  @override
  String get push_notification => 'Push-varsler';

  @override
  String get dark_mode => 'Mørk Modus På';

  @override
  String get help_title => 'Hjelpesenter';

  @override
  String get help_and_faq => 'Hjelp & Vanlige Spørsmål';

  @override
  String get help_contact => 'Kontakt Oss';

  @override
  String get help_faq => 'Vanlige Spørsmål';

  @override
  String get how_help => 'Hvordan Kan Vi Hjelpe Deg?';

  @override
  String get on_wh_num => 'På WhatsApp-nummer';

  @override
  String get language => 'Språk';

  @override
  String get question1 => 'Hvordan bruker jeg BlackBox?';

  @override
  String get answer1 =>
      'Installer BlackBox-enheten i bilen din, logg inn på appen og begynn å kjøre. Appen registrerer og viser automatisk kjøredataene dine.';

  @override
  String get question2 => 'Hva koster det å bruke BlackBox?';

  @override
  String get answer2 =>
      'Kostnaden avhenger av valgt abonnement og tjenester. Kontakt selskapet for prisinformasjon.';

  @override
  String get question3 => 'Hvordan kontakter jeg support?';

  @override
  String get answer3 =>
      'Du kan kontakte support via WhatsApp med selskapets offisielle nummer eller besøke selskapets kontor i åpningstiden.';

  @override
  String get question4 =>
      'Hvordan kan jeg tilbakestille passordet mitt hvis jeg glemmer det?';

  @override
  String get answer4 =>
      'Bruk alternativet \'Glemt passord\' på innloggingsskjermen og følg instruksjonene for å tilbakestille passordet ditt.';

  @override
  String get question5 => 'Finnes det personvern- eller datasikkerhetstiltak?';

  @override
  String get answer5 =>
      'Ja. Dataene dine er sikkert lagret og beskyttet, og deles ikke uten din tillatelse unntatt når det er påkrevd ved lov.';

  @override
  String get question6 => 'Kan jeg tilpasse innstillinger i appen?';

  @override
  String get answer6 =>
      'Ja. Du kan tilpasse tilgjengelige innstillinger som varsler og preferanser i appen.';

  @override
  String get question7 => 'Hvordan kan jeg slette kontoen min?';

  @override
  String get answer7 =>
      'For å slette kontoen din, kontakt selskapet via WhatsApp eller besøk selskapets kontor.';

  @override
  String get question8 => 'Hvordan får jeg tilgang til analysehistorikken min?';

  @override
  String get answer8 =>
      'Du kan se tidligere turer og kjøreanalyser i delen Historikk eller Analyser i appen.';

  @override
  String get question9 => 'Kan jeg bruke appen offline?';

  @override
  String get answer9 =>
      'Appen har begrenset offline-funksjonalitet. Internettforbindelse kreves for å synkronisere data og få tilgang til alle funksjoner.';

  @override
  String get terms_title => 'Vilkår og Betingelser';

  @override
  String get terms_accept => 'Godta vilkår og betingelser';

  @override
  String get terms_full =>
      '1. Aksept av Vilkår\nVed å installere eller bruke denne appen godtar du disse Vilkårene og Betingelsene. Hvis du ikke godtar, vennligst slutt å bruke appen.\n\n2. Appens Formål\nDenne appen er et kjøretøys blackbox og telematikksystem som brukes til å overvåke kjøretøyets ytelse og kjøreatferd kun for informasjons-, sikkerhets- og analytiske formål.\n\n3. Innsamlede Dataparametere\nAppen kan samle inn og behandle kjøretøy- og kjøredata, inkludert men ikke begrenset til:\n\n• Kjøretøyhastighet\n• Drivstofforbruk og drivstoffnivå\n• Akselerasjon og deselerasjon\n• Hard bremsing og rask akselerasjon\n• Skarpe svinger\n• GPS-posisjonsdata (bredde- og lengdegrad)\n• Reiseavstand, varighet og tid\n• Fører- og kjøretøyidentifikasjonsdata\n\nVed å bruke appen samtykker du uttrykkelig til innsamlingen av disse parameterne.\n\n4. Tjenestetilgjengelighet\nKontinuerlig, sanntids eller feilfri drift av appen er ikke garantert på grunn av tekniske begrensninger.';

  @override
  String get validation_password_mismatch => 'Passordene stemmer ikke overens';

  @override
  String get validation_invalid_phone => 'Ugyldig telefonnummer';

  @override
  String get validation_incorrect_pin => 'Feil PIN';

  @override
  String get validation_empty_fields => 'Fyll ut alle felt';

  @override
  String get empty_no_cars => 'Ingen biler funnet';

  @override
  String get empty_no_notifications => 'Ingen varsler ennå';

  @override
  String get empty_no_events => 'Ingen hendelser tilgjengelig';

  @override
  String get status_loading => 'Laster...';

  @override
  String get status_success => 'Operasjon vellykket';

  @override
  String get status_error => 'Noe gikk galt';

  @override
  String get confirm_delete_car =>
      'Er du sikker på at du vil slette denne bilen?';

  @override
  String get confirm_reset_password =>
      'Er du sikker på at du vil tilbakestille passordet ditt?';

  @override
  String get search => 'Søk';

  @override
  String get search_hint => 'Søk...';

  @override
  String get search_no_results => 'Ingen resultater funnet';

  @override
  String get filter => 'Filtrer';

  @override
  String get sort => 'Sorter';

  @override
  String get onboarding_title_1 => 'Velkommen';

  @override
  String get onboarding_desc_1 => 'Til Black Box Manager';

  @override
  String get onboarding_title_2 => 'Se Historien Bak Kjøreturen Din,';

  @override
  String get onboarding_desc_2 =>
      'Registrerer hver reise, analyserer hver kilometer.';

  @override
  String get delete_car => 'Slett bil';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Tung';

  @override
  String get current_password => 'Gjeldende passord';

  @override
  String get password_requirement =>
      'Må være minst 8 tegn lang og inneholde både bokstaver og tall.';

  @override
  String get current_password_is_not_correct => 'Gjeldende passord er feil.';

  @override
  String get vehicle => 'Kjøretøy';

  @override
  String get driven_by => 'kjøres av';

  @override
  String get report_fuel_level =>
      'rapporterte et raskt fall i drivstoffnivået.';

  @override
  String get report_collision_or_rollover =>
      'rapporterte en alvorlig kollisjon eller velt (sos).';

  @override
  String get report_overheating_or_dtc =>
      'rapporterte motoroveroppheting eller oppdagede DTC-koder.';

  @override
  String get unknown_driver => 'Ukjent sjåfør';

  @override
  String get mechanical_failure => 'Advarsel om mekanisk feil!';

  @override
  String get critical_crash => 'Kritisk kollisjon oppdaget!';

  @override
  String get fuel_leak => 'Drivstofflekkasje varsel!';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get day => 'dag';

  @override
  String get days => 'dager';

  @override
  String get week => 'uke';

  @override
  String get weeks => 'uker';

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
  String get march => 'Mars';

  @override
  String get april => 'April';

  @override
  String get may => 'Mai';

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
  String get december => 'Desember';

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
    return 'Siden #$num uker';
  }

  @override
  String get since_two_weeks => 'Siden 2 uker';

  @override
  String get since_week => 'Siden en uke';

  @override
  String since_days(Object num) {
    return 'Siden #$num dager';
  }

  @override
  String get since_two_days => 'Siden 2 dager';

  @override
  String get since_day => 'Siden en dag';

  @override
  String get view_driving_events => 'Vis kjørehendelser';

  @override
  String get coolant_temp => 'Kjølevæsketemperatur';

  @override
  String get dtc_codes => 'DTC-koder';

  @override
  String get road_bump => 'Fartshump';

  @override
  String get fuel_level => 'Drivstoffnivå';

  @override
  String get driving_behavior_score => 'Kjøreatferdsscore';

  @override
  String get event_major_crashes => 'Store kollisjoner';

  @override
  String get event_speeding_incident => 'Fartsovertredelser';

  @override
  String get driver_id => 'Sjåfør-ID';

  @override
  String get more_details => 'Flere detaljer';

  @override
  String get events => 'Hendelser';

  @override
  String get error_email_exists => 'Denne e-postadressen finnes allerede';

  @override
  String get error_wrong_password => 'Feil passord';

  @override
  String get error_phone_exists => 'Dette telefonnummeret er allerede i bruk';

  @override
  String get error_sp_ch => 'Passordet må inneholde minst ett spesialtegn';

  @override
  String get error_up => 'Passordet må inneholde minst én stor bokstav';

  @override
  String get error_low => 'Passordet må inneholde minst én liten bokstav';

  @override
  String get error_num => 'Passordet må inneholde minst ett tall';

  @override
  String get error_required => 'Dette feltet er påkrevd';

  @override
  String get error_invalid_email => 'Ugyldig e-postadresse';

  @override
  String error_password_short(Object length) {
    return 'Passordet må ha minst $length tegn';
  }
}
