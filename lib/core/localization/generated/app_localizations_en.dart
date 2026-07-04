// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Yes';

  @override
  String get common_no => 'No';

  @override
  String get common_cancel => 'Cancel';

  @override
  String get common_save => 'Save';

  @override
  String get common_save_changes => 'Save Changes';

  @override
  String get common_continue => 'Continue';

  @override
  String get common_next => 'Next';

  @override
  String get auth_login => 'Login';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'Logout';

  @override
  String get auth_confirm_logout => 'Are you sure you want to log out?';

  @override
  String get auth_signup => 'Sign Up';

  @override
  String get auth_create_account => 'Create Account';

  @override
  String get auth_already_have_account => 'Already have an account? ';

  @override
  String get auth_no_account => 'Don’t have an account?';

  @override
  String get auth_forgot_password => 'Forgot Password?';

  @override
  String get auth_reset_password => 'Reset Password?';

  @override
  String get auth_change_password => 'Change Password';

  @override
  String get auth_continue => 'By continuing, you agree to\n';

  @override
  String get auth_terms => 'Terms of Use and Privacy Policy';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Password';

  @override
  String get auth_confirm_password => 'Confirm Password';

  @override
  String get auth_new_password => 'New Password';

  @override
  String get auth_confirm_new_password => 'Confirm New Password';

  @override
  String get auth_enter_email => 'Enter email address';

  @override
  String get auth_password_hint => 'Enter your password';

  @override
  String get full_name => 'Full Name';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'Full Name is required';

  @override
  String get required_email => 'Email is required';

  @override
  String get email_end => 'Email must end with @gmail.com';

  @override
  String get required_password => 'Password is required';

  @override
  String get required_confirm_password => 'Confirm Password is required';

  @override
  String get password_do_not_match => 'Passwords do not match';

  @override
  String get min_password =>
      'Password must be at least 8 characters and contain numbers';

  @override
  String get send_verification_code => 'Send Verification Code';

  @override
  String get password_changed_successfully =>
      'Password Has Been\nChanged Successfully';

  @override
  String get forget_password_title =>
      'Enter the email associated with your account and we\'ll send you password reset Security Pin.';

  @override
  String get auth_security_pin => 'Security Pin';

  @override
  String get auth_enter_pin => 'Enter security pin';

  @override
  String get verify => 'Verify';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Send again in ${seconds}s';
  }

  @override
  String get home_title => 'Home';

  @override
  String get home_welcome => 'Hi, Welcome Back';

  @override
  String get home_good_morning => 'Good Morning';

  @override
  String get home_good_afternoon => 'Good Afternoon';

  @override
  String get home_good_evening => 'Good Evening';

  @override
  String get home_looks_good => 'Looks\nGood';

  @override
  String get home_safety_score => 'Safety Score Overview';

  @override
  String get home_total_accidents => 'Total accidents';

  @override
  String get total_active_cars => 'Total Active Cars';

  @override
  String get total_cars => 'Total Cars';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% of your cars are active';
  }

  @override
  String get car_section_title => 'Cars';

  @override
  String get car_view_all => 'View Cars';

  @override
  String get car_add => 'Add Car';

  @override
  String get car_edit => 'Edit Car';

  @override
  String get car_name => 'Car Name';

  @override
  String get car_plate => 'Plate Number';

  @override
  String get car_type => 'Car Class';

  @override
  String get car_driver_name => 'Driver Name';

  @override
  String car_item_title(Object id) {
    return 'Car : #$id';
  }

  @override
  String get tracking_live => 'Live Tracking';

  @override
  String get tracking_last_updates => 'Last Updates';

  @override
  String get event_title => 'Driving Events';

  @override
  String get event_speeding => 'Speeding';

  @override
  String get event_hard_braking => 'Hard Braking';

  @override
  String get event_aggressive_turns => 'Aggressive Turns';

  @override
  String get event_crash => 'Crash';

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
  String get event_severity => 'Severity';

  @override
  String get event_severity_low => 'Low';

  @override
  String get event_severity_medium => 'Medium';

  @override
  String get event_severity_high => 'High';

  @override
  String get event_severity_critical => 'Critical';

  @override
  String get event_reason => 'Reason';

  @override
  String get event_last_speed => 'Last Recorded Speed';

  @override
  String get notification_title => 'Notifications';

  @override
  String get notification_today => 'Today';

  @override
  String get notification_yesterday => 'Yesterday';

  @override
  String get notification_earlier => 'Earlier This Week';

  @override
  String get notification_fuel_alert => 'Fuel Leak Alert!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Vehicle $car driven by $driver reported a rapid drop in fuel level.';
  }

  @override
  String get notification_crash_alert => 'Critical crash detected!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Vehicle $car driven by $driver reported a severe collision.';
  }

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Edit My Profile';

  @override
  String get update_profile => 'Update Profile';

  @override
  String get user_name => 'User Name';

  @override
  String get security_title => 'Security';

  @override
  String get change_password => 'Change Password';

  @override
  String get settings_title => 'Settings';

  @override
  String get settings_notifications => 'Notification Settings';

  @override
  String get settings_general_notifications => 'General Notification';

  @override
  String get account_settings => 'Account Settings';

  @override
  String get push_notification => 'Push Notifications';

  @override
  String get dark_mode => 'Turn Dark Mode';

  @override
  String get help_title => 'Help Center';

  @override
  String get help_and_faq => 'Help & FAQS';

  @override
  String get help_contact => 'Contact Us';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'How Can We Help You?';

  @override
  String get on_wh_num => 'On Whatsapp Number';

  @override
  String get language => 'Language';

  @override
  String get question1 => 'How to use BlackBox?';

  @override
  String get answer1 =>
      'Install the BlackBox device in your car, log in to the app, and start driving. The app will automatically record and display your driving data.';

  @override
  String get question2 => 'How much does it cost to use BlackBox?';

  @override
  String get answer2 =>
      'The cost depends on the selected plan and services. Please contact the company for pricing details.';

  @override
  String get question3 => 'How to contact support?';

  @override
  String get answer3 =>
      'You can contact support via WhatsApp using the official company number or by visiting the company office during working hours.';

  @override
  String get question4 => 'How can I reset my password if I forget it?';

  @override
  String get answer4 =>
      'Use the \'Forgot Password\' option on the login screen and follow the instructions to reset your password.';

  @override
  String get question5 =>
      'Are there any privacy or data security measures in place?';

  @override
  String get answer5 =>
      'Yes. Your data is securely stored and protected, and it is not shared without your permission except when required by law.';

  @override
  String get question6 => 'Can I customize settings within the application?';

  @override
  String get answer6 =>
      'Yes. You can customize available settings such as notifications and preferences within the app.';

  @override
  String get question7 => 'How can I delete my account?';

  @override
  String get answer7 =>
      'To delete your account, please contact the company via WhatsApp or visit the company office.';

  @override
  String get question8 => 'How do I access my analytics history?';

  @override
  String get answer8 =>
      'You can view your past trips and driving analytics in the History or Analytics section of the app.';

  @override
  String get question9 => 'Can I use the app offline?';

  @override
  String get answer9 =>
      'The app has limited offline functionality. An internet connection is required to sync data and access full features.';

  @override
  String get terms_title => 'Terms and Conditions';

  @override
  String get terms_accept => 'Accept terms and conditions';

  @override
  String get terms_full =>
      '1. Acceptance of Terms\nBy installing or using this application, you agree to these Terms and Conditions. If you do not agree, please discontinue use of the app.\n\n2. Purpose of the Application\nThis application is a vehicle black box and telematics system used to monitor vehicle performance and driving behavior for informational, safety, and analytical purposes only.\n\n3. Data Parameters Collected\nThe application may collect and process vehicle and driving data, including but not limited to:\n\n• Vehicle speed\n• Fuel consumption and fuel level\n• Acceleration and deceleration\n• Harsh braking and rapid acceleration events\n• Sharp cornering\n• GPS location data (latitude and longitude)\n• Trip distance, duration, and time\n• Driver and vehicle identification data\n\nBy using the app, you explicitly consent to the collection of these parameters.\n\n4. Service Availability\nContinuous, real-time, or error-free operation of the app is not guaranteed due to technical limitations.';

  @override
  String get validation_password_mismatch => 'Passwords do not match';

  @override
  String get validation_invalid_phone => 'Invalid phone number';

  @override
  String get validation_incorrect_pin => 'Incorrect PIN';

  @override
  String get validation_empty_fields => 'Please fill all fields';

  @override
  String get empty_no_cars => 'No cars found';

  @override
  String get empty_no_notifications => 'No notifications yet';

  @override
  String get empty_no_events => 'No events available';

  @override
  String get status_loading => 'Loading...';

  @override
  String get status_success => 'Operation successful';

  @override
  String get status_error => 'Something went wrong';

  @override
  String get confirm_delete_car =>
      'Do you really want to delete this car with plate number ';

  @override
  String get confirm_reset_password =>
      'Are you sure you want to reset your password?';

  @override
  String get search => 'Search';

  @override
  String get search_hint => 'Search...';

  @override
  String get search_no_results => 'No results found';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Sort';

  @override
  String get onboarding_title_1 => 'Welcome';

  @override
  String get onboarding_desc_1 => 'To Black Box Manager';

  @override
  String get onboarding_title_2 => 'See the Story Behind Your Drive,';

  @override
  String get onboarding_desc_2 =>
      'Recording every journey, analyzing every mile.';

  @override
  String get delete_car => 'Delete Car';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Heavy Duty';

  @override
  String get current_password => 'Current Password';

  @override
  String get password_requirement =>
      'Must be at least 8 characters long and contain both letters and numbers.';

  @override
  String get current_password_is_not_correct =>
      'The current password is incorrect.';

  @override
  String get vehicle => 'Vehicle';

  @override
  String get driven_by => 'is driven by';

  @override
  String get report_fuel_level =>
      'reported a rapid drop in fuel level detected .';

  @override
  String get report_collision_or_rollover =>
      'reported a severe collision or rollover (sos).';

  @override
  String get report_overheating_or_dtc =>
      'reported a engine overheating or DTC codes detected .';

  @override
  String get unknown_driver => 'Unknown Driver';

  @override
  String get mechanical_failure => 'Mechanical Failure Warning !';

  @override
  String get critical_crash => 'Critical crash detected !';

  @override
  String get fuel_leak => 'Fuel Leak Alert !';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get day => 'day';

  @override
  String get days => 'days';

  @override
  String get week => 'week';

  @override
  String get weeks => 'weeks';

  @override
  String get month => 'month';

  @override
  String get months => 'months';

  @override
  String get year => 'year';

  @override
  String get years => 'years';

  @override
  String get january => 'January';

  @override
  String get february => 'February';

  @override
  String get march => 'March';

  @override
  String get april => 'April';

  @override
  String get may => 'May';

  @override
  String get june => 'June';

  @override
  String get july => 'July';

  @override
  String get august => 'August';

  @override
  String get september => 'September';

  @override
  String get october => 'October';

  @override
  String get november => 'November';

  @override
  String get december => 'December';

  @override
  String more_than_years(Object num) {
    return 'Since #$num Years';
  }

  @override
  String get since_two_years => 'Since 2 Years';

  @override
  String get since_year => 'Since a year';

  @override
  String since_months(Object num) {
    return 'Since #$num Months';
  }

  @override
  String get since_two_months => 'Since 2 Months';

  @override
  String get since_month => 'Since a month';

  @override
  String since_weeks(Object num) {
    return 'Since #$num weeks';
  }

  @override
  String get since_two_weeks => 'Since 2 weeks';

  @override
  String get since_week => 'Since week';

  @override
  String since_days(Object num) {
    return 'Since #$num days';
  }

  @override
  String get since_two_days => 'Since 2 days';

  @override
  String get since_day => 'Since a day';

  @override
  String get view_driving_events => 'View Driving Events';

  @override
  String get coolant_temp => 'Coolant Temp';

  @override
  String get dtc_codes => 'DTC Codes';

  @override
  String get road_bump => 'Road Bump';

  @override
  String get fuel_level => 'Fuel Level';

  @override
  String get driving_behavior_score => 'Driving Behavior Score';

  @override
  String get event_major_crashes => 'Major Crashes';

  @override
  String get event_speeding_incident => 'Speeding Incidents';

  @override
  String get driver_id => 'Driver Id';

  @override
  String get more_details => 'More Details';

  @override
  String get events => 'Events';

  @override
  String get error_email_exists => 'This email already exists';

  @override
  String get error_wrong_password => 'Incorrect password';

  @override
  String get error_phone_exists => 'This phone number is already used';

  @override
  String get error_sp_ch =>
      'Password must contain at least one special character';

  @override
  String get error_up => 'Password must contain at least one uppercase letter';

  @override
  String get error_low => 'Password must contain at least one lowercase letter';

  @override
  String get error_num => 'Password must contain at least one number';

  @override
  String get error_required => 'This field is required';

  @override
  String get error_invalid_email => 'Invalid email address';

  @override
  String error_password_short(Object length) {
    return 'Password must be at least $length characters';
  }
}
