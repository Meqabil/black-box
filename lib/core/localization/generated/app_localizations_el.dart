// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Ναι';

  @override
  String get common_no => 'Όχι';

  @override
  String get common_cancel => 'Ακύρωση';

  @override
  String get common_save => 'Αποθήκευση';

  @override
  String get common_save_changes => 'Αποθήκευση Αλλαγών';

  @override
  String get common_continue => 'Συνέχεια';

  @override
  String get common_next => 'Επόμενο';

  @override
  String get auth_login => 'Σύνδεση';

  @override
  String get auth_space_login => 'Σύνδεση';

  @override
  String get auth_logout => 'Αποσύνδεση';

  @override
  String get auth_confirm_logout =>
      'Είστε σίγουροι ότι θέλετε να αποσυνδεθείτε;';

  @override
  String get auth_signup => 'Εγγραφή';

  @override
  String get auth_create_account => 'Δημιουργία Λογαριασμού';

  @override
  String get auth_already_have_account => 'Έχετε ήδη λογαριασμό; ';

  @override
  String get auth_no_account => 'Δεν έχετε λογαριασμό;';

  @override
  String get auth_forgot_password => 'Ξεχάσατε τον Κωδικό;';

  @override
  String get auth_reset_password => 'Επαναφορά Κωδικού;';

  @override
  String get auth_change_password => 'Αλλαγή Κωδικού';

  @override
  String get auth_continue => 'Συνεχίζοντας, συμφωνείτε με τους\n';

  @override
  String get auth_terms => 'Όρους Χρήσης και Πολιτική Απορρήτου';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Κωδικός';

  @override
  String get auth_confirm_password => 'Επιβεβαίωση Κωδικού';

  @override
  String get auth_new_password => 'Νέος Κωδικός';

  @override
  String get auth_confirm_new_password => 'Επιβεβαίωση Νέου Κωδικού';

  @override
  String get auth_enter_email => 'Εισαγωγή διεύθυνσης email';

  @override
  String get auth_password_hint => 'Εισαγωγή κωδικού';

  @override
  String get full_name => 'Πλήρες Όνομα';

  @override
  String get email_hint => 'παράδειγμα@gmail.com';

  @override
  String get name_hint => 'Γιάννης Δήμου';

  @override
  String get required_name => 'Απαιτείται Πλήρες Όνομα';

  @override
  String get required_email => 'Απαιτείται Email';

  @override
  String get email_end => 'Το email πρέπει να τελειώνει σε @gmail.com';

  @override
  String get required_password => 'Απαιτείται Κωδικός';

  @override
  String get required_confirm_password => 'Απαιτείται Επιβεβαίωση Κωδικού';

  @override
  String get password_do_not_match => 'Οι κωδικοί δεν ταιριάζουν';

  @override
  String get min_password =>
      'Ο κωδικός πρέπει να έχει τουλάχιστον 8 χαρακτήρες και να περιέχει αριθμούς';

  @override
  String get send_verification_code => 'Αποστολή Κωδικού Επαλήθευσης';

  @override
  String get password_changed_successfully => 'Ο Κωδικός Άλλαξε\nΕπιτυχώς';

  @override
  String get forget_password_title =>
      'Εισάγετε το email που σχετίζεται με τον λογαριασμό σας και θα σας στείλουμε PIN ασφαλείας για επαναφορά κωδικού.';

  @override
  String get auth_security_pin => 'PIN Ασφαλείας';

  @override
  String get auth_enter_pin => 'Εισαγωγή PIN ασφαλείας';

  @override
  String get verify => 'Επαλήθευση';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Αποστολή ξανά σε $seconds δευτερόλεπτα';
  }

  @override
  String get home_title => 'Αρχική';

  @override
  String get home_welcome => 'Γεια, Καλώς Ήρθες Πίσω';

  @override
  String get home_good_morning => 'Καλημέρα';

  @override
  String get home_good_afternoon => 'Καλησπέρα';

  @override
  String get home_good_evening => 'Καλό βράδυ';

  @override
  String get home_looks_good => 'Φαίνεται\nΚαλό';

  @override
  String get home_safety_score => 'Επισκόπηση Βαθμολογίας Ασφάλειας';

  @override
  String get home_total_accidents => 'Σύνολο ατυχημάτων';

  @override
  String get total_active_cars => 'Σύνολο Ενεργών Αυτοκινήτων';

  @override
  String get total_cars => 'Σύνολο Αυτοκινήτων';

  @override
  String home_active_cars(Object percentage) {
    return 'Το $percentage% των αυτοκινήτων σας είναι ενεργά';
  }

  @override
  String get car_section_title => 'Αυτοκίνητα';

  @override
  String get car_view_all => 'Προβολή Αυτοκινήτων';

  @override
  String get car_add => 'Προσθήκη Αυτοκινήτου';

  @override
  String get car_edit => 'Επεξεργασία Αυτοκινήτου';

  @override
  String get car_name => 'Όνομα Αυτοκινήτου';

  @override
  String get car_plate => 'Πινακίδα';

  @override
  String get car_type => 'Τύπος Αυτοκινήτου';

  @override
  String get car_driver_name => 'Όνομα Οδηγού';

  @override
  String car_item_title(Object id) {
    return 'Αυτοκίνητο #$id';
  }

  @override
  String get tracking_live => 'Ζωντανή Παρακολούθηση';

  @override
  String get tracking_last_updates => 'Τελευταίες Ενημερώσεις';

  @override
  String get event_title => 'Συμβάντα Οδήγησης';

  @override
  String get event_speeding => 'Υπερβολική Ταχύτητα';

  @override
  String get event_hard_braking => 'Απότομο Φρενάρισμα';

  @override
  String get event_aggressive_turns => 'Απότομες Στροφές';

  @override
  String get event_crash => 'Σύγκρουση';

  @override
  String event_location(Object location) {
    return 'Στην $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed χλμ/ώρα';
  }

  @override
  String get event_severity => 'Σοβαρότητα';

  @override
  String get event_severity_low => 'Χαμηλή';

  @override
  String get event_severity_medium => 'Μεσαία';

  @override
  String get event_severity_high => 'Υψηλή';

  @override
  String get event_severity_critical => 'Κρίσιμη';

  @override
  String get event_reason => 'Αιτία';

  @override
  String get event_last_speed => 'Τελευταία Καταγεγραμμένη Ταχύτητα';

  @override
  String get notification_title => 'Ειδοποιήσεις';

  @override
  String get notification_today => 'Σήμερα';

  @override
  String get notification_yesterday => 'Χθες';

  @override
  String get notification_earlier => 'Νωρίτερα Αυτή την Εβδομάδα';

  @override
  String get notification_fuel_alert => 'Ειδοποίηση Διαρροής Καυσίμου!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Το όχημα $car με οδηγό $driver ανέφερε απότομη πτώση της στάθμης καυσίμου.';
  }

  @override
  String get notification_crash_alert => 'Εντοπίστηκε κρίσιμη σύγκρουση!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Το όχημα $car με οδηγό $driver ανέφερε σοβαρή σύγκρουση.';
  }

  @override
  String get profile_title => 'Προφίλ';

  @override
  String get profile_edit => 'Επεξεργασία Προφίλ';

  @override
  String get update_profile => 'Ενημέρωση Προφίλ';

  @override
  String get user_name => 'Όνομα Χρήστη';

  @override
  String get security_title => 'Ασφάλεια';

  @override
  String get change_password => 'Αλλαγή Κωδικού';

  @override
  String get settings_title => 'Ρυθμίσεις';

  @override
  String get settings_notifications => 'Ρυθμίσεις Ειδοποιήσεων';

  @override
  String get settings_general_notifications => 'Γενικές Ειδοποιήσεις';

  @override
  String get account_settings => 'Ρυθμίσεις Λογαριασμού';

  @override
  String get push_notification => 'Push Ειδοποιήσεις';

  @override
  String get dark_mode => 'Σκοτεινή Λειτουργία Ενεργή';

  @override
  String get help_title => 'Κέντρο Βοήθειας';

  @override
  String get help_and_faq => 'Βοήθεια & FAQ';

  @override
  String get help_contact => 'Επικοινωνία';

  @override
  String get help_faq => 'Συχνές Ερωτήσεις';

  @override
  String get how_help => 'Πώς Μπορούμε να Σας Βοηθήσουμε;';

  @override
  String get on_wh_num => 'Στον Αριθμό WhatsApp';

  @override
  String get language => 'Γλώσσα';

  @override
  String get question1 => 'Πώς να χρησιμοποιήσω το BlackBox;';

  @override
  String get answer1 =>
      'Εγκαταστήστε τη συσκευή BlackBox στο αυτοκίνητό σας, συνδεθείτε στην εφαρμογή και ξεκινήστε την οδήγηση. Η εφαρμογή θα καταγράφει και θα εμφανίζει αυτόματα τα δεδομένα οδήγησής σας.';

  @override
  String get question2 => 'Πόσο κοστίζει η χρήση του BlackBox;';

  @override
  String get answer2 =>
      'Το κόστος εξαρτάται από το επιλεγμένο πρόγραμμα και τις υπηρεσίες. Παρακαλούμε επικοινωνήστε με την εταιρεία για λεπτομέρειες τιμολόγησης.';

  @override
  String get question3 => 'Πώς να επικοινωνήσω με την υποστήριξη;';

  @override
  String get answer3 =>
      'Μπορείτε να επικοινωνήσετε με την υποστήριξη μέσω WhatsApp χρησιμοποιώντας τον επίσημο αριθμό της εταιρείας ή επισκεπτόμενοι τα γραφεία της εταιρείας κατά τις ώρες λειτουργίας.';

  @override
  String get question4 =>
      'Πώς μπορώ να επαναφέρω τον κωδικό μου αν τον ξεχάσω;';

  @override
  String get answer4 =>
      'Χρησιμοποιήστε την επιλογή \'Ξεχάσατε τον Κωδικό\' στην οθόνη σύνδεσης και ακολουθήστε τις οδηγίες για να επαναφέρετε τον κωδικό σας.';

  @override
  String get question5 => 'Υπάρχουν μέτρα απορρήτου ή ασφάλειας δεδομένων;';

  @override
  String get answer5 =>
      'Ναι. Τα δεδομένα σας αποθηκεύονται και προστατεύονται με ασφάλεια και δεν κοινοποιούνται χωρίς την άδειά σας, εκτός αν απαιτείται από το νόμο.';

  @override
  String get question6 =>
      'Μπορώ να προσαρμόσω τις ρυθμίσεις μέσα στην εφαρμογή;';

  @override
  String get answer6 =>
      'Ναι. Μπορείτε να προσαρμόσετε τις διαθέσιμες ρυθμίσεις όπως ειδοποιήσεις και προτιμήσεις εντός της εφαρμογής.';

  @override
  String get question7 => 'Πώς μπορώ να διαγράψω τον λογαριασμό μου;';

  @override
  String get answer7 =>
      'Για να διαγράψετε τον λογαριασμό σας, παρακαλούμε επικοινωνήστε με την εταιρεία μέσω WhatsApp ή επισκεφθείτε τα γραφεία της εταιρείας.';

  @override
  String get question8 => 'Πώς αποκτώ πρόσβαση στο ιστορικό αναλύσεών μου;';

  @override
  String get answer8 =>
      'Μπορείτε να δείτε τα προηγούμενα ταξίδια σας και τις αναλύσεις οδήγησης στην ενότητα Ιστορικό ή Αναλύσεις της εφαρμογής.';

  @override
  String get question9 => 'Μπορώ να χρησιμοποιήσω την εφαρμογή εκτός σύνδεσης;';

  @override
  String get answer9 =>
      'Η εφαρμογή έχει περιορισμένη λειτουργικότητα εκτός σύνδεσης. Απαιτείται σύνδεση στο διαδίκτυο για συγχρονισμό δεδομένων και πρόσβαση σε πλήρεις λειτουργίες.';

  @override
  String get terms_title => 'Όροι και Προϋποθέσεις';

  @override
  String get terms_accept => 'Αποδοχή όρων και προϋποθέσεων';

  @override
  String get terms_full =>
      '1. Αποδοχή Όρων\nΕγκαθιστώντας ή χρησιμοποιώντας αυτήν την εφαρμογή, συμφωνείτε με τους παρόντες Όρους και Προϋποθέσεις. Εάν δεν συμφωνείτε, παρακαλούμε διακόψτε τη χρήση της εφαρμογής.\n\n2. Σκοπός της Εφαρμογής\nΑυτή η εφαρμογή είναι ένα σύστημα μαύρου κουτιού και τηλεματικής οχήματος που χρησιμοποιείται για την παρακολούθηση της απόδοσης του οχήματος και της συμπεριφοράς οδήγησης αποκλειστικά για ενημερωτικούς, σκοπούς ασφάλειας και ανάλυσης.\n\n3. Παράμετροι Δεδομένων που Συλλέγονται\nΗ εφαρμογή μπορεί να συλλέγει και να επεξεργάζεται δεδομένα οχήματος και οδήγησης, συμπεριλαμβανομένων ενδεικτικά:\n\n• Ταχύτητα οχήματος\n• Κατανάλωση καυσίμου και στάθμη καυσίμου\n• Επιτάχυνση και επιβράδυνση\n• Απότομο φρενάρισμα και απότομη επιτάχυνση\n• Απότομες στροφές\n• Δεδομένα τοποθεσίας GPS (γεωγραφικό πλάτος και μήκος)\n• Απόσταση ταξιδιού, διάρκεια και ώρα\n• Δεδομένα ταυτοποίησης οδηγού και οχήματος\n\nΧρησιμοποιώντας την εφαρμογή, συναινείτε ρητά στη συλλογή αυτών των παραμέτρων.\n\n4. Διαθεσιμότητα Υπηρεσίας\nΗ συνεχής, σε πραγματικό χρόνο ή χωρίς σφάλματα λειτουργία της εφαρμογής δεν είναι εγγυημένη λόγω τεχνικών περιορισμών.';

  @override
  String get validation_password_mismatch => 'Οι κωδικοί δεν ταιριάζουν';

  @override
  String get validation_invalid_phone => 'Μη έγκυρος αριθμός τηλεφώνου';

  @override
  String get validation_incorrect_pin => 'Λανθασμένο PIN';

  @override
  String get validation_empty_fields => 'Συμπληρώστε όλα τα πεδία';

  @override
  String get empty_no_cars => 'Δεν βρέθηκαν αυτοκίνητα';

  @override
  String get empty_no_notifications => 'Δεν υπάρχουν ειδοποιήσεις ακόμα';

  @override
  String get empty_no_events => 'Δεν υπάρχουν διαθέσιμα συμβάντα';

  @override
  String get status_loading => 'Φόρτωση...';

  @override
  String get status_success => 'Η λειτουργία ήταν επιτυχής';

  @override
  String get status_error => 'Κάτι πήγε στραβά';

  @override
  String get confirm_delete_car =>
      'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτό το αυτοκίνητο;';

  @override
  String get confirm_reset_password =>
      'Είστε σίγουροι ότι θέλετε να επαναφέρετε τον κωδικό σας;';

  @override
  String get search => 'Αναζήτηση';

  @override
  String get search_hint => 'Αναζήτηση...';

  @override
  String get search_no_results => 'Δεν βρέθηκαν αποτελέσματα';

  @override
  String get filter => 'Φίλτρο';

  @override
  String get sort => 'Ταξινόμηση';

  @override
  String get onboarding_title_1 => 'Καλώς Ήρθατε';

  @override
  String get onboarding_desc_1 => 'Στον Black Box Manager';

  @override
  String get onboarding_title_2 =>
      'Δείτε την Ιστορία Πίσω από την Οδήγησή Σας,';

  @override
  String get onboarding_desc_2 =>
      'Καταγράφοντας κάθε διαδρομή, αναλύοντας κάθε χιλιόμετρο.';

  @override
  String get delete_car => 'Διαγραφή αυτοκινήτου';

  @override
  String get sedan => 'Σεντάν';

  @override
  String get heavy_duty => 'Βαρέως τύπου';

  @override
  String get current_password => 'Τρέχων κωδικός πρόσβασης';

  @override
  String get password_requirement =>
      'Πρέπει να έχει μήκος τουλάχιστον 8 χαρακτήρες και να περιέχει γράμματα και αριθμούς.';

  @override
  String get current_password_is_not_correct =>
      'Ο τρέχων κωδικός πρόσβασης δεν είναι σωστός.';

  @override
  String get vehicle => 'Όχημα';

  @override
  String get driven_by => 'οδηγείται από';

  @override
  String get report_fuel_level => 'ανέφερε ταχεία πτώση της στάθμης καυσίμου.';

  @override
  String get report_collision_or_rollover =>
      'ανέφερε σοβαρή σύγκρουση ή ανατροπή (sos).';

  @override
  String get report_overheating_or_dtc =>
      'ανέφερε υπερθέρμανση κινητήρα ή εντοπισμό κωδικών DTC.';

  @override
  String get unknown_driver => 'Άγνωστος οδηγός';

  @override
  String get mechanical_failure => 'Προειδοποίηση μηχανικής βλάβης!';

  @override
  String get critical_crash => 'Εντοπίστηκε κρίσιμη σύγκρουση!';

  @override
  String get fuel_leak => 'Συναγερμός διαρροής καυσίμου!';

  @override
  String get today => 'Σήμερα';

  @override
  String get yesterday => 'Χθες';

  @override
  String get day => 'ημέρα';

  @override
  String get days => 'ημέρες';

  @override
  String get week => 'εβδομάδα';

  @override
  String get weeks => 'εβδομάδες';

  @override
  String get month => 'μήνας';

  @override
  String get months => 'μήνες';

  @override
  String get year => 'έτος';

  @override
  String get years => 'έτη';

  @override
  String get january => 'Ιανουάριος';

  @override
  String get february => 'Φεβρουάριος';

  @override
  String get march => 'Μάρτιος';

  @override
  String get april => 'Απρίλιος';

  @override
  String get may => 'Μάιος';

  @override
  String get june => 'Ιούνιος';

  @override
  String get july => 'Ιούλιος';

  @override
  String get august => 'Αύγουστος';

  @override
  String get september => 'Σεπτέμβριος';

  @override
  String get october => 'Οκτώβριος';

  @override
  String get november => 'Νοέμβριος';

  @override
  String get december => 'Δεκέμβριος';

  @override
  String more_than_years(Object num) {
    return 'Εδώ και #$num χρόνια';
  }

  @override
  String get since_two_years => 'Εδώ και 2 χρόνια';

  @override
  String get since_year => 'Εδώ και ένα χρόνο';

  @override
  String since_months(Object num) {
    return 'Εδώ και #$num μήνες';
  }

  @override
  String get since_two_months => 'Εδώ και 2 μήνες';

  @override
  String get since_month => 'Εδώ και ένα μήνα';

  @override
  String since_weeks(Object num) {
    return 'Εδώ και #$num εβδομάδες';
  }

  @override
  String get since_two_weeks => 'Εδώ και 2 εβδομάδες';

  @override
  String get since_week => 'Εδώ και μια εβδομάδα';

  @override
  String since_days(Object num) {
    return 'Εδώ και #$num ημέρες';
  }

  @override
  String get since_two_days => 'Εδώ και 2 ημέρες';

  @override
  String get since_day => 'Εδώ και μια ημέρα';

  @override
  String get view_driving_events => 'Προβολή συμβάντων οδήγησης';

  @override
  String get coolant_temp => 'Θερμοκρασία ψυκτικού';

  @override
  String get dtc_codes => 'Κωδικοί DTC';

  @override
  String get road_bump => 'Εξόγκωμα δρόμου';

  @override
  String get fuel_level => 'Στάθμη καυσίμου';

  @override
  String get driving_behavior_score => 'Βαθμολογία συμπεριφοράς οδήγησης';

  @override
  String get event_major_crashes => 'Σοβαρές συγκρούσεις';

  @override
  String get event_speeding_incident => 'Περιστατικά υπερβολικής ταχύτητας';

  @override
  String get driver_id => 'Αναγνωριστικό οδηγού';

  @override
  String get more_details => 'Περισσότερες λεπτομέρειες';

  @override
  String get events => 'Συμβάντα';

  @override
  String get error_email_exists => 'Αυτό το email υπάρχει ήδη';

  @override
  String get error_wrong_password => 'Λανθασμένος κωδικός';

  @override
  String get error_phone_exists =>
      'Αυτός ο αριθμός τηλεφώνου χρησιμοποιείται ήδη';

  @override
  String get error_sp_ch =>
      'Ο κωδικός πρέπει να περιέχει τουλάχιστον έναν ειδικό χαρακτήρα';

  @override
  String get error_up =>
      'Ο κωδικός πρέπει να περιέχει τουλάχιστον ένα κεφαλαίο γράμμα';

  @override
  String get error_low =>
      'Ο κωδικός πρέπει να περιέχει τουλάχιστον ένα πεζό γράμμα';

  @override
  String get error_num =>
      'Ο κωδικός πρέπει να περιέχει τουλάχιστον έναν αριθμό';

  @override
  String get error_required => 'Αυτό το πεδίο είναι υποχρεωτικό';

  @override
  String get error_invalid_email => 'Μη έγκυρη διεύθυνση email';

  @override
  String error_password_short(Object length) {
    return 'Ο κωδικός πρέπει να έχει τουλάχιστον $length χαρακτήρες';
  }
}
