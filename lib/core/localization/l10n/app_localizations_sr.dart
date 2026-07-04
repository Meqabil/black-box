// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get app_title => 'BlackBox Апликација';

  @override
  String get common_yes => 'Да';

  @override
  String get common_no => 'Не';

  @override
  String get common_cancel => 'Откажи';

  @override
  String get common_save => 'Сачувај';

  @override
  String get common_save_changes => 'Сачувај измене';

  @override
  String get common_continue => 'Настави';

  @override
  String get common_next => 'Следеће';

  @override
  String get auth_login => 'Пријава';

  @override
  String get auth_space_login => 'Пријави се';

  @override
  String get auth_logout => 'Одјава';

  @override
  String get auth_confirm_logout =>
      'Да ли сте сигурни да желите да се одјавите?';

  @override
  String get auth_signup => 'Регистрација';

  @override
  String get auth_create_account => 'Направи налог';

  @override
  String get auth_already_have_account => 'Већ имате налог? ';

  @override
  String get auth_no_account => 'Немате налог?';

  @override
  String get auth_forgot_password => 'Заборављена лозинка?';

  @override
  String get auth_reset_password => 'Ресетовање лозинке?';

  @override
  String get auth_change_password => 'Промени лозинку';

  @override
  String get auth_continue => 'Наставком се слажете са\n';

  @override
  String get auth_terms => 'Условима коришћења и Политиком приватности';

  @override
  String get auth_email => 'Имејл';

  @override
  String get auth_password => 'Лозинка';

  @override
  String get auth_confirm_password => 'Потврди лозинку';

  @override
  String get auth_new_password => 'Нова лозинка';

  @override
  String get auth_confirm_new_password => 'Потврди нову лозинку';

  @override
  String get auth_enter_email => 'Унесите имејл адресу';

  @override
  String get auth_password_hint => 'Унесите своју лозинку';

  @override
  String get full_name => 'Пуно име';

  @override
  String get email_hint => 'пример@gmail.com';

  @override
  String get name_hint => 'Јован Петровић';

  @override
  String get required_name => 'Пуно име је обавезно';

  @override
  String get required_email => 'Имејл је обавезан';

  @override
  String get email_end => 'Имејл мора да се завршава са @gmail.com';

  @override
  String get required_password => 'Лозинка је обавезна';

  @override
  String get required_confirm_password => 'Потврда лозинке је обавезна';

  @override
  String get password_do_not_match => 'Лозинке се не поклапају';

  @override
  String get min_password =>
      'Лозинка мора имати најмање 8 карактера и садржати бројеве';

  @override
  String get send_verification_code => 'Пошаљи код за верификацију';

  @override
  String get password_changed_successfully => 'Лозинка је успешно промењена';

  @override
  String get forget_password_title =>
      'Унесите имејл повезан са вашим налогом и послаћемо вам безбедносни ПИН за ресетовање лозинке.';

  @override
  String get auth_security_pin => 'Безбедносни ПИН';

  @override
  String get auth_enter_pin => 'Унесите безбедносни ПИН';

  @override
  String get verify => 'Верификуј';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Пошаљи поново за $seconds с';
  }

  @override
  String get home_title => 'Почетна';

  @override
  String get home_welcome => 'Здраво, добродошли назад';

  @override
  String get home_good_morning => 'Добро јутро';

  @override
  String get home_good_afternoon => 'Добро поподне';

  @override
  String get home_good_evening => 'Добро вече';

  @override
  String get home_looks_good => 'Изгледа\nдобро';

  @override
  String get home_safety_score => 'Преглед безбедносног скора';

  @override
  String get home_total_accidents => 'Укупно несрећа';

  @override
  String get total_active_cars => 'Укупно активних возила';

  @override
  String get total_cars => 'Укупно возила';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% ваших возила је активно';
  }

  @override
  String get car_section_title => 'Возила';

  @override
  String get car_view_all => 'Погледај возила';

  @override
  String get car_add => 'Додај возило';

  @override
  String get car_edit => 'Уреди возило';

  @override
  String get car_name => 'Назив возила';

  @override
  String get car_plate => 'Регистарска ознака';

  @override
  String get car_type => 'Тип возила';

  @override
  String get car_driver_name => 'Име возача';

  @override
  String car_item_title(Object id) {
    return 'Возило #$id';
  }

  @override
  String get tracking_live => 'Праћење уживо';

  @override
  String get tracking_last_updates => 'Последња ажурирања';

  @override
  String get event_title => 'Догађаји у вожњи';

  @override
  String get event_speeding => 'Прекорачење брзине';

  @override
  String get event_hard_braking => 'Нагло кочење';

  @override
  String get event_aggressive_turns => 'Агресивна скретања';

  @override
  String get event_crash => 'Судар';

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
    return '$speed km/h';
  }

  @override
  String get event_severity => 'Озбиљност';

  @override
  String get event_severity_low => 'Ниска';

  @override
  String get event_severity_medium => 'Средња';

  @override
  String get event_severity_high => 'Висока';

  @override
  String get event_severity_critical => 'Критична';

  @override
  String get event_reason => 'Разлог';

  @override
  String get event_last_speed => 'Последња забележена брзина';

  @override
  String get notification_title => 'Обавештења';

  @override
  String get notification_today => 'Данас';

  @override
  String get notification_yesterday => 'Јуче';

  @override
  String get notification_earlier => 'Раније ове недеље';

  @override
  String get notification_fuel_alert => 'Упозорење о цурењу горива!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Возило $car које вози $driver пријавило је нагли пад нивоа горива.';
  }

  @override
  String get notification_crash_alert => 'Детектован критичан судар!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Возило $car које вози $driver пријавило је озбиљан судар.';
  }

  @override
  String get profile_title => 'Профил';

  @override
  String get profile_edit => 'Уреди мој профил';

  @override
  String get update_profile => 'Ажурирај профил';

  @override
  String get user_name => 'Корисничко име';

  @override
  String get security_title => 'Безбедност';

  @override
  String get change_password => 'Промени лозинку';

  @override
  String get settings_title => 'Подешавања';

  @override
  String get settings_notifications => 'Подешавања обавештења';

  @override
  String get settings_general_notifications => 'Општа обавештења';

  @override
  String get account_settings => 'Подешавања налога';

  @override
  String get push_notification => 'Пуш обавештења';

  @override
  String get dark_mode => 'Тамни режим укључен';

  @override
  String get help_title => 'Центар за помоћ';

  @override
  String get help_and_faq => 'Помоћ и ЧПП';

  @override
  String get help_contact => 'Контактирајте нас';

  @override
  String get help_faq => 'ЧПП';

  @override
  String get how_help => 'Како вам можемо помоћи?';

  @override
  String get on_wh_num => 'На Вотсап броју';

  @override
  String get language => 'Језик';

  @override
  String get question1 => 'Како се користи BlackBox?';

  @override
  String get answer1 =>
      'Инсталирајте BlackBox уређај у своје возило, пријавите се у апликацију и почните да возите. Апликација ће аутоматски снимати и приказивати ваше податке о вожњи.';

  @override
  String get question2 => 'Колико кошта коришћење BlackBox-а?';

  @override
  String get answer2 =>
      'Цена зависи одабраног плана и услуга. За детаље о ценама контактирајте компанију.';

  @override
  String get question3 => 'Како да контактирам подршку?';

  @override
  String get answer3 =>
      'Можете контактирати подршку преко Вотсапа користећи званични број компаније или посетом канцеларије компаније у радном времену.';

  @override
  String get question4 => 'Како да ресетујем лозинку ако је заборавим?';

  @override
  String get answer4 =>
      'Користите опцију \'Заборављена лозинка\' на екрану за пријаву и пратите упутства за ресетовање лозинке.';

  @override
  String get question5 =>
      'Да ли постоје мере приватности или безбедности података?';

  @override
  String get answer5 =>
      'Да. Ваши подаци су безбедно ускладиштени и заштићени и не деле се без ваше дозволе осим ако то није законски захтевано.';

  @override
  String get question6 => 'Могу ли прилагодити подешавања унутар апликације?';

  @override
  String get answer6 =>
      'Да. Можете прилагодити доступна подешавања као што су обавештења и преференце унутар апликације.';

  @override
  String get question7 => 'Како да обришем свој налог?';

  @override
  String get answer7 =>
      'Да бисте обрисали свој налог, контактирајте компанију преко Вотсапа или посетите канцеларију компаније.';

  @override
  String get question8 => 'Како да приступим историји својих анализа?';

  @override
  String get answer8 =>
      'Можете видети своје прошле вожње и анализе вожње у одељку Историја или Анализе у апликацији.';

  @override
  String get question9 => 'Могу ли користити апликацију ван мреже?';

  @override
  String get answer9 =>
      'Апликација има ограничену функционалност ван мреже. Потребна је интернет веза за синхронизацију података и приступ свим функцијама.';

  @override
  String get terms_title => 'Услови и одредбе';

  @override
  String get terms_accept => 'Прихватам услове и одредбе';

  @override
  String get terms_full =>
      '1. Прихватање услова\nИнсталирањем или коришћењем ове апликације, прихватате ове Услове и одредбе. Ако не прихватате, престаните да користите апликацију.\n\n2. Сврха апликације\nОва апликација је систем црне кутије и телематике возила који се користи за праћење перформанси возила и понашања у вожњи искључиво у информативне, безбедносне и аналитичке сврхе.\n\n3. Параметри података који се прикупљају\nАпликација може прикупљати и обрађивати податке о возилу и вожњи, укључујући али не ограничавајући се на:\n\n• Брзину возила\n• Потрошњу горива и ниво горива\n• Убрзање и успоравање\n• Нагло кочење и нагла убрзања\n• Нагла скретања\n• GPS податке о локацији (географска ширина и дужина)\n• Удаљеност, трајање и време путовања\n• Идентификационе податке возача и возила\n\nКоришћењем апликације, изричито пристајете на прикупљање ових параметара.\n\n4. Доступност услуге\nКонтинуиран, рад у реалном времену или рад без грешака апликације није загарантован због техничких ограничења.';

  @override
  String get validation_password_mismatch => 'Лозинке се не поклапају';

  @override
  String get validation_invalid_phone => 'Неисправан број телефона';

  @override
  String get validation_incorrect_pin => 'Погрешан ПИН';

  @override
  String get validation_empty_fields => 'Молимо попуните сва поља';

  @override
  String get empty_no_cars => 'Није пронађено ниједно возило';

  @override
  String get empty_no_notifications => 'Још увек нема обавештења';

  @override
  String get empty_no_events => 'Нема доступних догађаја';

  @override
  String get status_loading => 'Учитавање...';

  @override
  String get status_success => 'Операција успешна';

  @override
  String get status_error => 'Нешто није у реду';

  @override
  String get confirm_delete_car =>
      'Да ли сте сигурни да желите да обришете ово возило?';

  @override
  String get confirm_reset_password =>
      'Да ли сте сигурни да желите да ресетујете своју лозинку?';

  @override
  String get search => 'Претрага';

  @override
  String get search_hint => 'Претрага...';

  @override
  String get search_no_results => 'Нема резултата';

  @override
  String get filter => 'Филтер';

  @override
  String get sort => 'Сортирај';

  @override
  String get onboarding_title_1 => 'Добродошли';

  @override
  String get onboarding_desc_1 => 'у Black Box Manager';

  @override
  String get onboarding_title_2 => 'Погледајте причу иза ваше вожње,';

  @override
  String get onboarding_desc_2 =>
      'Снимамо свако путовање, анализирамо сваки километар.';

  @override
  String get delete_car => 'Обриши аутомобил';

  @override
  String get sedan => 'Лимузина';

  @override
  String get heavy_duty => 'Тешки теретњак';

  @override
  String get current_password => 'Тренутна лозинка';

  @override
  String get password_requirement =>
      'Мора имати најмање 8 карактера и садржати слова и бројеве.';

  @override
  String get current_password_is_not_correct => 'Тренутна лозинка није тачна.';

  @override
  String get vehicle => 'Возилo';

  @override
  String get driven_by => 'вози';

  @override
  String get report_fuel_level => 'пријавио је брзи пад нивоа горива.';

  @override
  String get report_collision_or_rollover =>
      'пријавио је тежак судар или превртање (sos).';

  @override
  String get report_overheating_or_dtc =>
      'пријавио је прегревање мотора или детектоване DTC кодове.';

  @override
  String get unknown_driver => 'Непознати возач';

  @override
  String get mechanical_failure => 'Упозорење о механичком квару!';

  @override
  String get critical_crash => 'Детектован критичан судар!';

  @override
  String get fuel_leak => 'Упозорење о цурењу горива!';

  @override
  String get today => 'Данас';

  @override
  String get yesterday => 'Јуче';

  @override
  String get day => 'дан';

  @override
  String get days => 'дана';

  @override
  String get week => 'недеља';

  @override
  String get weeks => 'недеља';

  @override
  String get month => 'месец';

  @override
  String get months => 'месеци';

  @override
  String get year => 'година';

  @override
  String get years => 'година';

  @override
  String get january => 'Јануар';

  @override
  String get february => 'Фебруар';

  @override
  String get march => 'Март';

  @override
  String get april => 'Април';

  @override
  String get may => 'Мај';

  @override
  String get june => 'Јун';

  @override
  String get july => 'Јул';

  @override
  String get august => 'Август';

  @override
  String get september => 'Септембар';

  @override
  String get october => 'Октобар';

  @override
  String get november => 'Новембар';

  @override
  String get december => 'Децембар';

  @override
  String more_than_years(Object num) {
    return 'Већ #$num година';
  }

  @override
  String get since_two_years => 'Већ 2 године';

  @override
  String get since_year => 'Већ годину дана';

  @override
  String since_months(Object num) {
    return 'Већ #$num месеци';
  }

  @override
  String get since_two_months => 'Већ 2 месеца';

  @override
  String get since_month => 'Већ месец дана';

  @override
  String since_weeks(Object num) {
    return 'Већ #$num недеља';
  }

  @override
  String get since_two_weeks => 'Већ 2 недеље';

  @override
  String get since_week => 'Већ недељу дана';

  @override
  String since_days(Object num) {
    return 'Већ #$num дана';
  }

  @override
  String get since_two_days => 'Већ 2 дана';

  @override
  String get since_day => 'Већ дан';

  @override
  String get view_driving_events => 'Прикажи догађаје вожње';

  @override
  String get coolant_temp => 'Температура расхладне течности';

  @override
  String get dtc_codes => 'DTC кодови';

  @override
  String get road_bump => 'Удар на путу';

  @override
  String get fuel_level => 'Ниво горива';

  @override
  String get driving_behavior_score => 'Оцена понашања при вожњи';

  @override
  String get event_major_crashes => 'Тешки судари';

  @override
  String get event_speeding_incident => 'Инcиденти пребрзе вожње';

  @override
  String get driver_id => 'ИД возача';

  @override
  String get more_details => 'Више детаља';

  @override
  String get events => 'Догађаји';

  @override
  String get error_email_exists => 'Овај имејл већ постоји';

  @override
  String get error_wrong_password => 'Погрешна лозинка';

  @override
  String get error_phone_exists => 'Овај број телефона је већ у употреби';

  @override
  String get error_sp_ch =>
      'Лозинка мора да садржи барем један специјални карактер';

  @override
  String get error_up => 'Лозинка мора да садржи барем једно велико слово';

  @override
  String get error_low => 'Лозинка мора да садржи барем једно мало слово';

  @override
  String get error_num => 'Лозинка мора да садржи барем један број';

  @override
  String get error_required => 'Ово поље је обавезно';

  @override
  String get error_invalid_email => 'Неисправна имејл адреса';

  @override
  String error_password_short(Object length) {
    return 'Лозинка мора имати најмање $length карактера';
  }
}
