// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get app_title => 'BlackBox հավելված';

  @override
  String get common_yes => 'Այո';

  @override
  String get common_no => 'Ոչ';

  @override
  String get common_cancel => 'Չեղարկել';

  @override
  String get common_save => 'Պահպանել';

  @override
  String get common_save_changes => 'Պահպանել փոփոխությունները';

  @override
  String get common_continue => 'Շարունակել';

  @override
  String get common_next => 'Հաջորդ';

  @override
  String get auth_login => 'Մուտք';

  @override
  String get auth_space_login => 'Մուտք գործել';

  @override
  String get auth_logout => 'Ելք';

  @override
  String get auth_confirm_logout => 'Համոզվա՞ծ եք, որ ցանկանում եք դուրս գալ:';

  @override
  String get auth_signup => 'Գրանցվել';

  @override
  String get auth_create_account => 'Ստեղծել հաշիվ';

  @override
  String get auth_already_have_account => 'Արդեն ունե՞ք հաշիվ: ';

  @override
  String get auth_no_account => 'Հաշիվ չունե՞ք:';

  @override
  String get auth_forgot_password => 'Մոռացե՞լ եք գաղտնաբառը:';

  @override
  String get auth_reset_password => 'Վերականգնե՞լ գաղտնաբառը:';

  @override
  String get auth_change_password => 'Փոխել գաղտնաբառը';

  @override
  String get auth_continue => 'Շարունակելով՝ դուք համաձայնում եք\n';

  @override
  String get auth_terms =>
      'Օգտագործման պայմաններին և Գաղտնիության քաղաքականությանը';

  @override
  String get auth_email => 'Էլ. հասցե';

  @override
  String get auth_password => 'Գաղտնաբառ';

  @override
  String get auth_confirm_password => 'Հաստատել գաղտնաբառը';

  @override
  String get auth_new_password => 'Նոր գաղտնաբառ';

  @override
  String get auth_confirm_new_password => 'Հաստատել նոր գաղտնաբառը';

  @override
  String get auth_enter_email => 'Մուտքագրեք էլ. հասցեն';

  @override
  String get auth_password_hint => 'Մուտքագրեք ձեր գաղտնաբառը';

  @override
  String get full_name => 'Լրիվ անուն';

  @override
  String get email_hint => 'օրինակ@gmail.com';

  @override
  String get name_hint => 'Պետրոս Պետրոսյան';

  @override
  String get required_name => 'Լրիվ անունը պարտադիր է';

  @override
  String get required_email => 'Էլ. հասցեն պարտադիր է';

  @override
  String get email_end => 'Էլ. հասցեն պետք է ավարտվի @gmail.com-ով';

  @override
  String get required_password => 'Գաղտնաբառը պարտադիր է';

  @override
  String get required_confirm_password => 'Գաղտնաբառի հաստատումը պարտադիր է';

  @override
  String get password_do_not_match => 'Գաղտնաբառերը չեն համընկնում';

  @override
  String get min_password => 'Գաղտնաբառը պետք է պարունակի առնվազն 8 նիշ և թվեր';

  @override
  String get send_verification_code => 'Ուղարկել հաստատման կոդը';

  @override
  String get password_changed_successfully =>
      'Գաղտնաբառը հաջողությամբ փոխվել է';

  @override
  String get forget_password_title =>
      'Մուտքագրեք ձեր հաշվի հետ կապված էլ. հասցեն, և մենք ձեզ կուղարկենք գաղտնաբառի վերականգնման անվտանգության PIN:';

  @override
  String get auth_security_pin => 'Անվտանգության PIN';

  @override
  String get auth_enter_pin => 'Մուտքագրեք անվտանգության PIN-ը';

  @override
  String get verify => 'Հաստատել';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Նորից ուղարկել $seconds վրկ հետո';
  }

  @override
  String get home_title => 'Գլխավոր';

  @override
  String get home_welcome => 'Բարև, բարի վերադարձ';

  @override
  String get home_good_morning => 'Բարի լույս';

  @override
  String get home_good_afternoon => 'Բարի կեսօր';

  @override
  String get home_good_evening => 'Բարի երեկո';

  @override
  String get home_looks_good => 'Լավ\nէ երևում';

  @override
  String get home_safety_score => 'Անվտանգության միավորի ակնարկ';

  @override
  String get home_total_accidents => 'Վթարների ընդհանուր քանակ';

  @override
  String get total_active_cars => 'Ընդհանուր ակտիվ մեքենաներ';

  @override
  String get total_cars => 'Ընդհանուր մեքենաներ';

  @override
  String home_active_cars(Object percentage) {
    return 'Ձեր մեքենաների $percentage%-ը ակտիվ է';
  }

  @override
  String get car_section_title => 'Մեքենաներ';

  @override
  String get car_view_all => 'Դիտել մեքենաները';

  @override
  String get car_add => 'Ավելացնել մեքենա';

  @override
  String get car_edit => 'Խմբագրել մեքենան';

  @override
  String get car_name => 'Մեքենայի անուն';

  @override
  String get car_plate => 'Մեքենայի համարանիշ';

  @override
  String get car_type => 'Մեքենայի տեսակ';

  @override
  String get car_driver_name => 'Վարորդի անուն';

  @override
  String car_item_title(Object id) {
    return 'Մեքենա #$id';
  }

  @override
  String get tracking_live => 'Ուղիղ հետևում';

  @override
  String get tracking_last_updates => 'Վերջին թարմացումները';

  @override
  String get event_title => 'Վարման իրադարձություններ';

  @override
  String get event_speeding => 'Արագության գերազանցում';

  @override
  String get event_hard_braking => 'Կտրուկ արգելակում';

  @override
  String get event_aggressive_turns => 'Ագրեսիվ շրջադարձեր';

  @override
  String get event_crash => 'Վթար';

  @override
  String event_location(Object location) {
    return '$location-ում';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed կմ/ժ';
  }

  @override
  String get event_severity => 'Լրջության աստիճան';

  @override
  String get event_severity_low => 'Ցածր';

  @override
  String get event_severity_medium => 'Միջին';

  @override
  String get event_severity_high => 'Բարձր';

  @override
  String get event_severity_critical => 'Քննադատական';

  @override
  String get event_reason => 'Պատճառ';

  @override
  String get event_last_speed => 'Վերջին գրանցված արագությունը';

  @override
  String get notification_title => 'Ծանուցումներ';

  @override
  String get notification_today => 'Այսօր';

  @override
  String get notification_yesterday => 'Երեկ';

  @override
  String get notification_earlier => 'Ավելի վաղ այս շաբաթ';

  @override
  String get notification_fuel_alert => 'Վառելիքի արտահոսքի նախազգուշացում:';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return '$car մեքենան, որը վարում է $driver-ը, հայտնել է վառելիքի մակարդակի կտրուկ անկման մասին:';
  }

  @override
  String get notification_crash_alert => 'Հայտնաբերվել է քննադատական վթար:';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return '$car մեքենան, որը վարում է $driver-ը, հայտնել է լուրջ բախման մասին:';
  }

  @override
  String get profile_title => 'Պրոֆիլ';

  @override
  String get profile_edit => 'Խմբագրել իմ պրոֆիլը';

  @override
  String get update_profile => 'Թարմացնել պրոֆիլը';

  @override
  String get user_name => 'Օգտվողի անուն';

  @override
  String get security_title => 'Անվտանգություն';

  @override
  String get change_password => 'Փոխել գաղտնաբառը';

  @override
  String get settings_title => 'Կարգավորումներ';

  @override
  String get settings_notifications => 'Ծանուցումների կարգավորումներ';

  @override
  String get settings_general_notifications => 'Ընդհանուր ծանուցում';

  @override
  String get account_settings => 'Հաշվի կարգավորումներ';

  @override
  String get push_notification => 'Push ծանուցումներ';

  @override
  String get dark_mode => 'Մութ ռեժիմը միացված է';

  @override
  String get help_title => 'Օգնության կենտրոն';

  @override
  String get help_and_faq => 'Օգնություն և ՀՏՀ';

  @override
  String get help_contact => 'Կապվեք մեզ հետ';

  @override
  String get help_faq => 'ՀՏՀ';

  @override
  String get how_help => 'Ինչպե՞ս կարող ենք օգնել ձեզ:';

  @override
  String get on_wh_num => 'WhatsApp-ի համարով';

  @override
  String get language => 'Լեզու';

  @override
  String get question1 => 'Ինչպե՞ս օգտագործել BlackBox-ը:';

  @override
  String get answer1 =>
      'Տեղադրեք BlackBox սարքը ձեր մեքենայում, մուտք գործեք հավելված և սկսեք վարել: Հավելվածը ավտոմատ կերպով կգրանցի և կցուցադրի ձեր վարման տվյալները:';

  @override
  String get question2 => 'Որքա՞ն արժե BlackBox-ի օգտագործումը:';

  @override
  String get answer2 =>
      'Արժեքը կախված է ընտրված պլանից և ծառայություններից: Գնի մանրամասների համար դիմեք ընկերությանը:';

  @override
  String get question3 => 'Ինչպե՞ս կապվել աջակցության հետ:';

  @override
  String get answer3 =>
      'Դուք կարող եք կապվել աջակցության հետ WhatsApp-ի միջոցով՝ օգտագործելով ընկերության պաշտոնական համարը կամ այցելելով ընկերության գրասենյակ աշխատանքային ժամերին:';

  @override
  String get question4 =>
      'Ինչպե՞ս կարող եմ վերականգնել գաղտնաբառս, եթե մոռացել եմ այն:';

  @override
  String get answer4 =>
      'Օգտագործեք \'Մոռացե՞լ եք գաղտնաբառը\' տարբերակը մուտքի էկրանին և հետևեք հրահանգներին ձեր գաղտնաբառը վերականգնելու համար:';

  @override
  String get question5 =>
      'Արդյոք կա՞ն գաղտնիության կամ տվյալների անվտանգության միջոցառումներ:';

  @override
  String get answer5 =>
      'Այո: Ձեր տվյալները ապահով պահպանվում և պաշտպանվում են, և դրանք չեն տարածվում առանց ձեր թույլտվության, բացառությամբ օրենքով նախատեսված դեպքերի:';

  @override
  String get question6 => 'Կարո՞ղ եմ հարմարեցնել կարգավորումները հավելվածում:';

  @override
  String get answer6 =>
      'Այո: Դուք կարող եք հարմարեցնել առկա կարգավորումները, ինչպիսիք են ծանուցումները և նախասիրությունները հավելվածում:';

  @override
  String get question7 => 'Ինչպե՞ս կարող եմ ջնջել իմ հաշիվը:';

  @override
  String get answer7 =>
      'Ձեր հաշիվը ջնջելու համար դիմեք ընկերությանը WhatsApp-ի միջոցով կամ այցելեք ընկերության գրասենյակ:';

  @override
  String get question8 =>
      'Ինչպե՞ս մուտք գործեմ իմ վերլուծությունների պատմությունը:';

  @override
  String get answer8 =>
      'Դուք կարող եք դիտել ձեր անցյալի ուղևորությունները և վարման վերլուծությունները հավելվածի \'Պատմություն\' կամ \'Վերլուծություններ\' բաժնում:';

  @override
  String get question9 => 'Կարո՞ղ եմ օգտագործել հավելվածը անցանց ռեժիմում:';

  @override
  String get answer9 =>
      'Հավելվածն ունի սահմանափակ անցանց ֆունկցիոնալություն: Տվյալների համաժամեցման և ամբողջական գործառույթների հասանելիության համար անհրաժեշտ է ինտերնետ կապ:';

  @override
  String get terms_title => 'Պայմաններ և դրույթներ';

  @override
  String get terms_accept => 'Ընդունել պայմաններն ու դրույթները';

  @override
  String get terms_full =>
      '1. Պայմանների ընդունում\nՏեղադրելով կամ օգտագործելով այս հավելվածը՝ դուք համաձայնում եք սույն Պայմաններին և դրույթներին: Եթե համաձայն չեք, խնդրում ենք դադարեցնել հավելվածի օգտագործումը:\n\n2. Հավելվածի նպատակը\nԱյս հավելվածը մեքենայի սև արկղ և տելեմատիկ համակարգ է, որն օգտագործվում է մեքենայի աշխատանքի և վարման վարքագծի մոնիտորինգի համար բացառապես տեղեկատվական, անվտանգության և վերլուծական նպատակներով:\n\n3. Հավաքագրվող տվյալների պարամետրերը\nՀավելվածը կարող է հավաքագրել և մշակել մեքենայի և վարման տվյալներ, ներառյալ, բայց չսահմանափակվելով՝\n\n• Մեքենայի արագությունը\n• Վառելիքի սպառումը և վառելիքի մակարդակը\n• Արագացումը և դանդաղեցումը\n• Կտրուկ արգելակումը և արագացման դեպքերը\n• Կտրուկ շրջադարձերը\n• GPS-ի գտնվելու վայրի տվյալները (լայնություն և երկայնություն)\n• Ուղևորության հեռավորությունը, տևողությունը և ժամանակը\n• Վարորդի և մեքենայի նույնականացման տվյալները\n\nՀավելվածն օգտագործելով՝ դուք բացահայտ համաձայնում եք այդ պարամետրերի հավաքագրմանը:\n\n4. Ծառայության հասանելիությունը\nՀավելվածի շարունակական, իրական ժամանակում կամ առանց սխալների աշխատանքը չի երաշխավորվում տեխնիկական սահմանափակումների պատճառով:';

  @override
  String get validation_password_mismatch => 'Գաղտնաբառերը չեն համընկնում';

  @override
  String get validation_invalid_phone => 'Անվավեր հեռախոսահամար';

  @override
  String get validation_incorrect_pin => 'Սխալ PIN կոդ';

  @override
  String get validation_empty_fields => 'Խնդրում ենք լրացնել բոլոր դաշտերը';

  @override
  String get empty_no_cars => 'Մեքենաներ չեն գտնվել';

  @override
  String get empty_no_notifications => 'Դեռևս ծանուցումներ չկան';

  @override
  String get empty_no_events => 'Հասանելի իրադարձություններ չկան';

  @override
  String get status_loading => 'Բեռնում...';

  @override
  String get status_success => 'Գործողությունը հաջողվեց';

  @override
  String get status_error => 'Ինչ-որ բան սխալ է տեղի ունեցել';

  @override
  String get confirm_delete_car =>
      'Համոզվա՞ծ եք, որ ցանկանում եք ջնջել այս մեքենան:';

  @override
  String get confirm_reset_password =>
      'Համոզվա՞ծ եք, որ ցանկանում եք վերականգնել ձեր գաղտնաբառը:';

  @override
  String get search => 'Որոնել';

  @override
  String get search_hint => 'Որոնել...';

  @override
  String get search_no_results => 'Արդյունքներ չեն գտնվել';

  @override
  String get filter => 'Ֆիլտր';

  @override
  String get sort => 'Դասավորել';

  @override
  String get onboarding_title_1 => 'Բարի գալուստ';

  @override
  String get onboarding_desc_1 => 'Black Box Manager';

  @override
  String get onboarding_title_2 =>
      'Տեսեք ձեր վարման հետևում գտնվող պատմությունը,';

  @override
  String get onboarding_desc_2 =>
      'Արձանագրում ենք յուրաքանչյուր ճանապարհորդություն, վերլուծում ենք յուրաքանչյուր կիլոմետր:';

  @override
  String get delete_car => 'Ջնջել մեքենան';

  @override
  String get sedan => 'Սեդան';

  @override
  String get heavy_duty => 'Ծանր բեռնատար';

  @override
  String get current_password => 'Ընթացիկ գաղտնաբառ';

  @override
  String get password_requirement =>
      'Պետք է լինի առնվազն 8 նիշ երկարություն և պարունակի տառեր և թվեր:';

  @override
  String get current_password_is_not_correct => 'Ընթացիկ գաղտնաբառը սխալ է:';

  @override
  String get vehicle => 'Տրանսպորտային միջոց';

  @override
  String get driven_by => 'վարում է';

  @override
  String get report_fuel_level =>
      'հայտնել է վառելիքի մակարդակի արագ անկման մասին:';

  @override
  String get report_collision_or_rollover =>
      'հայտնել է լուրջ բախման կամ շրջվելու մասին (sos):';

  @override
  String get report_overheating_or_dtc =>
      'հայտնել է շարժիչի գերտաքացման կամ DTC կոդերի հայտնաբերման մասին:';

  @override
  String get unknown_driver => 'Անհայտ վարորդ';

  @override
  String get mechanical_failure => 'Մեխանիկական անսարքության նախազգուշացում!';

  @override
  String get critical_crash => 'Հայտնաբերվել է կրիտիկական բախում!';

  @override
  String get fuel_leak => 'Վառելիքի արտահոսքի տագնապ!';

  @override
  String get today => 'Այսօր';

  @override
  String get yesterday => 'Երեկ';

  @override
  String get day => 'օր';

  @override
  String get days => 'օր';

  @override
  String get week => 'շաբաթ';

  @override
  String get weeks => 'շաբաթ';

  @override
  String get month => 'ամիս';

  @override
  String get months => 'ամիս';

  @override
  String get year => 'տարի';

  @override
  String get years => 'տարի';

  @override
  String get january => 'Հունվար';

  @override
  String get february => 'Փետրվար';

  @override
  String get march => 'Մարտ';

  @override
  String get april => 'Ապրիլ';

  @override
  String get may => 'Մայիս';

  @override
  String get june => 'Հունիս';

  @override
  String get july => 'Հուլիս';

  @override
  String get august => 'Օգոստոս';

  @override
  String get september => 'Սեպտեմբեր';

  @override
  String get october => 'Հոկտեմբեր';

  @override
  String get november => 'Նոյեմբեր';

  @override
  String get december => 'Դեկտեմբեր';

  @override
  String more_than_years(Object num) {
    return '#$num տարի շարունակ';
  }

  @override
  String get since_two_years => '2 տարի շարունակ';

  @override
  String get since_year => 'Մեկ տարի շարունակ';

  @override
  String since_months(Object num) {
    return '#$num ամիս շարունակ';
  }

  @override
  String get since_two_months => '2 ամիս շարունակ';

  @override
  String get since_month => 'Մեկ ամիս շարունակ';

  @override
  String since_weeks(Object num) {
    return '#$num շաբաթ շարունակ';
  }

  @override
  String get since_two_weeks => '2 շաբաթ շարունակ';

  @override
  String get since_week => 'Մեկ շաբաթ շարունակ';

  @override
  String since_days(Object num) {
    return '#$num օր շարունակ';
  }

  @override
  String get since_two_days => '2 օր շարունակ';

  @override
  String get since_day => 'Մեկ օր շարունակ';

  @override
  String get view_driving_events => 'Դիտել վարելու իրադարձությունները';

  @override
  String get coolant_temp => 'Հովացուցիչի ջերմաստիճան';

  @override
  String get dtc_codes => 'DTC կոդեր';

  @override
  String get road_bump => 'Ճանապարհային փոս';

  @override
  String get fuel_level => 'Վառելիքի մակարդակ';

  @override
  String get driving_behavior_score => 'Վարելու վարքագծի միավոր';

  @override
  String get event_major_crashes => 'Խոշոր բախումներ';

  @override
  String get event_speeding_incident => 'Արագության գերազանցման դեպքեր';

  @override
  String get driver_id => 'Վարորդի ID';

  @override
  String get more_details => 'Ավելի մանրամասն';

  @override
  String get events => 'Իրադարձություններ';

  @override
  String get error_email_exists => 'Այս էլ. հասցեն արդեն գոյություն ունի';

  @override
  String get error_wrong_password => 'Սխալ գաղտնաբառ';

  @override
  String get error_phone_exists => 'Այս հեռախոսահամարն արդեն օգտագործվում է';

  @override
  String get error_sp_ch =>
      'Գաղտնաբառը պետք է պարունակի առնվազն մեկ հատուկ նիշ';

  @override
  String get error_up => 'Գաղտնաբառը պետք է պարունակի առնվազն մեկ մեծատառ';

  @override
  String get error_low => 'Գաղտնաբառը պետք է պարունակի առնվազն մեկ փոքրատառ';

  @override
  String get error_num => 'Գաղտնաբառը պետք է պարունակի առնվազն մեկ թիվ';

  @override
  String get error_required => 'Այս դաշտը պարտադիր է';

  @override
  String get error_invalid_email => 'Անվավեր էլ. հասցե';

  @override
  String error_password_short(Object length) {
    return 'Գաղտնաբառը պետք է պարունակի առնվազն $length նիշ';
  }
}
