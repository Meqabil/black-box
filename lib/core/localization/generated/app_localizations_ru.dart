// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Да';

  @override
  String get common_no => 'Нет';

  @override
  String get common_cancel => 'Отмена';

  @override
  String get common_save => 'Сохранить';

  @override
  String get common_save_changes => 'Сохранить изменения';

  @override
  String get common_continue => 'Продолжить';

  @override
  String get common_next => 'Далее';

  @override
  String get auth_login => 'Войти';

  @override
  String get auth_space_login => 'Войти';

  @override
  String get auth_logout => 'Выйти';

  @override
  String get auth_confirm_logout => 'Вы уверены, что хотите выйти?';

  @override
  String get auth_signup => 'Зарегистрироваться';

  @override
  String get auth_create_account => 'Создать аккаунт';

  @override
  String get auth_already_have_account => 'Уже есть аккаунт? ';

  @override
  String get auth_no_account => 'Нет аккаунта?';

  @override
  String get auth_forgot_password => 'Забыли пароль?';

  @override
  String get auth_reset_password => 'Сбросить пароль?';

  @override
  String get auth_change_password => 'Изменить пароль';

  @override
  String get auth_continue => 'Продолжая, вы соглашаетесь с\n';

  @override
  String get auth_terms =>
      'Условиями использования и политикой конфиденциальности';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Пароль';

  @override
  String get auth_confirm_password => 'Подтвердите пароль';

  @override
  String get auth_new_password => 'Новый пароль';

  @override
  String get auth_confirm_new_password => 'Подтвердите новый пароль';

  @override
  String get auth_enter_email => 'Введите адрес email';

  @override
  String get auth_password_hint => 'Введите ваш пароль';

  @override
  String get full_name => 'Полное имя';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'Иван Иванов';

  @override
  String get required_name => 'Необходимо указать полное имя';

  @override
  String get required_email => 'Необходимо указать email';

  @override
  String get email_end => 'Email должен заканчиваться на @gmail.com';

  @override
  String get required_password => 'Необходимо указать пароль';

  @override
  String get required_confirm_password => 'Необходимо подтвердить пароль';

  @override
  String get password_do_not_match => 'Пароли не совпадают';

  @override
  String get min_password =>
      'Пароль должен содержать не менее 8 символов и цифры';

  @override
  String get send_verification_code => 'Отправить код подтверждения';

  @override
  String get password_changed_successfully => 'Пароль успешно\nизменён';

  @override
  String get forget_password_title =>
      'Введите email, связанный с вашим аккаунтом, и мы отправим вам PIN для сброса пароля.';

  @override
  String get auth_security_pin => 'PIN безопасности';

  @override
  String get auth_enter_pin => 'Введите PIN безопасности';

  @override
  String get verify => 'Подтвердить';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Отправить снова через $seconds с';
  }

  @override
  String get home_title => 'Главная';

  @override
  String get home_welcome => 'Привет, с возвращением';

  @override
  String get home_good_morning => 'Доброе утро';

  @override
  String get home_good_afternoon => 'Добрый день';

  @override
  String get home_good_evening => 'Добрый вечер';

  @override
  String get home_looks_good => 'Всё\nхорошо';

  @override
  String get home_safety_score => 'Обзор оценки безопасности';

  @override
  String get home_total_accidents => 'Всего аварий';

  @override
  String get total_active_cars => 'Всего активных автомобилей';

  @override
  String get total_cars => 'Всего автомобилей';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% ваших автомобилей активны';
  }

  @override
  String get car_section_title => 'Автомобили';

  @override
  String get car_view_all => 'Просмотр автомобилей';

  @override
  String get car_add => 'Добавить автомобиль';

  @override
  String get car_edit => 'Изменить автомобиль';

  @override
  String get car_name => 'Название автомобиля';

  @override
  String get car_plate => 'Номерной знак';

  @override
  String get car_type => 'Тип автомобиля';

  @override
  String get car_driver_name => 'Имя водителя';

  @override
  String car_item_title(Object id) {
    return 'Автомобиль #$id';
  }

  @override
  String get tracking_live => 'Онлайн-слежение';

  @override
  String get tracking_last_updates => 'Последние обновления';

  @override
  String get event_title => 'События вождения';

  @override
  String get event_speeding => 'Превышение скорости';

  @override
  String get event_hard_braking => 'Резкое торможение';

  @override
  String get event_aggressive_turns => 'Агрессивные повороты';

  @override
  String get event_crash => 'Авария';

  @override
  String event_location(Object location) {
    return 'В $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed км/ч';
  }

  @override
  String get event_severity => 'Серьёзность';

  @override
  String get event_severity_low => 'Низкая';

  @override
  String get event_severity_medium => 'Средняя';

  @override
  String get event_severity_high => 'Высокая';

  @override
  String get event_severity_critical => 'Критическая';

  @override
  String get event_reason => 'Причина';

  @override
  String get event_last_speed => 'Последняя зафиксированная скорость';

  @override
  String get notification_title => 'Уведомления';

  @override
  String get notification_today => 'Сегодня';

  @override
  String get notification_yesterday => 'Вчера';

  @override
  String get notification_earlier => 'Ранее на этой неделе';

  @override
  String get notification_fuel_alert => 'Предупреждение об утечке топлива!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Автомобиль $car под управлением $driver сообщил о резком падении уровня топлива.';
  }

  @override
  String get notification_crash_alert => 'Обнаружена критическая авария!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Автомобиль $car под управлением $driver сообщил о серьёзном столкновении.';
  }

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Редактировать профиль';

  @override
  String get update_profile => 'Обновить профиль';

  @override
  String get user_name => 'Имя пользователя';

  @override
  String get security_title => 'Безопасность';

  @override
  String get change_password => 'Изменить пароль';

  @override
  String get settings_title => 'Настройки';

  @override
  String get settings_notifications => 'Настройки уведомлений';

  @override
  String get settings_general_notifications => 'Общее уведомление';

  @override
  String get account_settings => 'Настройки аккаунта';

  @override
  String get push_notification => 'Push-уведомления';

  @override
  String get dark_mode => 'Тёмный режим включён';

  @override
  String get help_title => 'Центр помощи';

  @override
  String get help_and_faq => 'Помощь и FAQ';

  @override
  String get help_contact => 'Связаться с нами';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Чем мы можем вам помочь?';

  @override
  String get on_wh_num => 'На номере WhatsApp';

  @override
  String get language => 'Язык';

  @override
  String get question1 => 'Как использовать BlackBox?';

  @override
  String get answer1 =>
      'Установите устройство BlackBox в своём автомобиле, войдите в приложение и начните ездить. Приложение автоматически запишет и отобразит ваши данные вождения.';

  @override
  String get question2 => 'Сколько стоит использование BlackBox?';

  @override
  String get answer2 =>
      'Стоимость зависит от выбранного плана и услуг. Пожалуйста, свяжитесь с компанией для получения информации о ценах.';

  @override
  String get question3 => 'Как связаться со службой поддержки?';

  @override
  String get answer3 =>
      'Вы можете связаться со службой поддержки через WhatsApp по официальному номеру компании или посетив офис компании в рабочее время.';

  @override
  String get question4 => 'Как сбросить пароль, если я его забыл?';

  @override
  String get answer4 =>
      'Используйте опцию «Забыли пароль» на экране входа и следуйте инструкциям для сброса пароля.';

  @override
  String get question5 =>
      'Есть ли меры защиты конфиденциальности и безопасности данных?';

  @override
  String get answer5 =>
      'Да. Ваши данные надёжно хранятся и защищены, они не передаются без вашего разрешения, за исключением случаев, предусмотренных законом.';

  @override
  String get question6 => 'Можно ли настроить параметры в приложении?';

  @override
  String get answer6 =>
      'Да. Вы можете настраивать доступные параметры, такие как уведомления и предпочтения, в приложении.';

  @override
  String get question7 => 'Как удалить аккаунт?';

  @override
  String get answer7 =>
      'Для удаления аккаунта свяжитесь с компанией через WhatsApp или посетите офис компании.';

  @override
  String get question8 => 'Как просмотреть историю аналитики?';

  @override
  String get answer8 =>
      'Вы можете просмотреть свои прошлые поездки и аналитику вождения в разделе «История» или «Аналитика» приложения.';

  @override
  String get question9 =>
      'Можно ли использовать приложение в автономном режиме?';

  @override
  String get answer9 =>
      'Приложение имеет ограниченный функционал в автономном режиме. Для синхронизации данных и доступа к полным функциям требуется подключение к интернету.';

  @override
  String get terms_title => 'Условия использования';

  @override
  String get terms_accept => 'Принять условия использования';

  @override
  String get terms_full =>
      '1. Принятие условий\nУстанавливая или используя это приложение, вы соглашаетесь с настоящими Условиями использования. Если вы не согласны, прекратите использование приложения.\n\n2. Цель приложения\nЭто приложение является системой чёрного ящика и телематики транспортного средства, используемой для мониторинга работы автомобиля и поведения водителя исключительно в информационных, безопасностных и аналитических целях.\n\n3. Собираемые параметры данных\nПриложение может собирать и обрабатывать данные об автомобиле и вождении, включая, но не ограничиваясь:\n\n• Скорость автомобиля\n• Расход топлива и уровень топлива\n• Ускорение и торможение\n• Резкое торможение и резкое ускорение\n• Резкие повороты\n• Данные GPS (широта и долгота)\n• Расстояние, продолжительность и время поездки\n• Данные идентификации водителя и автомобиля\n\nИспользуя приложение, вы явно соглашаетесь на сбор этих данных.\n\n4. Доступность сервиса\nНепрерывная, работа в реальном времени или безошибочная работа приложения не гарантируется в связи с техническими ограничениями.';

  @override
  String get validation_password_mismatch => 'Пароли не совпадают';

  @override
  String get validation_invalid_phone => 'Недействительный номер телефона';

  @override
  String get validation_incorrect_pin => 'Неверный PIN';

  @override
  String get validation_empty_fields => 'Пожалуйста, заполните все поля';

  @override
  String get empty_no_cars => 'Автомобили не найдены';

  @override
  String get empty_no_notifications => 'Уведомлений пока нет';

  @override
  String get empty_no_events => 'Нет доступных событий';

  @override
  String get status_loading => 'Загрузка...';

  @override
  String get status_success => 'Операция выполнена успешно';

  @override
  String get status_error => 'Что-то пошло не так';

  @override
  String get confirm_delete_car =>
      'Вы уверены, что хотите удалить этот автомобиль?';

  @override
  String get confirm_reset_password =>
      'Вы уверены, что хотите сбросить пароль?';

  @override
  String get search => 'Поиск';

  @override
  String get search_hint => 'Поиск...';

  @override
  String get search_no_results => 'Результаты не найдены';

  @override
  String get filter => 'Фильтр';

  @override
  String get sort => 'Сортировка';

  @override
  String get onboarding_title_1 => 'Добро пожаловать';

  @override
  String get onboarding_desc_1 => 'В менеджер Black Box';

  @override
  String get onboarding_title_2 => 'Узнайте историю своей поездки,';

  @override
  String get onboarding_desc_2 =>
      'Записываем каждый маршрут, анализируем каждый километр.';

  @override
  String get delete_car => 'Удалить машину';

  @override
  String get sedan => 'Седан';

  @override
  String get heavy_duty => 'Тяжелый';

  @override
  String get current_password => 'Текущий пароль';

  @override
  String get password_requirement =>
      'Должен содержать не менее 8 символов, включая буквы и цифры.';

  @override
  String get current_password_is_not_correct => 'Текущий пароль неверен.';

  @override
  String get vehicle => 'Транспортное средство';

  @override
  String get driven_by => 'управляется';

  @override
  String get report_fuel_level => 'сообщил о быстром падении уровня топлива.';

  @override
  String get report_collision_or_rollover =>
      'сообщил о серьезном столкновении или опрокидывании (sos).';

  @override
  String get report_overheating_or_dtc =>
      'сообщил о перегреве двигателя или обнаружении кодов DTC.';

  @override
  String get unknown_driver => 'Неизвестный водитель';

  @override
  String get mechanical_failure =>
      'Предупреждение о механической неисправности!';

  @override
  String get critical_crash => 'Обнаружено критическое столкновение!';

  @override
  String get fuel_leak => 'Оповещение об утечке топлива!';

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String get day => 'день';

  @override
  String get days => 'дня';

  @override
  String get week => 'неделя';

  @override
  String get weeks => 'недели';

  @override
  String get month => 'месяц';

  @override
  String get months => 'месяца';

  @override
  String get year => 'год';

  @override
  String get years => 'лет';

  @override
  String get january => 'Январь';

  @override
  String get february => 'Февраль';

  @override
  String get march => 'Март';

  @override
  String get april => 'Апрель';

  @override
  String get may => 'Май';

  @override
  String get june => 'Июнь';

  @override
  String get july => 'Июль';

  @override
  String get august => 'Август';

  @override
  String get september => 'Сентябрь';

  @override
  String get october => 'Октябрь';

  @override
  String get november => 'Ноябрь';

  @override
  String get december => 'Декабрь';

  @override
  String more_than_years(Object num) {
    return 'Уже #$num лет';
  }

  @override
  String get since_two_years => 'Уже 2 года';

  @override
  String get since_year => 'Уже год';

  @override
  String since_months(Object num) {
    return 'Уже #$num месяцев';
  }

  @override
  String get since_two_months => 'Уже 2 месяца';

  @override
  String get since_month => 'Уже месяц';

  @override
  String since_weeks(Object num) {
    return 'Уже #$num недель';
  }

  @override
  String get since_two_weeks => 'Уже 2 недели';

  @override
  String get since_week => 'Уже неделю';

  @override
  String since_days(Object num) {
    return 'Уже #$num дней';
  }

  @override
  String get since_two_days => 'Уже 2 дня';

  @override
  String get since_day => 'Уже день';

  @override
  String get view_driving_events => 'Просмотр событий вождения';

  @override
  String get coolant_temp => 'Температура охлаждающей жидкости';

  @override
  String get dtc_codes => 'Коды DTC';

  @override
  String get road_bump => 'Дорожная неровность';

  @override
  String get fuel_level => 'Уровень топлива';

  @override
  String get driving_behavior_score => 'Оценка стиля вождения';

  @override
  String get event_major_crashes => 'Серьезные столкновения';

  @override
  String get event_speeding_incident => 'Превышения скорости';

  @override
  String get driver_id => 'ID водителя';

  @override
  String get more_details => 'Подробнее';

  @override
  String get events => 'События';

  @override
  String get error_email_exists => 'Этот email уже существует';

  @override
  String get error_wrong_password => 'Неверный пароль';

  @override
  String get error_phone_exists => 'Этот номер телефона уже используется';

  @override
  String get error_sp_ch =>
      'Пароль должен содержать хотя бы один специальный символ';

  @override
  String get error_up => 'Пароль должен содержать хотя бы одну заглавную букву';

  @override
  String get error_low => 'Пароль должен содержать хотя бы одну строчную букву';

  @override
  String get error_num => 'Пароль должен содержать хотя бы одну цифру';

  @override
  String get error_required => 'Это поле обязательно';

  @override
  String get error_invalid_email => 'Недействительный адрес email';

  @override
  String error_password_short(Object length) {
    return 'Пароль должен содержать не менее $length символов';
  }
}
