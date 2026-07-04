// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ja';

  @override
  String get common_no => 'Nein';

  @override
  String get common_cancel => 'Abbrechen';

  @override
  String get common_save => 'Speichern';

  @override
  String get common_save_changes => 'Änderungen speichern';

  @override
  String get common_continue => 'Weiter';

  @override
  String get common_next => 'Nächste';

  @override
  String get auth_login => 'Anmelden';

  @override
  String get auth_space_login => 'Einloggen';

  @override
  String get auth_logout => 'Abmelden';

  @override
  String get auth_confirm_logout => 'Möchten Sie sich wirklich abmelden?';

  @override
  String get auth_signup => 'Registrieren';

  @override
  String get auth_create_account => 'Konto erstellen';

  @override
  String get auth_already_have_account => 'Bereits ein Konto? ';

  @override
  String get auth_no_account => 'Noch kein Konto?';

  @override
  String get auth_forgot_password => 'Passwort vergessen?';

  @override
  String get auth_reset_password => 'Passwort zurücksetzen?';

  @override
  String get auth_change_password => 'Passwort ändern';

  @override
  String get auth_continue => 'Mit dem Fortfahren stimmen Sie zu\n';

  @override
  String get auth_terms => 'Nutzungsbedingungen und Datenschutzrichtlinie';

  @override
  String get auth_email => 'E-Mail';

  @override
  String get auth_password => 'Passwort';

  @override
  String get auth_confirm_password => 'Passwort bestätigen';

  @override
  String get auth_new_password => 'Neues Passwort';

  @override
  String get auth_confirm_new_password => 'Neues Passwort bestätigen';

  @override
  String get auth_enter_email => 'E-Mail-Adresse eingeben';

  @override
  String get auth_password_hint => 'Passwort eingeben';

  @override
  String get full_name => 'Vollständiger Name';

  @override
  String get email_hint => 'beispiel@gmail.com';

  @override
  String get name_hint => 'Max Mustermann';

  @override
  String get required_name => 'Vollständiger Name ist erforderlich';

  @override
  String get required_email => 'E-Mail ist erforderlich';

  @override
  String get email_end => 'E-Mail muss mit @gmail.com enden';

  @override
  String get required_password => 'Passwort ist erforderlich';

  @override
  String get required_confirm_password =>
      'Passwortbestätigung ist erforderlich';

  @override
  String get password_do_not_match => 'Passwörter stimmen nicht überein';

  @override
  String get min_password =>
      'Das Passwort muss mindestens 8 Zeichen lang sein und Zahlen enthalten';

  @override
  String get send_verification_code => 'Bestätigungscode senden';

  @override
  String get password_changed_successfully =>
      'Das Passwort wurde\nerfolgreich geändert';

  @override
  String get forget_password_title =>
      'Geben Sie die mit Ihrem Konto verknüpfte E-Mail-Adresse ein und wir senden Ihnen einen Sicherheits-PIN zum Zurücksetzen des Passworts.';

  @override
  String get auth_security_pin => 'Sicherheits-PIN';

  @override
  String get auth_enter_pin => 'Sicherheits-PIN eingeben';

  @override
  String get verify => 'Bestätigen';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Erneut senden in ${seconds}s';
  }

  @override
  String get home_title => 'Startseite';

  @override
  String get home_welcome => 'Hallo, willkommen zurück';

  @override
  String get home_good_morning => 'Guten Morgen';

  @override
  String get home_good_afternoon => 'Guten Nachmittag';

  @override
  String get home_good_evening => 'Guten Abend';

  @override
  String get home_looks_good => 'Sieht\ngut aus';

  @override
  String get home_safety_score => 'Sicherheitsbewertungsübersicht';

  @override
  String get home_total_accidents => 'Unfälle gesamt';

  @override
  String get total_active_cars => 'Aktive Fahrzeuge gesamt';

  @override
  String get total_cars => 'Fahrzeuge gesamt';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% Ihrer Fahrzeuge sind aktiv';
  }

  @override
  String get car_section_title => 'Fahrzeuge';

  @override
  String get car_view_all => 'Fahrzeuge ansehen';

  @override
  String get car_add => 'Fahrzeug hinzufügen';

  @override
  String get car_edit => 'Fahrzeug bearbeiten';

  @override
  String get car_name => 'Fahrzeugname';

  @override
  String get car_plate => 'Kennzeichen';

  @override
  String get car_type => 'Fahrzeugtyp';

  @override
  String get car_driver_name => 'Fahrername';

  @override
  String car_item_title(Object id) {
    return 'Fahrzeug #$id';
  }

  @override
  String get tracking_live => 'Live-Tracking';

  @override
  String get tracking_last_updates => 'Letzte Aktualisierungen';

  @override
  String get event_title => 'Fahrereignisse';

  @override
  String get event_speeding => 'Geschwindigkeitsüberschreitung';

  @override
  String get event_hard_braking => 'Starkes Bremsen';

  @override
  String get event_aggressive_turns => 'Aggressive Kurven';

  @override
  String get event_crash => 'Unfall';

  @override
  String event_location(Object location) {
    return 'In $location';
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
  String get event_severity => 'Schweregrad';

  @override
  String get event_severity_low => 'Niedrig';

  @override
  String get event_severity_medium => 'Mittel';

  @override
  String get event_severity_high => 'Hoch';

  @override
  String get event_severity_critical => 'Kritisch';

  @override
  String get event_reason => 'Grund';

  @override
  String get event_last_speed => 'Zuletzt aufgezeichnete Geschwindigkeit';

  @override
  String get notification_title => 'Benachrichtigungen';

  @override
  String get notification_today => 'Heute';

  @override
  String get notification_yesterday => 'Gestern';

  @override
  String get notification_earlier => 'Früher diese Woche';

  @override
  String get notification_fuel_alert => 'Kraftstoffleckalarm!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Fahrzeug $car gefahren von $driver meldete einen schnellen Abfall des Kraftstoffstands.';
  }

  @override
  String get notification_crash_alert => 'Kritischer Unfall erkannt!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Fahrzeug $car gefahren von $driver meldete eine schwere Kollision.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Mein Profil bearbeiten';

  @override
  String get update_profile => 'Profil aktualisieren';

  @override
  String get user_name => 'Benutzername';

  @override
  String get security_title => 'Sicherheit';

  @override
  String get change_password => 'Passwort ändern';

  @override
  String get settings_title => 'Einstellungen';

  @override
  String get settings_notifications => 'Benachrichtigungseinstellungen';

  @override
  String get settings_general_notifications => 'Allgemeine Benachrichtigung';

  @override
  String get account_settings => 'Kontoeinstellungen';

  @override
  String get push_notification => 'Push-Benachrichtigungen';

  @override
  String get dark_mode => 'Dunkler Modus aktiviert';

  @override
  String get help_title => 'Hilfecenter';

  @override
  String get help_and_faq => 'Hilfe & FAQ';

  @override
  String get help_contact => 'Kontaktiere uns';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Wie können wir Ihnen helfen?';

  @override
  String get on_wh_num => 'Auf der WhatsApp-Nummer';

  @override
  String get language => 'Sprache';

  @override
  String get question1 => 'Wie verwendet man BlackBox?';

  @override
  String get answer1 =>
      'Installieren Sie das BlackBox-Gerät in Ihrem Fahrzeug, melden Sie sich bei der App an und beginnen Sie zu fahren. Die App zeichnet Ihre Fahrdaten automatisch auf und zeigt sie an.';

  @override
  String get question2 => 'Was kostet die Nutzung von BlackBox?';

  @override
  String get answer2 =>
      'Die Kosten hängen vom gewählten Plan und den Diensten ab. Bitte kontaktieren Sie das Unternehmen für Preisdetails.';

  @override
  String get question3 => 'Wie kontaktiere ich den Support?';

  @override
  String get answer3 =>
      'Sie können den Support über WhatsApp unter der offiziellen Unternehmensnummer oder durch einen Besuch im Büro während der Geschäftszeiten erreichen.';

  @override
  String get question4 =>
      'Wie kann ich mein Passwort zurücksetzen, wenn ich es vergesse?';

  @override
  String get answer4 =>
      'Verwenden Sie die Option Passwort vergessen auf dem Anmeldebildschirm und folgen Sie den Anweisungen zum Zurücksetzen Ihres Passworts.';

  @override
  String get question5 => 'Gibt es Datenschutz- und Datensicherheitsmaßnahmen?';

  @override
  String get answer5 =>
      'Ja. Ihre Daten werden sicher gespeichert und geschützt und ohne Ihre Erlaubnis nicht weitergegeben, außer wenn gesetzlich vorgeschrieben.';

  @override
  String get question6 => 'Kann ich die Einstellungen der App anpassen?';

  @override
  String get answer6 =>
      'Ja. Sie können verfügbare Einstellungen wie Benachrichtigungen und Präferenzen in der App anpassen.';

  @override
  String get question7 => 'Wie kann ich mein Konto löschen?';

  @override
  String get answer7 =>
      'Um Ihr Konto zu löschen, kontaktieren Sie das Unternehmen bitte über WhatsApp oder besuchen Sie das Unternehmensbüro.';

  @override
  String get question8 => 'Wie greife ich auf meinen Analyseverlauf zu?';

  @override
  String get answer8 =>
      'Sie können Ihre vergangenen Fahrten und Fahranalysen im Abschnitt Verlauf oder Analyse der App einsehen.';

  @override
  String get question9 => 'Kann ich die App offline nutzen?';

  @override
  String get answer9 =>
      'Die App verfügt über begrenzte Offline-Funktionalität. Eine Internetverbindung ist erforderlich, um Daten zu synchronisieren und auf alle Funktionen zuzugreifen.';

  @override
  String get terms_title => 'Allgemeine Geschäftsbedingungen';

  @override
  String get terms_accept => 'AGB akzeptieren';

  @override
  String get terms_full =>
      '1. Annahme der Bedingungen\nDurch die Installation oder Nutzung dieser Anwendung stimmen Sie diesen Allgemeinen Geschäftsbedingungen zu. Wenn Sie nicht einverstanden sind, stellen Sie bitte die Nutzung der App ein.\n\n2. Zweck der Anwendung\nDiese Anwendung ist ein Fahrzeug-Blackbox- und Telematik-System, das zur Überwachung der Fahrzeugleistung und des Fahrverhaltens ausschließlich zu Informations-, Sicherheits- und Analysezwecken verwendet wird.\n\n3. Erhobene Datenparameter\nDie Anwendung kann Fahrzeug- und Fahrdaten erfassen und verarbeiten, einschließlich, aber nicht beschränkt auf:\n\n• Fahrzeuggeschwindigkeit\n• Kraftstoffverbrauch und Kraftstoffstand\n• Beschleunigung und Verzögerung\n• Ereignisse bei starkem Bremsen und schneller Beschleunigung\n• Scharfes Abbiegen\n• GPS-Standortdaten (Breiten- und Längengrad)\n• Reisedistanz, -dauer und -zeit\n• Fahrer- und Fahrzeugidentifikationsdaten\n\nDurch die Nutzung der App stimmen Sie ausdrücklich der Erfassung dieser Parameter zu.\n\n4. Serviceverfügbarkeit\nEin kontinuierlicher, Echtzeit- oder fehlerfreier Betrieb der App wird aufgrund technischer Einschränkungen nicht garantiert.';

  @override
  String get validation_password_mismatch => 'Passwörter stimmen nicht überein';

  @override
  String get validation_invalid_phone => 'Ungültige Telefonnummer';

  @override
  String get validation_incorrect_pin => 'Falscher PIN';

  @override
  String get validation_empty_fields => 'Bitte alle Felder ausfüllen';

  @override
  String get empty_no_cars => 'Keine Fahrzeuge gefunden';

  @override
  String get empty_no_notifications => 'Noch keine Benachrichtigungen';

  @override
  String get empty_no_events => 'Keine Ereignisse verfügbar';

  @override
  String get status_loading => 'Wird geladen...';

  @override
  String get status_success => 'Vorgang erfolgreich';

  @override
  String get status_error => 'Etwas ist schiefgelaufen';

  @override
  String get confirm_delete_car =>
      'Möchten Sie dieses Fahrzeug wirklich löschen?';

  @override
  String get confirm_reset_password =>
      'Möchten Sie Ihr Passwort wirklich zurücksetzen?';

  @override
  String get search => 'Suchen';

  @override
  String get search_hint => 'Suchen...';

  @override
  String get search_no_results => 'Keine Ergebnisse gefunden';

  @override
  String get filter => 'Filtern';

  @override
  String get sort => 'Sortieren';

  @override
  String get onboarding_title_1 => 'Willkommen';

  @override
  String get onboarding_desc_1 => 'Beim Black Box Manager';

  @override
  String get onboarding_title_2 =>
      'Sehen Sie die Geschichte hinter Ihrer Fahrt,';

  @override
  String get onboarding_desc_2 =>
      'Jede Reise aufzeichnen, jeden Kilometer analysieren.';

  @override
  String get delete_car => 'Auto löschen';

  @override
  String get sedan => 'Limousine';

  @override
  String get heavy_duty => 'Schwerlast';

  @override
  String get current_password => 'Aktuelles Passwort';

  @override
  String get password_requirement =>
      'Muss mindestens 8 Zeichen lang sein und sowohl Buchstaben als auch Zahlen enthalten.';

  @override
  String get current_password_is_not_correct =>
      'Das aktuelle Passwort ist falsch.';

  @override
  String get vehicle => 'Fahrzeug';

  @override
  String get driven_by => 'wird gefahren von';

  @override
  String get report_fuel_level =>
      'meldete einen schnellen Abfall des Kraftstoffstands.';

  @override
  String get report_collision_or_rollover =>
      'meldete eine schwere Kollision oder Überschlag (SOS).';

  @override
  String get report_overheating_or_dtc =>
      'meldete eine Motorüberhitzung oder erkannte DTC-Codes.';

  @override
  String get unknown_driver => 'Unbekannter Fahrer';

  @override
  String get mechanical_failure => 'Warnung vor mechanischem Defekt!';

  @override
  String get critical_crash => 'Schwerer Unfall erkannt!';

  @override
  String get fuel_leak => 'Warnung vor Kraftstoffleck!';

  @override
  String get today => 'Heute';

  @override
  String get yesterday => 'Gestern';

  @override
  String get day => 'Tag';

  @override
  String get days => 'Tage';

  @override
  String get week => 'Woche';

  @override
  String get weeks => 'Wochen';

  @override
  String get month => 'Monat';

  @override
  String get months => 'Monate';

  @override
  String get year => 'Jahr';

  @override
  String get years => 'Jahre';

  @override
  String get january => 'Januar';

  @override
  String get february => 'Februar';

  @override
  String get march => 'März';

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
  String get december => 'Dezember';

  @override
  String more_than_years(Object num) {
    return 'Seit #$num Jahren';
  }

  @override
  String get since_two_years => 'Seit 2 Jahren';

  @override
  String get since_year => 'Seit einem Jahr';

  @override
  String since_months(Object num) {
    return 'Seit #$num Monaten';
  }

  @override
  String get since_two_months => 'Seit 2 Monaten';

  @override
  String get since_month => 'Seit einem Monat';

  @override
  String since_weeks(Object num) {
    return 'Seit #$num Wochen';
  }

  @override
  String get since_two_weeks => 'Seit 2 Wochen';

  @override
  String get since_week => 'Seit einer Woche';

  @override
  String since_days(Object num) {
    return 'Seit #$num Tagen';
  }

  @override
  String get since_two_days => 'Seit 2 Tagen';

  @override
  String get since_day => 'Seit einem Tag';

  @override
  String get view_driving_events => 'Fahrereignisse anzeigen';

  @override
  String get coolant_temp => 'Kühlmitteltemperatur';

  @override
  String get dtc_codes => 'DTC-Codes';

  @override
  String get road_bump => 'Straßenbuckel';

  @override
  String get fuel_level => 'Kraftstoffstand';

  @override
  String get driving_behavior_score => 'Fahrverhaltensbewertung';

  @override
  String get event_major_crashes => 'Schwere Unfälle';

  @override
  String get event_speeding_incident => 'Geschwindigkeitsüberschreitungen';

  @override
  String get driver_id => 'Fahrer-ID';

  @override
  String get more_details => 'Weitere Details';

  @override
  String get events => 'Ereignisse';

  @override
  String get error_email_exists => 'Diese E-Mail existiert bereits';

  @override
  String get error_wrong_password => 'Falsches Passwort';

  @override
  String get error_phone_exists => 'Diese Telefonnummer wird bereits verwendet';

  @override
  String get error_sp_ch =>
      'Das Passwort muss mindestens ein Sonderzeichen enthalten';

  @override
  String get error_up =>
      'Das Passwort muss mindestens einen Großbuchstaben enthalten';

  @override
  String get error_low =>
      'Das Passwort muss mindestens einen Kleinbuchstaben enthalten';

  @override
  String get error_num => 'Das Passwort muss mindestens eine Zahl enthalten';

  @override
  String get error_required => 'Dieses Feld ist erforderlich';

  @override
  String get error_invalid_email => 'Ungültige E-Mail-Adresse';

  @override
  String error_password_short(Object length) {
    return 'Das Passwort muss mindestens $length Zeichen lang sein';
  }
}
