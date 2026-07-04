// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ja';

  @override
  String get common_no => 'Nee';

  @override
  String get common_cancel => 'Annuleren';

  @override
  String get common_save => 'Opslaan';

  @override
  String get common_save_changes => 'Wijzigingen Opslaan';

  @override
  String get common_continue => 'Doorgaan';

  @override
  String get common_next => 'Volgende';

  @override
  String get auth_login => 'Inloggen';

  @override
  String get auth_space_login => 'Inloggen';

  @override
  String get auth_logout => 'Uitloggen';

  @override
  String get auth_confirm_logout => 'Weet u zeker dat u wilt uitloggen?';

  @override
  String get auth_signup => 'Aanmelden';

  @override
  String get auth_create_account => 'Account Aanmaken';

  @override
  String get auth_already_have_account => 'Heeft u al een account? ';

  @override
  String get auth_no_account => 'Heeft u geen account?';

  @override
  String get auth_forgot_password => 'Wachtwoord Vergeten?';

  @override
  String get auth_reset_password => 'Wachtwoord Opnieuw Instellen?';

  @override
  String get auth_change_password => 'Wachtwoord Wijzigen';

  @override
  String get auth_continue => 'Door verder te gaan, gaat u akkoord met de\n';

  @override
  String get auth_terms => 'Gebruiksvoorwaarden en Privacybeleid';

  @override
  String get auth_email => 'E-mail';

  @override
  String get auth_password => 'Wachtwoord';

  @override
  String get auth_confirm_password => 'Wachtwoord Bevestigen';

  @override
  String get auth_new_password => 'Nieuw Wachtwoord';

  @override
  String get auth_confirm_new_password => 'Nieuw Wachtwoord Bevestigen';

  @override
  String get auth_enter_email => 'Voer e-mailadres in';

  @override
  String get auth_password_hint => 'Voer uw wachtwoord in';

  @override
  String get full_name => 'Volledige Naam';

  @override
  String get email_hint => 'voorbeeld@gmail.com';

  @override
  String get name_hint => 'Jan de Vries';

  @override
  String get required_name => 'Volledige naam is verplicht';

  @override
  String get required_email => 'E-mail is verplicht';

  @override
  String get email_end => 'E-mail moet eindigen op @gmail.com';

  @override
  String get required_password => 'Wachtwoord is verplicht';

  @override
  String get required_confirm_password => 'Wachtwoordbevestiging is verplicht';

  @override
  String get password_do_not_match => 'Wachtwoorden komen niet overeen';

  @override
  String get min_password =>
      'Wachtwoord moet minimaal 8 tekens bevatten en cijfers';

  @override
  String get send_verification_code => 'Verificatiecode Versturen';

  @override
  String get password_changed_successfully => 'Wachtwoord Succesvol\nGewijzigd';

  @override
  String get forget_password_title =>
      'Voer het e-mailadres van uw account in en we sturen u een beveiligings-PIN voor het opnieuw instellen van uw wachtwoord.';

  @override
  String get auth_security_pin => 'Beveiligings-PIN';

  @override
  String get auth_enter_pin => 'Voer beveiligings-PIN in';

  @override
  String get verify => 'Verifiëren';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Opnieuw versturen over ${seconds}s';
  }

  @override
  String get home_title => 'Home';

  @override
  String get home_welcome => 'Hoi, Welkom Terug';

  @override
  String get home_good_morning => 'Goedemorgen';

  @override
  String get home_good_afternoon => 'Goedemiddag';

  @override
  String get home_good_evening => 'Goedenavond';

  @override
  String get home_looks_good => 'Ziet er\nGoed Uit';

  @override
  String get home_safety_score => 'Overzicht Veiligheidsscore';

  @override
  String get home_total_accidents => 'Totaal Ongelukken';

  @override
  String get total_active_cars => 'Totaal Actieve Auto\'s';

  @override
  String get total_cars => 'Totaal Auto\'s';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% van uw auto\'s is actief';
  }

  @override
  String get car_section_title => 'Auto\'s';

  @override
  String get car_view_all => 'Auto\'s Bekijken';

  @override
  String get car_add => 'Auto Toevoegen';

  @override
  String get car_edit => 'Auto Bewerken';

  @override
  String get car_name => 'Autonaam';

  @override
  String get car_plate => 'Kenteken';

  @override
  String get car_type => 'Autotype';

  @override
  String get car_driver_name => 'Naam Bestuurder';

  @override
  String car_item_title(Object id) {
    return 'Auto #$id';
  }

  @override
  String get tracking_live => 'Live Tracking';

  @override
  String get tracking_last_updates => 'Laatste Updates';

  @override
  String get event_title => 'Rijgebeurtenissen';

  @override
  String get event_speeding => 'Snelheidsovertredingen';

  @override
  String get event_hard_braking => 'Hard Remmen';

  @override
  String get event_aggressive_turns => 'Agressieve Bochten';

  @override
  String get event_crash => 'Botsing';

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
    return '$speed km/u';
  }

  @override
  String get event_severity => 'Ernst';

  @override
  String get event_severity_low => 'Laag';

  @override
  String get event_severity_medium => 'Gemiddeld';

  @override
  String get event_severity_high => 'Hoog';

  @override
  String get event_severity_critical => 'Kritisch';

  @override
  String get event_reason => 'Reden';

  @override
  String get event_last_speed => 'Laatste Geregistreerde Snelheid';

  @override
  String get notification_title => 'Meldingen';

  @override
  String get notification_today => 'Vandaag';

  @override
  String get notification_yesterday => 'Gisteren';

  @override
  String get notification_earlier => 'Eerder Deze Week';

  @override
  String get notification_fuel_alert => 'Brandstoflek Waarschuwing!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Voertuig $car bestuurd door $driver meldde een snelle daling van het brandstofniveau.';
  }

  @override
  String get notification_crash_alert => 'Kritieke botsing gedetecteerd!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Voertuig $car bestuurd door $driver meldde een ernstige botsing.';
  }

  @override
  String get profile_title => 'Profiel';

  @override
  String get profile_edit => 'Mijn Profiel Bewerken';

  @override
  String get update_profile => 'Profiel Bijwerken';

  @override
  String get user_name => 'Gebruikersnaam';

  @override
  String get security_title => 'Beveiliging';

  @override
  String get change_password => 'Wachtwoord Wijzigen';

  @override
  String get settings_title => 'Instellingen';

  @override
  String get settings_notifications => 'Meldingsinstellingen';

  @override
  String get settings_general_notifications => 'Algemene Melding';

  @override
  String get account_settings => 'Accountinstellingen';

  @override
  String get push_notification => 'Pushmeldingen';

  @override
  String get dark_mode => 'Donkere Modus Aan';

  @override
  String get help_title => 'Helpcentrum';

  @override
  String get help_and_faq => 'Hulp & Veelgestelde Vragen';

  @override
  String get help_contact => 'Neem Contact Op';

  @override
  String get help_faq => 'Veelgestelde Vragen';

  @override
  String get how_help => 'Hoe Kunnen Wij U Helpen?';

  @override
  String get on_wh_num => 'Op WhatsApp Nummer';

  @override
  String get language => 'Taal';

  @override
  String get question1 => 'Hoe gebruik ik BlackBox?';

  @override
  String get answer1 =>
      'Installeer het BlackBox-apparaat in uw auto, log in op de app en begin met rijden. De app registreert en toont uw rijgegevens automatisch.';

  @override
  String get question2 => 'Hoeveel kost het gebruik van BlackBox?';

  @override
  String get answer2 =>
      'De kosten zijn afhankelijk van het geselecteerde plan en de diensten. Neem contact op met het bedrijf voor prijsdetails.';

  @override
  String get question3 => 'Hoe neem ik contact op met de ondersteuning?';

  @override
  String get answer3 =>
      'U kunt contact opnemen met de ondersteuning via WhatsApp via het officiële bedrijfsnummer of door het bedrijfskantoor te bezoeken tijdens kantooruren.';

  @override
  String get question4 =>
      'Hoe kan ik mijn wachtwoord opnieuw instellen als ik het vergeet?';

  @override
  String get answer4 =>
      'Gebruik de optie \'Wachtwoord Vergeten\' op het inlogscherm en volg de instructies om uw wachtwoord opnieuw in te stellen.';

  @override
  String get question5 =>
      'Zijn er privacy- of gegevensbeveiligingsmaatregelen aanwezig?';

  @override
  String get answer5 =>
      'Ja. Uw gegevens worden veilig opgeslagen en beschermd en worden niet gedeeld zonder uw toestemming, behalve wanneer wettelijk vereist.';

  @override
  String get question6 => 'Kan ik instellingen in de applicatie aanpassen?';

  @override
  String get answer6 =>
      'Ja. U kunt beschikbare instellingen zoals meldingen en voorkeuren aanpassen binnen de app.';

  @override
  String get question7 => 'Hoe kan ik mijn account verwijderen?';

  @override
  String get answer7 =>
      'Om uw account te verwijderen, neemt u contact op met het bedrijf via WhatsApp of bezoekt u het bedrijfskantoor.';

  @override
  String get question8 => 'Hoe krijg ik toegang tot mijn analysegeschiedenis?';

  @override
  String get answer8 =>
      'U kunt uw vroegere ritten en rijanalyses bekijken in de sectie Geschiedenis of Analyses van de app.';

  @override
  String get question9 => 'Kan ik de app offline gebruiken?';

  @override
  String get answer9 =>
      'De app heeft beperkte offline functionaliteit. Een internetverbinding is vereist om gegevens te synchroniseren en toegang te krijgen tot alle functies.';

  @override
  String get terms_title => 'Algemene Voorwaarden';

  @override
  String get terms_accept => 'Accepteer de algemene voorwaarden';

  @override
  String get terms_full =>
      '1. Acceptatie van Voorwaarden\nDoor het installeren of gebruiken van deze applicatie gaat u akkoord met deze Algemene Voorwaarden. Als u niet akkoord gaat, stop dan met het gebruik van de app.\n\n2. Doel van de Applicatie\nDeze applicatie is een voertuig-blackbox en telematisch systeem dat wordt gebruikt om voertuigprestaties en rijgedrag te monitoren, uitsluitend voor informatieve, veiligheids- en analytische doeleinden.\n\n3. Verzamelde Gegevensparameters\nDe applicatie kan voertuig- en rijgegevens verzamelen en verwerken, inclusief maar niet beperkt tot:\n\n• Voertuigsnelheid\n• Brandstofverbruik en brandstofniveau\n• Versnelling en vertraging\n• Harde rem- en snelle versnellingsgebeurtenissen\n• Scherpe bochten\n• GPS-locatiegegevens (breedte- en lengtegraad)\n• Reisafstand, duur en tijd\n• Bestuurder- en voertuigidentificatiegegevens\n\nDoor de app te gebruiken, stemt u expliciet in met de verzameling van deze parameters.\n\n4. Beschikbaarheid van de Dienst\nContinue, realtime of foutloze werking van de app is niet gegarandeerd vanwege technische beperkingen.';

  @override
  String get validation_password_mismatch => 'Wachtwoorden komen niet overeen';

  @override
  String get validation_invalid_phone => 'Ongeldig telefoonnummer';

  @override
  String get validation_incorrect_pin => 'Onjuiste PIN';

  @override
  String get validation_empty_fields => 'Vul alle velden in';

  @override
  String get empty_no_cars => 'Geen auto\'s gevonden';

  @override
  String get empty_no_notifications => 'Nog geen meldingen';

  @override
  String get empty_no_events => 'Geen evenementen beschikbaar';

  @override
  String get status_loading => 'Laden...';

  @override
  String get status_success => 'Bewerking geslaagd';

  @override
  String get status_error => 'Er is iets misgegaan';

  @override
  String get confirm_delete_car =>
      'Weet u zeker dat u deze auto wilt verwijderen?';

  @override
  String get confirm_reset_password =>
      'Weet u zeker dat u uw wachtwoord opnieuw wilt instellen?';

  @override
  String get search => 'Zoeken';

  @override
  String get search_hint => 'Zoeken...';

  @override
  String get search_no_results => 'Geen resultaten gevonden';

  @override
  String get filter => 'Filteren';

  @override
  String get sort => 'Sorteren';

  @override
  String get onboarding_title_1 => 'Welkom';

  @override
  String get onboarding_desc_1 => 'Bij Black Box Manager';

  @override
  String get onboarding_title_2 => 'Zie het Verhaal Achter Uw Rit,';

  @override
  String get onboarding_desc_2 =>
      'Elke reis opnemen, elke kilometer analyseren.';

  @override
  String get delete_car => 'Auto verwijderen';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Zwaar';

  @override
  String get current_password => 'Huidig wachtwoord';

  @override
  String get password_requirement =>
      'Moet minstens 8 tekens lang zijn en zowel letters als cijfers bevatten.';

  @override
  String get current_password_is_not_correct =>
      'Het huidige wachtwoord is onjuist.';

  @override
  String get vehicle => 'Voertuig';

  @override
  String get driven_by => 'wordt bestuurd door';

  @override
  String get report_fuel_level =>
      'meldde een snelle daling van het brandstofniveau.';

  @override
  String get report_collision_or_rollover =>
      'meldde een ernstige botsing of kanteling (sos).';

  @override
  String get report_overheating_or_dtc =>
      'meldde oververhitting van de motor of gedetecteerde DTC-codes.';

  @override
  String get unknown_driver => 'Onbekende bestuurder';

  @override
  String get mechanical_failure => 'Waarschuwing mechanische storing!';

  @override
  String get critical_crash => 'Kritieke botsing gedetecteerd!';

  @override
  String get fuel_leak => 'Brandstoflek alarm!';

  @override
  String get today => 'Vandaag';

  @override
  String get yesterday => 'Gisteren';

  @override
  String get day => 'dag';

  @override
  String get days => 'dagen';

  @override
  String get week => 'week';

  @override
  String get weeks => 'weken';

  @override
  String get month => 'maand';

  @override
  String get months => 'maanden';

  @override
  String get year => 'jaar';

  @override
  String get years => 'jaar';

  @override
  String get january => 'Januari';

  @override
  String get february => 'Februari';

  @override
  String get march => 'Maart';

  @override
  String get april => 'April';

  @override
  String get may => 'Mei';

  @override
  String get june => 'Juni';

  @override
  String get july => 'Juli';

  @override
  String get august => 'Augustus';

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
    return 'Al #$num jaar';
  }

  @override
  String get since_two_years => 'Al 2 jaar';

  @override
  String get since_year => 'Al een jaar';

  @override
  String since_months(Object num) {
    return 'Al #$num maanden';
  }

  @override
  String get since_two_months => 'Al 2 maanden';

  @override
  String get since_month => 'Al een maand';

  @override
  String since_weeks(Object num) {
    return 'Al #$num weken';
  }

  @override
  String get since_two_weeks => 'Al 2 weken';

  @override
  String get since_week => 'Al een week';

  @override
  String since_days(Object num) {
    return 'Al #$num dagen';
  }

  @override
  String get since_two_days => 'Al 2 dagen';

  @override
  String get since_day => 'Al een dag';

  @override
  String get view_driving_events => 'Bekijk rijgebeurtenissen';

  @override
  String get coolant_temp => 'Koelvloeistoftemperatuur';

  @override
  String get dtc_codes => 'DTC-codes';

  @override
  String get road_bump => 'Verkeersdrempel';

  @override
  String get fuel_level => 'Brandstofniveau';

  @override
  String get driving_behavior_score => 'Rijgedrag score';

  @override
  String get event_major_crashes => 'Ernstige botsingen';

  @override
  String get event_speeding_incident => 'Snelheidsovertredingen';

  @override
  String get driver_id => 'Bestuurder ID';

  @override
  String get more_details => 'Meer details';

  @override
  String get events => 'Gebeurtenissen';

  @override
  String get error_email_exists => 'Dit e-mailadres bestaat al';

  @override
  String get error_wrong_password => 'Onjuist wachtwoord';

  @override
  String get error_phone_exists => 'Dit telefoonnummer is al in gebruik';

  @override
  String get error_sp_ch =>
      'Wachtwoord moet minimaal één speciaal teken bevatten';

  @override
  String get error_up => 'Wachtwoord moet minimaal één hoofdletter bevatten';

  @override
  String get error_low => 'Wachtwoord moet minimaal één kleine letter bevatten';

  @override
  String get error_num => 'Wachtwoord moet minimaal één cijfer bevatten';

  @override
  String get error_required => 'Dit veld is verplicht';

  @override
  String get error_invalid_email => 'Ongeldig e-mailadres';

  @override
  String error_password_short(Object length) {
    return 'Wachtwoord moet minimaal $length tekens bevatten';
  }
}
