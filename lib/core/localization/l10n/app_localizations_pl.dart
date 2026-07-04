// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Tak';

  @override
  String get common_no => 'Nie';

  @override
  String get common_cancel => 'Anuluj';

  @override
  String get common_save => 'Zapisz';

  @override
  String get common_save_changes => 'Zapisz Zmiany';

  @override
  String get common_continue => 'Kontynuuj';

  @override
  String get common_next => 'Dalej';

  @override
  String get auth_login => 'Zaloguj się';

  @override
  String get auth_space_login => 'Zaloguj się';

  @override
  String get auth_logout => 'Wyloguj się';

  @override
  String get auth_confirm_logout => 'Czy na pewno chcesz się wylogować?';

  @override
  String get auth_signup => 'Zarejestruj się';

  @override
  String get auth_create_account => 'Utwórz Konto';

  @override
  String get auth_already_have_account => 'Masz już konto? ';

  @override
  String get auth_no_account => 'Nie masz konta?';

  @override
  String get auth_forgot_password => 'Zapomniałeś Hasła?';

  @override
  String get auth_reset_password => 'Zresetować Hasło?';

  @override
  String get auth_change_password => 'Zmień Hasło';

  @override
  String get auth_continue => 'Kontynuując, akceptujesz\n';

  @override
  String get auth_terms => 'Warunki Użytkowania i Politykę Prywatności';

  @override
  String get auth_email => 'E-mail';

  @override
  String get auth_password => 'Hasło';

  @override
  String get auth_confirm_password => 'Potwierdź Hasło';

  @override
  String get auth_new_password => 'Nowe Hasło';

  @override
  String get auth_confirm_new_password => 'Potwierdź Nowe Hasło';

  @override
  String get auth_enter_email => 'Wprowadź adres e-mail';

  @override
  String get auth_password_hint => 'Wprowadź hasło';

  @override
  String get full_name => 'Imię i Nazwisko';

  @override
  String get email_hint => 'przyklad@gmail.com';

  @override
  String get name_hint => 'Jan Kowalski';

  @override
  String get required_name => 'Imię i nazwisko jest wymagane';

  @override
  String get required_email => 'E-mail jest wymagany';

  @override
  String get email_end => 'E-mail musi kończyć się na @gmail.com';

  @override
  String get required_password => 'Hasło jest wymagane';

  @override
  String get required_confirm_password => 'Potwierdzenie hasła jest wymagane';

  @override
  String get password_do_not_match => 'Hasła nie są zgodne';

  @override
  String get min_password =>
      'Hasło musi mieć co najmniej 8 znaków i zawierać cyfry';

  @override
  String get send_verification_code => 'Wyślij Kod Weryfikacyjny';

  @override
  String get password_changed_successfully =>
      'Hasło Zostało\nPomyślnie Zmienione';

  @override
  String get forget_password_title =>
      'Wprowadź e-mail powiązany z kontem, a wyślemy Ci PIN bezpieczeństwa do zresetowania hasła.';

  @override
  String get auth_security_pin => 'PIN Bezpieczeństwa';

  @override
  String get auth_enter_pin => 'Wprowadź PIN bezpieczeństwa';

  @override
  String get verify => 'Weryfikuj';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Wyślij ponownie za ${seconds}s';
  }

  @override
  String get home_title => 'Strona Główna';

  @override
  String get home_welcome => 'Cześć, Witaj Ponownie';

  @override
  String get home_good_morning => 'Dzień Dobry';

  @override
  String get home_good_afternoon => 'Dzień dobry';

  @override
  String get home_good_evening => 'Dobry wieczór';

  @override
  String get home_looks_good => 'Wygląda\nDobrze';

  @override
  String get home_safety_score => 'Przegląd Oceny Bezpieczeństwa';

  @override
  String get home_total_accidents => 'Łączna Liczba Wypadków';

  @override
  String get total_active_cars => 'Łącznie Aktywnych Samochodów';

  @override
  String get total_cars => 'Łącznie Samochodów';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% Twoich samochodów jest aktywnych';
  }

  @override
  String get car_section_title => 'Samochody';

  @override
  String get car_view_all => 'Zobacz Samochody';

  @override
  String get car_add => 'Dodaj Samochód';

  @override
  String get car_edit => 'Edytuj Samochód';

  @override
  String get car_name => 'Nazwa Samochodu';

  @override
  String get car_plate => 'Tablica Rejestracyjna';

  @override
  String get car_type => 'Typ Samochodu';

  @override
  String get car_driver_name => 'Imię Kierowcy';

  @override
  String car_item_title(Object id) {
    return 'Samochód #$id';
  }

  @override
  String get tracking_live => 'Śledzenie na Żywo';

  @override
  String get tracking_last_updates => 'Ostatnie Aktualizacje';

  @override
  String get event_title => 'Zdarzenia Podczas Jazdy';

  @override
  String get event_speeding => 'Przekroczenie Prędkości';

  @override
  String get event_hard_braking => 'Gwałtowne Hamowanie';

  @override
  String get event_aggressive_turns => 'Agresywne Zakręty';

  @override
  String get event_crash => 'Wypadek';

  @override
  String event_location(Object location) {
    return 'W $location';
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
  String get event_severity => 'Nasilenie';

  @override
  String get event_severity_low => 'Niskie';

  @override
  String get event_severity_medium => 'Średnie';

  @override
  String get event_severity_high => 'Wysokie';

  @override
  String get event_severity_critical => 'Krytyczne';

  @override
  String get event_reason => 'Przyczyna';

  @override
  String get event_last_speed => 'Ostatnia Zarejestrowana Prędkość';

  @override
  String get notification_title => 'Powiadomienia';

  @override
  String get notification_today => 'Dzisiaj';

  @override
  String get notification_yesterday => 'Wczoraj';

  @override
  String get notification_earlier => 'Wcześniej W Tym Tygodniu';

  @override
  String get notification_fuel_alert => 'Alarm Wycieku Paliwa!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Pojazd $car prowadzony przez $driver zgłosił gwałtowny spadek poziomu paliwa.';
  }

  @override
  String get notification_crash_alert => 'Wykryto krytyczne zderzenie!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Pojazd $car prowadzony przez $driver zgłosił poważną kolizję.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Edytuj Mój Profil';

  @override
  String get update_profile => 'Zaktualizuj Profil';

  @override
  String get user_name => 'Nazwa Użytkownika';

  @override
  String get security_title => 'Bezpieczeństwo';

  @override
  String get change_password => 'Zmień Hasło';

  @override
  String get settings_title => 'Ustawienia';

  @override
  String get settings_notifications => 'Ustawienia Powiadomień';

  @override
  String get settings_general_notifications => 'Ogólne Powiadomienia';

  @override
  String get account_settings => 'Ustawienia Konta';

  @override
  String get push_notification => 'Powiadomienia Push';

  @override
  String get dark_mode => 'Tryb Ciemny Włączony';

  @override
  String get help_title => 'Centrum Pomocy';

  @override
  String get help_and_faq => 'Pomoc & Często Zadawane Pytania';

  @override
  String get help_contact => 'Skontaktuj Się z Nami';

  @override
  String get help_faq => 'Często Zadawane Pytania';

  @override
  String get how_help => 'Jak Możemy Ci Pomóc?';

  @override
  String get on_wh_num => 'Na Numer WhatsApp';

  @override
  String get language => 'Język';

  @override
  String get question1 => 'Jak używać BlackBox?';

  @override
  String get answer1 =>
      'Zainstaluj urządzenie BlackBox w samochodzie, zaloguj się do aplikacji i zacznij jeździć. Aplikacja automatycznie będzie rejestrować i wyświetlać dane dotyczące jazdy.';

  @override
  String get question2 => 'Ile kosztuje korzystanie z BlackBox?';

  @override
  String get answer2 =>
      'Koszt zależy od wybranego planu i usług. Skontaktuj się z firmą w celu uzyskania szczegółów cenowych.';

  @override
  String get question3 => 'Jak skontaktować się z pomocą techniczną?';

  @override
  String get answer3 =>
      'Możesz skontaktować się z pomocą techniczną przez WhatsApp, używając oficjalnego numeru firmy, lub odwiedzając biuro firmy w godzinach pracy.';

  @override
  String get question4 => 'Jak zresetować hasło, jeśli je zapomnę?';

  @override
  String get answer4 =>
      'Użyj opcji \'Zapomniałem hasła\' na ekranie logowania i postępuj zgodnie z instrukcjami, aby zresetować hasło.';

  @override
  String get question5 =>
      'Czy istnieją środki ochrony prywatności lub bezpieczeństwa danych?';

  @override
  String get answer5 =>
      'Tak. Twoje dane są bezpiecznie przechowywane i chronione, a nie są udostępniane bez Twojej zgody, z wyjątkiem przypadków wymaganych przez prawo.';

  @override
  String get question6 => 'Czy mogę dostosować ustawienia w aplikacji?';

  @override
  String get answer6 =>
      'Tak. Możesz dostosować dostępne ustawienia, takie jak powiadomienia i preferencje, w aplikacji.';

  @override
  String get question7 => 'Jak mogę usunąć swoje konto?';

  @override
  String get answer7 =>
      'Aby usunąć konto, skontaktuj się z firmą przez WhatsApp lub odwiedź biuro firmy.';

  @override
  String get question8 => 'Jak uzyskać dostęp do historii analiz?';

  @override
  String get answer8 =>
      'Możesz przeglądać poprzednie trasy i analizy jazdy w sekcji Historia lub Analizy w aplikacji.';

  @override
  String get question9 => 'Czy mogę korzystać z aplikacji offline?';

  @override
  String get answer9 =>
      'Aplikacja ma ograniczoną funkcjonalność offline. Połączenie z internetem jest wymagane do synchronizacji danych i dostępu do wszystkich funkcji.';

  @override
  String get terms_title => 'Regulamin';

  @override
  String get terms_accept => 'Akceptuj regulamin';

  @override
  String get terms_full =>
      '1. Akceptacja Warunków\nInstalując lub korzystając z tej aplikacji, zgadzasz się na niniejszy Regulamin. Jeśli nie zgadzasz się, zaprzestań korzystania z aplikacji.\n\n2. Cel Aplikacji\nAplikacja jest pojazdem czarnej skrzynki i systemem telematycznym służącym do monitorowania wydajności pojazdu i zachowania kierowcy wyłącznie w celach informacyjnych, bezpieczeństwa i analitycznych.\n\n3. Zbierane Parametry Danych\nAplikacja może zbierać i przetwarzać dane dotyczące pojazdu i jazdy, w tym między innymi:\n\n• Prędkość pojazdu\n• Zużycie paliwa i poziom paliwa\n• Przyspieszenie i hamowanie\n• Zdarzenia gwałtownego hamowania i gwałtownego przyspieszania\n• Ostre zakręty\n• Dane lokalizacji GPS (szerokość i długość geograficzna)\n• Odległość, czas trwania i czas podróży\n• Dane identyfikacyjne kierowcy i pojazdu\n\nKorzystając z aplikacji, wyraźnie zgadzasz się na gromadzenie tych parametrów.\n\n4. Dostępność Usług\nNieprzerwana, działająca w czasie rzeczywistym lub bezawaryjnie praca aplikacji nie jest gwarantowana ze względu na ograniczenia techniczne.';

  @override
  String get validation_password_mismatch => 'Hasła nie są zgodne';

  @override
  String get validation_invalid_phone => 'Nieprawidłowy numer telefonu';

  @override
  String get validation_incorrect_pin => 'Nieprawidłowy PIN';

  @override
  String get validation_empty_fields => 'Proszę wypełnić wszystkie pola';

  @override
  String get empty_no_cars => 'Nie znaleziono samochodów';

  @override
  String get empty_no_notifications => 'Brak powiadomień';

  @override
  String get empty_no_events => 'Brak dostępnych zdarzeń';

  @override
  String get status_loading => 'Ładowanie...';

  @override
  String get status_success => 'Operacja zakończona sukcesem';

  @override
  String get status_error => 'Coś poszło nie tak';

  @override
  String get confirm_delete_car => 'Czy na pewno chcesz usunąć ten samochód?';

  @override
  String get confirm_reset_password => 'Czy na pewno chcesz zresetować hasło?';

  @override
  String get search => 'Szukaj';

  @override
  String get search_hint => 'Szukaj...';

  @override
  String get search_no_results => 'Nie znaleziono wyników';

  @override
  String get filter => 'Filtruj';

  @override
  String get sort => 'Sortuj';

  @override
  String get onboarding_title_1 => 'Witamy';

  @override
  String get onboarding_desc_1 => 'W Black Box Manager';

  @override
  String get onboarding_title_2 => 'Poznaj Historię Swojej Jazdy,';

  @override
  String get onboarding_desc_2 =>
      'Rejestrując każdą podróż, analizując każdy kilometr.';

  @override
  String get delete_car => 'Usuń samochód';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Ciężarowy';

  @override
  String get current_password => 'Obecne hasło';

  @override
  String get password_requirement =>
      'Musi mieć co najmniej 8 znaków i zawierać zarówno litery, jak i cyfry.';

  @override
  String get current_password_is_not_correct =>
      'Obecne hasło jest nieprawidłowe.';

  @override
  String get vehicle => 'Pojazd';

  @override
  String get driven_by => 'jest prowadzony przez';

  @override
  String get report_fuel_level => 'zgłosił szybki spadek poziomu paliwa.';

  @override
  String get report_collision_or_rollover =>
      'zgłosił poważną kolizję lub dachowanie (sos).';

  @override
  String get report_overheating_or_dtc =>
      'zgłosił przegrzanie silnika lub wykryte kody DTC.';

  @override
  String get unknown_driver => 'Nieznany kierowca';

  @override
  String get mechanical_failure => 'Ostrzeżenie o awarii mechanicznej!';

  @override
  String get critical_crash => 'Wykryto krytyczną kolizję!';

  @override
  String get fuel_leak => 'Alert wycieku paliwa!';

  @override
  String get today => 'Dzisiaj';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String get day => 'dzień';

  @override
  String get days => 'dni';

  @override
  String get week => 'tydzień';

  @override
  String get weeks => 'tygodnie';

  @override
  String get month => 'miesiąc';

  @override
  String get months => 'miesięcy';

  @override
  String get year => 'rok';

  @override
  String get years => 'lat';

  @override
  String get january => 'Styczeń';

  @override
  String get february => 'Luty';

  @override
  String get march => 'Marzec';

  @override
  String get april => 'Kwiecień';

  @override
  String get may => 'Maj';

  @override
  String get june => 'Czerwiec';

  @override
  String get july => 'Lipiec';

  @override
  String get august => 'Sierpień';

  @override
  String get september => 'Wrzesień';

  @override
  String get october => 'Październik';

  @override
  String get november => 'Listopad';

  @override
  String get december => 'Grudzień';

  @override
  String more_than_years(Object num) {
    return 'Od #$num lat';
  }

  @override
  String get since_two_years => 'Od 2 lat';

  @override
  String get since_year => 'Od roku';

  @override
  String since_months(Object num) {
    return 'Od #$num miesięcy';
  }

  @override
  String get since_two_months => 'Od 2 miesięcy';

  @override
  String get since_month => 'Od miesiąca';

  @override
  String since_weeks(Object num) {
    return 'Od #$num tygodni';
  }

  @override
  String get since_two_weeks => 'Od 2 tygodni';

  @override
  String get since_week => 'Od tygodnia';

  @override
  String since_days(Object num) {
    return 'Od #$num dni';
  }

  @override
  String get since_two_days => 'Od 2 dni';

  @override
  String get since_day => 'Od dnia';

  @override
  String get view_driving_events => 'Zobacz zdarzenia jazdy';

  @override
  String get coolant_temp => 'Temperatura płynu chłodzącego';

  @override
  String get dtc_codes => 'Kody DTC';

  @override
  String get road_bump => 'Wybrzuszenie drogi';

  @override
  String get fuel_level => 'Poziom paliwa';

  @override
  String get driving_behavior_score => 'Wynik zachowania za kierownicą';

  @override
  String get event_major_crashes => 'Poważne kolizje';

  @override
  String get event_speeding_incident => 'Incydenty przekroczenia prędkości';

  @override
  String get driver_id => 'ID kierowcy';

  @override
  String get more_details => 'Więcej szczegółów';

  @override
  String get events => 'Zdarzenia';

  @override
  String get error_email_exists => 'Ten adres e-mail już istnieje';

  @override
  String get error_wrong_password => 'Nieprawidłowe hasło';

  @override
  String get error_phone_exists => 'Ten numer telefonu jest już używany';

  @override
  String get error_sp_ch =>
      'Hasło musi zawierać co najmniej jeden znak specjalny';

  @override
  String get error_up => 'Hasło musi zawierać co najmniej jedną wielką literę';

  @override
  String get error_low => 'Hasło musi zawierać co najmniej jedną małą literę';

  @override
  String get error_num => 'Hasło musi zawierać co najmniej jedną cyfrę';

  @override
  String get error_required => 'To pole jest wymagane';

  @override
  String get error_invalid_email => 'Nieprawidłowy adres e-mail';

  @override
  String error_password_short(Object length) {
    return 'Hasło musi mieć co najmniej $length znaków';
  }
}
