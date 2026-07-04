// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get app_title => 'Додаток BlackBox';

  @override
  String get common_yes => 'Так';

  @override
  String get common_no => 'Ні';

  @override
  String get common_cancel => 'Скасувати';

  @override
  String get common_save => 'Зберегти';

  @override
  String get common_save_changes => 'Зберегти зміни';

  @override
  String get common_continue => 'Продовжити';

  @override
  String get common_next => 'Далі';

  @override
  String get auth_login => 'Увійти';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'Вийти';

  @override
  String get auth_confirm_logout => 'Ви впевнені, що хочете вийти?';

  @override
  String get auth_signup => 'Реєстрація';

  @override
  String get auth_create_account => 'Створити обліковий запис';

  @override
  String get auth_already_have_account => 'Вже маєте обліковий запис? ';

  @override
  String get auth_no_account => 'Немає облікового запису?';

  @override
  String get auth_forgot_password => 'Забули пароль?';

  @override
  String get auth_reset_password => 'Скинути пароль?';

  @override
  String get auth_change_password => 'Змінити пароль';

  @override
  String get auth_continue => 'Продовжуючи, ви погоджуєтеся з\n';

  @override
  String get auth_terms => 'Умовами використання та Політикою конфіденційності';

  @override
  String get auth_email => 'Електронна пошта';

  @override
  String get auth_password => 'Пароль';

  @override
  String get auth_confirm_password => 'Підтвердити пароль';

  @override
  String get auth_new_password => 'Новий пароль';

  @override
  String get auth_confirm_new_password => 'Підтвердити новий пароль';

  @override
  String get auth_enter_email => 'Введіть адресу електронної пошти';

  @override
  String get auth_password_hint => 'Введіть ваш пароль';

  @override
  String get full_name => 'Повне ім\'я';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'Повне ім\'я обов\'язкове';

  @override
  String get required_email => 'Електронна пошта обов\'язкова';

  @override
  String get email_end =>
      'Електронна пошта повинна закінчуватися на @gmail.com';

  @override
  String get required_password => 'Пароль обов\'язковий';

  @override
  String get required_confirm_password => 'Підтвердження пароля обов\'язкове';

  @override
  String get password_do_not_match => 'Паролі не співпадають';

  @override
  String get min_password =>
      'Пароль повинен містити щонайменше 8 символів і цифри';

  @override
  String get send_verification_code => 'Надіслати код підтвердження';

  @override
  String get password_changed_successfully => 'Пароль успішно\nзмінено';

  @override
  String get forget_password_title =>
      'Введіть електронну пошту, пов’язану з вашим обліковим записом, і ми надішлемо вам PIN-код для скидання пароля.';

  @override
  String get auth_security_pin => 'PIN-код безпеки';

  @override
  String get auth_enter_pin => 'Введіть PIN-код безпеки';

  @override
  String get verify => 'Підтвердити';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Надіслати знову через $secondsс';
  }

  @override
  String get home_title => 'Головна';

  @override
  String get home_welcome => 'Привіт, Ласкаво просимо назад';

  @override
  String get home_good_morning => 'Доброго ранку';

  @override
  String get home_good_afternoon => 'Добрий день';

  @override
  String get home_good_evening => 'Добрий вечір';

  @override
  String get home_looks_good => 'Виглядає\nДобре';

  @override
  String get home_safety_score => 'Огляд показника безпеки';

  @override
  String get home_total_accidents => 'Загальна кількість аварій';

  @override
  String get total_active_cars => 'Загальна кількість активних авто';

  @override
  String get total_cars => 'Загальна кількість авто';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% ваших авто активні';
  }

  @override
  String get car_section_title => 'Автомобілі';

  @override
  String get car_view_all => 'Переглянути всі авто';

  @override
  String get car_add => 'Додати авто';

  @override
  String get car_edit => 'Редагувати авто';

  @override
  String get car_name => 'Назва авто';

  @override
  String get car_plate => 'Номерний знак';

  @override
  String get car_type => 'Тип авто';

  @override
  String get car_driver_name => 'Ім\'я водія';

  @override
  String car_item_title(Object id) {
    return 'Авто #$id';
  }

  @override
  String get tracking_live => 'Відстеження в реальному часі';

  @override
  String get tracking_last_updates => 'Останні оновлення';

  @override
  String get event_title => 'Події водіння';

  @override
  String get event_speeding => 'Перевищення швидкості';

  @override
  String get event_hard_braking => 'Різке гальмування';

  @override
  String get event_aggressive_turns => 'Агресивні повороти';

  @override
  String get event_crash => 'Аварія';

  @override
  String event_location(Object location) {
    return 'У $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed км/год';
  }

  @override
  String get event_severity => 'Рівень тяжкості';

  @override
  String get event_severity_low => 'Низький';

  @override
  String get event_severity_medium => 'Середній';

  @override
  String get event_severity_high => 'Високий';

  @override
  String get event_severity_critical => 'Критичний';

  @override
  String get event_reason => 'Причина';

  @override
  String get event_last_speed => 'Остання зафіксована швидкість';

  @override
  String get notification_title => 'Сповіщення';

  @override
  String get notification_today => 'Сьогодні';

  @override
  String get notification_yesterday => 'Вчора';

  @override
  String get notification_earlier => 'Раніше цього тижня';

  @override
  String get notification_fuel_alert => 'Сигнал про витік палива!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Транспортний засіб $car під керуванням $driver повідомив про різке падіння рівня палива.';
  }

  @override
  String get notification_crash_alert => 'Виявлено критичну аварію!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Транспортний засіб $car під керуванням $driver повідомив про серйозне зіткнення.';
  }

  @override
  String get profile_title => 'Профіль';

  @override
  String get profile_edit => 'Редагувати мій профіль';

  @override
  String get update_profile => 'Оновити профіль';

  @override
  String get user_name => 'Ім\'я користувача';

  @override
  String get security_title => 'Безпека';

  @override
  String get change_password => 'Змінити пароль';

  @override
  String get settings_title => 'Налаштування';

  @override
  String get settings_notifications => 'Налаштування сповіщень';

  @override
  String get settings_general_notifications => 'Загальні сповіщення';

  @override
  String get account_settings => 'Налаштування облікового запису';

  @override
  String get push_notification => 'Push-сповіщення';

  @override
  String get dark_mode => 'Темний режим увімкнено';

  @override
  String get help_title => 'Центр допомоги';

  @override
  String get help_and_faq => 'Допомога та FAQ';

  @override
  String get help_contact => 'Зв\'язатися з нами';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Чим ми можемо вам допомогти?';

  @override
  String get on_wh_num => 'На номер WhatsApp';

  @override
  String get language => 'Мова';

  @override
  String get question1 => 'Як користуватися BlackBox?';

  @override
  String get answer1 =>
      'Встановіть пристрій BlackBox у свій автомобіль, увійдіть у додаток і починайте рух. Додаток автоматично записуватиме та відображатиме дані про ваше водіння.';

  @override
  String get question2 => 'Скільки коштує користування BlackBox?';

  @override
  String get answer2 =>
      'Вартість залежить від обраного тарифу та послуг. Будь ласка, зверніться до компанії за деталями ціноутворення.';

  @override
  String get question3 => 'Як зв\'язатися зі службою підтримки?';

  @override
  String get answer3 =>
      'Ви можете зв\'язатися зі службою підтримки через WhatsApp за офіційним номером компанії або відвідавши офіс компанії в робочий час.';

  @override
  String get question4 => 'Як скинути пароль, якщо я його забув?';

  @override
  String get answer4 =>
      'Використовуйте опцію «Забули пароль» на екрані входу та дотримуйтесь інструкцій.';

  @override
  String get question5 => 'Чи є заходи щодо конфіденційності та безпеки даних?';

  @override
  String get answer5 =>
      'Так. Ваші дані зберігаються в безпеці та захищені, і не передаються без вашої згоди, за винятком випадків, передбачених законом.';

  @override
  String get question6 => 'Чи можу я налаштувати параметри в додатку?';

  @override
  String get answer6 =>
      'Так. Ви можете налаштувати доступні параметри, такі як сповіщення та переваги, у додатку.';

  @override
  String get question7 => 'Як видалити мій обліковий запис?';

  @override
  String get answer7 =>
      'Щоб видалити обліковий запис, зверніться до компанії через WhatsApp або відвідайте офіс.';

  @override
  String get question8 => 'Як отримати доступ до історії аналітики?';

  @override
  String get answer8 =>
      'Ви можете переглянути минулі поїздки та аналітику водіння в розділі Історія або Аналітика додатка.';

  @override
  String get question9 => 'Чи можу я користуватися додатком офлайн?';

  @override
  String get answer9 =>
      'Додаток має обмежену функціональність офлайн. Для синхронізації даних та доступу до всіх функцій потрібне підключення до інтернету.';

  @override
  String get terms_title => 'Умови та положення';

  @override
  String get terms_accept => 'Прийняти умови та положення';

  @override
  String get terms_full =>
      '1. Прийняття умов\nВстановлюючи або використовуючи цей додаток, ви погоджуєтеся з цими Умовами та положеннями. Якщо ви не згодні, припиніть використання додатка.\n\n2. Призначення додатка\nЦей додаток є системою автомобільного чорного ящика та телематики, яка використовується для моніторингу характеристик автомобіля та поведінки водіння лише з інформаційною, безпековою та аналітичною метою.\n\n3. Параметри даних, що збираються\nДодаток може збирати та обробляти дані автомобіля та водіння, включаючи, але не обмежуючись:\n\n• Швидкість автомобіля\n• Витрата та рівень палива\n• Прискорення та уповільнення\n• Події різкого гальмування та різкого прискорення\n• Різкі повороти\n• Дані GPS (широта і довгота)\n• Відстань, тривалість і час поїздки\n• Дані ідентифікації водія та автомобіля\n\nВикористовуючи додаток, ви явно погоджуєтеся на збір цих параметрів.\n\n4. Доступність сервісу\nБезперервна, реального часу або безпомилкова робота додатка не гарантується через технічні обмеження.';

  @override
  String get validation_password_mismatch => 'Паролі не співпадають';

  @override
  String get validation_invalid_phone => 'Неправильний номер телефону';

  @override
  String get validation_incorrect_pin => 'Неправильний PIN-код';

  @override
  String get validation_empty_fields => 'Будь ласка, заповніть усі поля';

  @override
  String get empty_no_cars => 'Автомобілів не знайдено';

  @override
  String get empty_no_notifications => 'Сповіщень поки немає';

  @override
  String get empty_no_events => 'Подій немає';

  @override
  String get status_loading => 'Завантаження...';

  @override
  String get status_success => 'Операція виконана успішно';

  @override
  String get status_error => 'Щось пішло не так';

  @override
  String get confirm_delete_car =>
      'Ви впевнені, що хочете видалити цей автомобіль?';

  @override
  String get confirm_reset_password => 'Ви впевнені, що хочете скинути пароль?';

  @override
  String get search => 'Пошук';

  @override
  String get search_hint => 'Пошук...';

  @override
  String get search_no_results => 'Нічого не знайдено';

  @override
  String get filter => 'Фільтр';

  @override
  String get sort => 'Сортувати';

  @override
  String get onboarding_title_1 => 'Ласкаво просимо';

  @override
  String get onboarding_desc_1 => 'До Black Box Manager';

  @override
  String get onboarding_title_2 => 'Побачте історію свого водіння,';

  @override
  String get onboarding_desc_2 =>
      'Записуючи кожну поїздку, аналізуючи кожну милю.';

  @override
  String get delete_car => 'Видалити автомобіль';

  @override
  String get sedan => 'Седан';

  @override
  String get heavy_duty => 'Важкий';

  @override
  String get current_password => 'Поточний пароль';

  @override
  String get password_requirement =>
      'Повинен містити не менше 8 символів, включаючи літери та цифри.';

  @override
  String get current_password_is_not_correct => 'Поточний пароль невірний.';

  @override
  String get vehicle => 'Транспортний засіб';

  @override
  String get driven_by => 'керує';

  @override
  String get report_fuel_level => 'повідомив про швидке падіння рівня палива.';

  @override
  String get report_collision_or_rollover =>
      'повідомив про серйозне зіткнення або перекидання (sos).';

  @override
  String get report_overheating_or_dtc =>
      'повідомив про перегрів двигуна або виявлені коди DTC.';

  @override
  String get unknown_driver => 'Невідомий водій';

  @override
  String get mechanical_failure => 'Попередження про механічну несправність!';

  @override
  String get critical_crash => 'Виявлено критичне зіткнення!';

  @override
  String get fuel_leak => 'Сповіщення про витік палива!';

  @override
  String get today => 'Сьогодні';

  @override
  String get yesterday => 'Вчора';

  @override
  String get day => 'день';

  @override
  String get days => 'дні';

  @override
  String get week => 'тиждень';

  @override
  String get weeks => 'тижні';

  @override
  String get month => 'місяць';

  @override
  String get months => 'місяці';

  @override
  String get year => 'рік';

  @override
  String get years => 'роки';

  @override
  String get january => 'Січень';

  @override
  String get february => 'Лютий';

  @override
  String get march => 'Березень';

  @override
  String get april => 'Квітень';

  @override
  String get may => 'Травень';

  @override
  String get june => 'Червень';

  @override
  String get july => 'Липень';

  @override
  String get august => 'Серпень';

  @override
  String get september => 'Вересень';

  @override
  String get october => 'Жовтень';

  @override
  String get november => 'Листопад';

  @override
  String get december => 'Грудень';

  @override
  String more_than_years(Object num) {
    return 'Вже #$num років';
  }

  @override
  String get since_two_years => 'Вже 2 роки';

  @override
  String get since_year => 'Вже рік';

  @override
  String since_months(Object num) {
    return 'Вже #$num місяців';
  }

  @override
  String get since_two_months => 'Вже 2 місяці';

  @override
  String get since_month => 'Вже місяць';

  @override
  String since_weeks(Object num) {
    return 'Вже #$num тижнів';
  }

  @override
  String get since_two_weeks => 'Вже 2 тижні';

  @override
  String get since_week => 'Вже тиждень';

  @override
  String since_days(Object num) {
    return 'Вже #$num днів';
  }

  @override
  String get since_two_days => 'Вже 2 дні';

  @override
  String get since_day => 'Вже день';

  @override
  String get view_driving_events => 'Переглянути події водіння';

  @override
  String get coolant_temp => 'Температура охолоджувальної рідини';

  @override
  String get dtc_codes => 'Коди DTC';

  @override
  String get road_bump => 'Дорожня нерівність';

  @override
  String get fuel_level => 'Рівень палива';

  @override
  String get driving_behavior_score => 'Оцінка стилю водіння';

  @override
  String get event_major_crashes => 'Серйозні зіткнення';

  @override
  String get event_speeding_incident => 'Перевищення швидкості';

  @override
  String get driver_id => 'ID водія';

  @override
  String get more_details => 'Докладніше';

  @override
  String get events => 'Події';

  @override
  String get error_email_exists => 'Ця електронна пошта вже існує';

  @override
  String get error_wrong_password => 'Неправильний пароль';

  @override
  String get error_phone_exists => 'Цей номер телефону вже використовується';

  @override
  String get error_sp_ch =>
      'Пароль повинен містити принаймні один спеціальний символ';

  @override
  String get error_up => 'Пароль повинен містити принаймні одну велику літеру';

  @override
  String get error_low => 'Пароль повинен містити принаймні одну малу літеру';

  @override
  String get error_num => 'Пароль повинен містити принаймні одну цифру';

  @override
  String get error_required => 'Це поле обов\'язкове';

  @override
  String get error_invalid_email => 'Неправильна адреса електронної пошти';

  @override
  String error_password_short(Object length) {
    return 'Пароль повинен містити принаймні $length символів';
  }
}
