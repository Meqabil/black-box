import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_zgh.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('ar'),
    Locale('az'),
    Locale('bn'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('he'),
    Locale('hi'),
    Locale('hy'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('zgh'),
    Locale('zh')
  ];

  /// No description provided for @app_title.
  ///
  /// In en, this message translates to:
  /// **'BlackBox App'**
  String get app_title;

  /// No description provided for @common_yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get common_yes;

  /// No description provided for @common_no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get common_no;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get common_save;

  /// No description provided for @common_save_changes.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get common_save_changes;

  /// No description provided for @common_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get common_continue;

  /// No description provided for @common_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get common_next;

  /// No description provided for @auth_login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get auth_login;

  /// No description provided for @auth_space_login.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get auth_space_login;

  /// No description provided for @auth_logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get auth_logout;

  /// No description provided for @auth_confirm_logout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get auth_confirm_logout;

  /// No description provided for @auth_signup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get auth_signup;

  /// No description provided for @auth_create_account.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get auth_create_account;

  /// No description provided for @auth_already_have_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get auth_already_have_account;

  /// No description provided for @auth_no_account.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get auth_no_account;

  /// No description provided for @auth_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get auth_forgot_password;

  /// No description provided for @auth_reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset Password?'**
  String get auth_reset_password;

  /// No description provided for @auth_change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get auth_change_password;

  /// No description provided for @auth_continue.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you agree to\n'**
  String get auth_continue;

  /// No description provided for @auth_terms.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use and Privacy Policy'**
  String get auth_terms;

  /// No description provided for @auth_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get auth_email;

  /// No description provided for @auth_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get auth_password;

  /// No description provided for @auth_confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get auth_confirm_password;

  /// No description provided for @auth_new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get auth_new_password;

  /// No description provided for @auth_confirm_new_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get auth_confirm_new_password;

  /// No description provided for @auth_enter_email.
  ///
  /// In en, this message translates to:
  /// **'Enter email address'**
  String get auth_enter_email;

  /// No description provided for @auth_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get auth_password_hint;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @email_hint.
  ///
  /// In en, this message translates to:
  /// **'example@gmail.com'**
  String get email_hint;

  /// No description provided for @name_hint.
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get name_hint;

  /// No description provided for @required_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name is required'**
  String get required_name;

  /// No description provided for @required_email.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get required_email;

  /// No description provided for @email_end.
  ///
  /// In en, this message translates to:
  /// **'Email must end with @gmail.com'**
  String get email_end;

  /// No description provided for @required_password.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get required_password;

  /// No description provided for @required_confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password is required'**
  String get required_confirm_password;

  /// No description provided for @password_do_not_match.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get password_do_not_match;

  /// No description provided for @min_password.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters and contain numbers'**
  String get min_password;

  /// No description provided for @send_verification_code.
  ///
  /// In en, this message translates to:
  /// **'Send Verification Code'**
  String get send_verification_code;

  /// No description provided for @password_changed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Password Has Been\nChanged Successfully'**
  String get password_changed_successfully;

  /// No description provided for @forget_password_title.
  ///
  /// In en, this message translates to:
  /// **'Enter the email associated with your account and we\'ll send you password reset Security Pin.'**
  String get forget_password_title;

  /// No description provided for @auth_security_pin.
  ///
  /// In en, this message translates to:
  /// **'Security Pin'**
  String get auth_security_pin;

  /// No description provided for @auth_enter_pin.
  ///
  /// In en, this message translates to:
  /// **'Enter security pin'**
  String get auth_enter_pin;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @auth_resend_pin.
  ///
  /// In en, this message translates to:
  /// **'Send again in {seconds}s'**
  String auth_resend_pin(Object seconds);

  /// No description provided for @home_title.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_title;

  /// No description provided for @home_welcome.
  ///
  /// In en, this message translates to:
  /// **'Hi, Welcome Back'**
  String get home_welcome;

  /// No description provided for @home_good_morning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get home_good_morning;

  /// No description provided for @home_good_afternoon.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon'**
  String get home_good_afternoon;

  /// No description provided for @home_good_evening.
  ///
  /// In en, this message translates to:
  /// **'Good Evening'**
  String get home_good_evening;

  /// No description provided for @home_looks_good.
  ///
  /// In en, this message translates to:
  /// **'Looks\nGood'**
  String get home_looks_good;

  /// No description provided for @home_safety_score.
  ///
  /// In en, this message translates to:
  /// **'Safety Score Overview'**
  String get home_safety_score;

  /// No description provided for @home_total_accidents.
  ///
  /// In en, this message translates to:
  /// **'Total accidents'**
  String get home_total_accidents;

  /// No description provided for @total_active_cars.
  ///
  /// In en, this message translates to:
  /// **'Total Active Cars'**
  String get total_active_cars;

  /// No description provided for @total_cars.
  ///
  /// In en, this message translates to:
  /// **'Total Cars'**
  String get total_cars;

  /// No description provided for @home_active_cars.
  ///
  /// In en, this message translates to:
  /// **'{percentage}% of your cars are active'**
  String home_active_cars(Object percentage);

  /// No description provided for @car_section_title.
  ///
  /// In en, this message translates to:
  /// **'Cars'**
  String get car_section_title;

  /// No description provided for @car_view_all.
  ///
  /// In en, this message translates to:
  /// **'View Cars'**
  String get car_view_all;

  /// No description provided for @car_add.
  ///
  /// In en, this message translates to:
  /// **'Add Car'**
  String get car_add;

  /// No description provided for @car_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit Car'**
  String get car_edit;

  /// No description provided for @car_name.
  ///
  /// In en, this message translates to:
  /// **'Car Name'**
  String get car_name;

  /// No description provided for @car_plate.
  ///
  /// In en, this message translates to:
  /// **'Plate Number'**
  String get car_plate;

  /// No description provided for @car_type.
  ///
  /// In en, this message translates to:
  /// **'Car Class'**
  String get car_type;

  /// No description provided for @car_driver_name.
  ///
  /// In en, this message translates to:
  /// **'Driver Name'**
  String get car_driver_name;

  /// No description provided for @car_item_title.
  ///
  /// In en, this message translates to:
  /// **'Car : #{id}'**
  String car_item_title(Object id);

  /// No description provided for @tracking_live.
  ///
  /// In en, this message translates to:
  /// **'Live Tracking'**
  String get tracking_live;

  /// No description provided for @tracking_last_updates.
  ///
  /// In en, this message translates to:
  /// **'Last Updates'**
  String get tracking_last_updates;

  /// No description provided for @event_title.
  ///
  /// In en, this message translates to:
  /// **'Driving Events'**
  String get event_title;

  /// No description provided for @event_speeding.
  ///
  /// In en, this message translates to:
  /// **'Speeding'**
  String get event_speeding;

  /// No description provided for @event_hard_braking.
  ///
  /// In en, this message translates to:
  /// **'Hard Braking'**
  String get event_hard_braking;

  /// No description provided for @event_aggressive_turns.
  ///
  /// In en, this message translates to:
  /// **'Aggressive Turns'**
  String get event_aggressive_turns;

  /// No description provided for @event_crash.
  ///
  /// In en, this message translates to:
  /// **'Crash'**
  String get event_crash;

  /// No description provided for @event_location.
  ///
  /// In en, this message translates to:
  /// **'In {location}'**
  String event_location(Object location);

  /// No description provided for @event_time.
  ///
  /// In en, this message translates to:
  /// **'{time} - {date}'**
  String event_time(Object time, Object date);

  /// No description provided for @event_speed.
  ///
  /// In en, this message translates to:
  /// **'{speed} km/h'**
  String event_speed(Object speed);

  /// No description provided for @event_severity.
  ///
  /// In en, this message translates to:
  /// **'Severity'**
  String get event_severity;

  /// No description provided for @event_severity_low.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get event_severity_low;

  /// No description provided for @event_severity_medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get event_severity_medium;

  /// No description provided for @event_severity_high.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get event_severity_high;

  /// No description provided for @event_severity_critical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get event_severity_critical;

  /// No description provided for @event_reason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get event_reason;

  /// No description provided for @event_last_speed.
  ///
  /// In en, this message translates to:
  /// **'Last Recorded Speed'**
  String get event_last_speed;

  /// No description provided for @notification_title.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notification_title;

  /// No description provided for @notification_today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get notification_today;

  /// No description provided for @notification_yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get notification_yesterday;

  /// No description provided for @notification_earlier.
  ///
  /// In en, this message translates to:
  /// **'Earlier This Week'**
  String get notification_earlier;

  /// No description provided for @notification_fuel_alert.
  ///
  /// In en, this message translates to:
  /// **'Fuel Leak Alert!'**
  String get notification_fuel_alert;

  /// No description provided for @notification_fuel_desc.
  ///
  /// In en, this message translates to:
  /// **'Vehicle {car} driven by {driver} reported a rapid drop in fuel level.'**
  String notification_fuel_desc(Object car, Object driver);

  /// No description provided for @notification_crash_alert.
  ///
  /// In en, this message translates to:
  /// **'Critical crash detected!'**
  String get notification_crash_alert;

  /// No description provided for @notification_crash_desc.
  ///
  /// In en, this message translates to:
  /// **'Vehicle {car} driven by {driver} reported a severe collision.'**
  String notification_crash_desc(Object car, Object driver);

  /// No description provided for @profile_title.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile_title;

  /// No description provided for @profile_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit My Profile'**
  String get profile_edit;

  /// No description provided for @update_profile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get update_profile;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get user_name;

  /// No description provided for @security_title.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security_title;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @settings_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// No description provided for @settings_notifications.
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get settings_notifications;

  /// No description provided for @settings_general_notifications.
  ///
  /// In en, this message translates to:
  /// **'General Notification'**
  String get settings_general_notifications;

  /// No description provided for @account_settings.
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get account_settings;

  /// No description provided for @push_notification.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get push_notification;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Turn Dark Mode'**
  String get dark_mode;

  /// No description provided for @help_title.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get help_title;

  /// No description provided for @help_and_faq.
  ///
  /// In en, this message translates to:
  /// **'Help & FAQS'**
  String get help_and_faq;

  /// No description provided for @help_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get help_contact;

  /// No description provided for @help_faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get help_faq;

  /// No description provided for @how_help.
  ///
  /// In en, this message translates to:
  /// **'How Can We Help You?'**
  String get how_help;

  /// No description provided for @on_wh_num.
  ///
  /// In en, this message translates to:
  /// **'On Phone Number 5851'**
  String get on_wh_num;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @question1.
  ///
  /// In en, this message translates to:
  /// **'How to use BlackBox?'**
  String get question1;

  /// No description provided for @answer1.
  ///
  /// In en, this message translates to:
  /// **'Install the BlackBox device in your car, log in to the app, and start driving. The app will automatically record and display your driving data.'**
  String get answer1;

  /// No description provided for @question2.
  ///
  /// In en, this message translates to:
  /// **'How much does it cost to use BlackBox?'**
  String get question2;

  /// No description provided for @answer2.
  ///
  /// In en, this message translates to:
  /// **'The cost depends on the selected plan and services. Please contact the company for pricing details.'**
  String get answer2;

  /// No description provided for @question3.
  ///
  /// In en, this message translates to:
  /// **'How to contact support?'**
  String get question3;

  /// No description provided for @answer3.
  ///
  /// In en, this message translates to:
  /// **'You can contact support via WhatsApp using the official company number or by visiting the company office during working hours.'**
  String get answer3;

  /// No description provided for @question4.
  ///
  /// In en, this message translates to:
  /// **'How can I reset my password if I forget it?'**
  String get question4;

  /// No description provided for @answer4.
  ///
  /// In en, this message translates to:
  /// **'Use the \'Forgot Password\' option on the login screen and follow the instructions to reset your password.'**
  String get answer4;

  /// No description provided for @question5.
  ///
  /// In en, this message translates to:
  /// **'Are there any privacy or data security measures in place?'**
  String get question5;

  /// No description provided for @answer5.
  ///
  /// In en, this message translates to:
  /// **'Yes. Your data is securely stored and protected, and it is not shared without your permission except when required by law.'**
  String get answer5;

  /// No description provided for @question6.
  ///
  /// In en, this message translates to:
  /// **'Can I customize settings within the application?'**
  String get question6;

  /// No description provided for @answer6.
  ///
  /// In en, this message translates to:
  /// **'Yes. You can customize available settings such as notifications and preferences within the app.'**
  String get answer6;

  /// No description provided for @question7.
  ///
  /// In en, this message translates to:
  /// **'How can I delete my account?'**
  String get question7;

  /// No description provided for @answer7.
  ///
  /// In en, this message translates to:
  /// **'To delete your account, please contact the company via WhatsApp or visit the company office.'**
  String get answer7;

  /// No description provided for @question8.
  ///
  /// In en, this message translates to:
  /// **'How do I access my analytics history?'**
  String get question8;

  /// No description provided for @answer8.
  ///
  /// In en, this message translates to:
  /// **'You can view your past trips and driving analytics in the History or Analytics section of the app.'**
  String get answer8;

  /// No description provided for @question9.
  ///
  /// In en, this message translates to:
  /// **'Can I use the app offline?'**
  String get question9;

  /// No description provided for @answer9.
  ///
  /// In en, this message translates to:
  /// **'The app has limited offline functionality. An internet connection is required to sync data and access full features.'**
  String get answer9;

  /// No description provided for @terms_title.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get terms_title;

  /// No description provided for @terms_accept.
  ///
  /// In en, this message translates to:
  /// **'Accept terms and conditions'**
  String get terms_accept;

  /// No description provided for @terms_full.
  ///
  /// In en, this message translates to:
  /// **'1. Acceptance of Terms\nBy installing or using this application, you agree to these Terms and Conditions. If you do not agree, please discontinue use of the app.\n\n2. Purpose of the Application\nThis application is a vehicle black box and telematics system used to monitor vehicle performance and driving behavior for informational, safety, and analytical purposes only.\n\n3. Data Parameters Collected\nThe application may collect and process vehicle and driving data, including but not limited to:\n\n• Vehicle speed\n• Fuel consumption and fuel level\n• Acceleration and deceleration\n• Harsh braking and rapid acceleration events\n• Sharp cornering\n• GPS location data (latitude and longitude)\n• Trip distance, duration, and time\n• Driver and vehicle identification data\n\nBy using the app, you explicitly consent to the collection of these parameters.\n\n4. Service Availability\nContinuous, real-time, or error-free operation of the app is not guaranteed due to technical limitations.'**
  String get terms_full;

  /// No description provided for @validation_password_mismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get validation_password_mismatch;

  /// No description provided for @validation_invalid_phone.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get validation_invalid_phone;

  /// No description provided for @validation_incorrect_pin.
  ///
  /// In en, this message translates to:
  /// **'Incorrect PIN'**
  String get validation_incorrect_pin;

  /// No description provided for @validation_empty_fields.
  ///
  /// In en, this message translates to:
  /// **'Please fill all fields'**
  String get validation_empty_fields;

  /// No description provided for @empty_no_cars.
  ///
  /// In en, this message translates to:
  /// **'No cars found'**
  String get empty_no_cars;

  /// No description provided for @empty_no_notifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications yet'**
  String get empty_no_notifications;

  /// No description provided for @empty_no_events.
  ///
  /// In en, this message translates to:
  /// **'No events available'**
  String get empty_no_events;

  /// No description provided for @status_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get status_loading;

  /// No description provided for @status_success.
  ///
  /// In en, this message translates to:
  /// **'Operation successful'**
  String get status_success;

  /// No description provided for @status_error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get status_error;

  /// No description provided for @confirm_delete_car.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to delete this car with plate number '**
  String get confirm_delete_car;

  /// No description provided for @confirm_reset_password.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset your password?'**
  String get confirm_reset_password;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @search_hint.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get search_hint;

  /// No description provided for @search_no_results.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get search_no_results;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @onboarding_title_1.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get onboarding_title_1;

  /// No description provided for @onboarding_desc_1.
  ///
  /// In en, this message translates to:
  /// **'To Black Box Manager'**
  String get onboarding_desc_1;

  /// No description provided for @onboarding_title_2.
  ///
  /// In en, this message translates to:
  /// **'See the Story Behind Your Drive,'**
  String get onboarding_title_2;

  /// No description provided for @onboarding_desc_2.
  ///
  /// In en, this message translates to:
  /// **'Recording every journey, analyzing every mile.'**
  String get onboarding_desc_2;

  /// No description provided for @delete_car.
  ///
  /// In en, this message translates to:
  /// **'Delete Car'**
  String get delete_car;

  /// No description provided for @sedan.
  ///
  /// In en, this message translates to:
  /// **'Sedan'**
  String get sedan;

  /// No description provided for @heavy_duty.
  ///
  /// In en, this message translates to:
  /// **'Heavy Duty'**
  String get heavy_duty;

  /// No description provided for @current_password.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get current_password;

  /// No description provided for @password_requirement.
  ///
  /// In en, this message translates to:
  /// **'Must be at least 8 characters long and contain both letters and numbers.'**
  String get password_requirement;

  /// No description provided for @current_password_is_not_correct.
  ///
  /// In en, this message translates to:
  /// **'The current password is incorrect.'**
  String get current_password_is_not_correct;

  /// No description provided for @vehicle.
  ///
  /// In en, this message translates to:
  /// **'Vehicle'**
  String get vehicle;

  /// No description provided for @driven_by.
  ///
  /// In en, this message translates to:
  /// **'is driven by'**
  String get driven_by;

  /// No description provided for @report_fuel_level.
  ///
  /// In en, this message translates to:
  /// **'reported a rapid drop in fuel level detected .'**
  String get report_fuel_level;

  /// No description provided for @report_collision_or_rollover.
  ///
  /// In en, this message translates to:
  /// **'reported a severe collision or rollover (sos).'**
  String get report_collision_or_rollover;

  /// No description provided for @report_overheating_or_dtc.
  ///
  /// In en, this message translates to:
  /// **'reported a engine overheating or DTC codes detected .'**
  String get report_overheating_or_dtc;

  /// No description provided for @unknown_driver.
  ///
  /// In en, this message translates to:
  /// **'Unknown Driver'**
  String get unknown_driver;

  /// No description provided for @mechanical_failure.
  ///
  /// In en, this message translates to:
  /// **'Mechanical Failure Warning !'**
  String get mechanical_failure;

  /// No description provided for @critical_crash.
  ///
  /// In en, this message translates to:
  /// **'Critical crash detected !'**
  String get critical_crash;

  /// No description provided for @fuel_leak.
  ///
  /// In en, this message translates to:
  /// **'Fuel Leak Alert !'**
  String get fuel_leak;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get day;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get days;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'week'**
  String get week;

  /// No description provided for @weeks.
  ///
  /// In en, this message translates to:
  /// **'weeks'**
  String get weeks;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get month;

  /// No description provided for @months.
  ///
  /// In en, this message translates to:
  /// **'months'**
  String get months;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'year'**
  String get year;

  /// No description provided for @years.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get years;

  /// No description provided for @january.
  ///
  /// In en, this message translates to:
  /// **'January'**
  String get january;

  /// No description provided for @february.
  ///
  /// In en, this message translates to:
  /// **'February'**
  String get february;

  /// No description provided for @march.
  ///
  /// In en, this message translates to:
  /// **'March'**
  String get march;

  /// No description provided for @april.
  ///
  /// In en, this message translates to:
  /// **'April'**
  String get april;

  /// No description provided for @may.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get may;

  /// No description provided for @june.
  ///
  /// In en, this message translates to:
  /// **'June'**
  String get june;

  /// No description provided for @july.
  ///
  /// In en, this message translates to:
  /// **'July'**
  String get july;

  /// No description provided for @august.
  ///
  /// In en, this message translates to:
  /// **'August'**
  String get august;

  /// No description provided for @september.
  ///
  /// In en, this message translates to:
  /// **'September'**
  String get september;

  /// No description provided for @october.
  ///
  /// In en, this message translates to:
  /// **'October'**
  String get october;

  /// No description provided for @november.
  ///
  /// In en, this message translates to:
  /// **'November'**
  String get november;

  /// No description provided for @december.
  ///
  /// In en, this message translates to:
  /// **'December'**
  String get december;

  /// No description provided for @more_than_years.
  ///
  /// In en, this message translates to:
  /// **'Since #{num} Years'**
  String more_than_years(Object num);

  /// No description provided for @since_two_years.
  ///
  /// In en, this message translates to:
  /// **'Since 2 Years'**
  String get since_two_years;

  /// No description provided for @since_year.
  ///
  /// In en, this message translates to:
  /// **'Since a year'**
  String get since_year;

  /// No description provided for @since_months.
  ///
  /// In en, this message translates to:
  /// **'Since #{num} Months'**
  String since_months(Object num);

  /// No description provided for @since_two_months.
  ///
  /// In en, this message translates to:
  /// **'Since 2 Months'**
  String get since_two_months;

  /// No description provided for @since_month.
  ///
  /// In en, this message translates to:
  /// **'Since a month'**
  String get since_month;

  /// No description provided for @since_weeks.
  ///
  /// In en, this message translates to:
  /// **'Since #{num} weeks'**
  String since_weeks(Object num);

  /// No description provided for @since_two_weeks.
  ///
  /// In en, this message translates to:
  /// **'Since 2 weeks'**
  String get since_two_weeks;

  /// No description provided for @since_week.
  ///
  /// In en, this message translates to:
  /// **'Since week'**
  String get since_week;

  /// No description provided for @since_days.
  ///
  /// In en, this message translates to:
  /// **'Since #{num} days'**
  String since_days(Object num);

  /// No description provided for @since_two_days.
  ///
  /// In en, this message translates to:
  /// **'Since 2 days'**
  String get since_two_days;

  /// No description provided for @since_day.
  ///
  /// In en, this message translates to:
  /// **'Since a day'**
  String get since_day;

  /// No description provided for @view_driving_events.
  ///
  /// In en, this message translates to:
  /// **'View Driving Events'**
  String get view_driving_events;

  /// No description provided for @coolant_temp.
  ///
  /// In en, this message translates to:
  /// **'Coolant Temp'**
  String get coolant_temp;

  /// No description provided for @dtc_codes.
  ///
  /// In en, this message translates to:
  /// **'DTC Codes'**
  String get dtc_codes;

  /// No description provided for @road_bump.
  ///
  /// In en, this message translates to:
  /// **'Road Bump'**
  String get road_bump;

  /// No description provided for @fuel_level.
  ///
  /// In en, this message translates to:
  /// **'Fuel Level'**
  String get fuel_level;

  /// No description provided for @driving_behavior_score.
  ///
  /// In en, this message translates to:
  /// **'Driving Behavior Score'**
  String get driving_behavior_score;

  /// No description provided for @event_major_crashes.
  ///
  /// In en, this message translates to:
  /// **'Major Crashes'**
  String get event_major_crashes;

  /// No description provided for @event_speeding_incident.
  ///
  /// In en, this message translates to:
  /// **'Speeding Incidents'**
  String get event_speeding_incident;

  /// No description provided for @driver_id.
  ///
  /// In en, this message translates to:
  /// **'Driver Id'**
  String get driver_id;

  /// No description provided for @more_details.
  ///
  /// In en, this message translates to:
  /// **'More Details'**
  String get more_details;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @error_email_exists.
  ///
  /// In en, this message translates to:
  /// **'This email already exists'**
  String get error_email_exists;

  /// No description provided for @error_wrong_password.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password'**
  String get error_wrong_password;

  /// No description provided for @error_phone_exists.
  ///
  /// In en, this message translates to:
  /// **'This phone number is already used'**
  String get error_phone_exists;

  /// No description provided for @error_sp_ch.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one special character'**
  String get error_sp_ch;

  /// No description provided for @error_up.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase letter'**
  String get error_up;

  /// No description provided for @error_low.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one lowercase letter'**
  String get error_low;

  /// No description provided for @error_num.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one number'**
  String get error_num;

  /// No description provided for @error_required.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get error_required;

  /// No description provided for @error_invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get error_invalid_email;

  /// No description provided for @error_password_short.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least {length} characters'**
  String error_password_short(Object length);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'am',
        'ar',
        'az',
        'bn',
        'cs',
        'da',
        'de',
        'el',
        'en',
        'es',
        'fa',
        'fi',
        'fr',
        'he',
        'hi',
        'hy',
        'id',
        'it',
        'ja',
        'ko',
        'ms',
        'nl',
        'no',
        'pl',
        'ps',
        'pt',
        'ru',
        'sk',
        'sl',
        'sr',
        'sv',
        'sw',
        'th',
        'tr',
        'uk',
        'zgh',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'bn':
      return AppLocalizationsBn();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'zgh':
      return AppLocalizationsZgh();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
