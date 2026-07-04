// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get app_title => 'Aplikasi BlackBox';

  @override
  String get common_yes => 'Ya';

  @override
  String get common_no => 'Tidak';

  @override
  String get common_cancel => 'Batal';

  @override
  String get common_save => 'Simpan';

  @override
  String get common_save_changes => 'Simpan Perubahan';

  @override
  String get common_continue => 'Teruskan';

  @override
  String get common_next => 'Seterusnya';

  @override
  String get auth_login => 'Log Masuk';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'Log Keluar';

  @override
  String get auth_confirm_logout => 'Adakah anda pasti mahu log keluar?';

  @override
  String get auth_signup => 'Daftar';

  @override
  String get auth_create_account => 'Cipta Akaun';

  @override
  String get auth_already_have_account => 'Sudah ada akaun? ';

  @override
  String get auth_no_account => 'Tiada akaun?';

  @override
  String get auth_forgot_password => 'Lupa Kata Laluan?';

  @override
  String get auth_reset_password => 'Tetap Semula Kata Laluan?';

  @override
  String get auth_change_password => 'Tukar Kata Laluan';

  @override
  String get auth_continue => 'Dengan meneruskan, anda bersetuju dengan\n';

  @override
  String get auth_terms => 'Terma Penggunaan dan Dasar Privasi';

  @override
  String get auth_email => 'Emel';

  @override
  String get auth_password => 'Kata Laluan';

  @override
  String get auth_confirm_password => 'Sahkan Kata Laluan';

  @override
  String get auth_new_password => 'Kata Laluan Baharu';

  @override
  String get auth_confirm_new_password => 'Sahkan Kata Laluan Baharu';

  @override
  String get auth_enter_email => 'Masukkan alamat emel';

  @override
  String get auth_password_hint => 'Masukkan kata laluan anda';

  @override
  String get full_name => 'Nama Penuh';

  @override
  String get email_hint => 'contoh@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'Nama Penuh diperlukan';

  @override
  String get required_email => 'Emel diperlukan';

  @override
  String get email_end => 'Emel mesti berakhir dengan @gmail.com';

  @override
  String get required_password => 'Kata laluan diperlukan';

  @override
  String get required_confirm_password => 'Sahkan kata laluan diperlukan';

  @override
  String get password_do_not_match => 'Kata laluan tidak sepadan';

  @override
  String get min_password =>
      'Kata laluan mesti sekurang-kurangnya 8 aksara dan mengandungi nombor';

  @override
  String get send_verification_code => 'Hantar Kod Pengesahan';

  @override
  String get password_changed_successfully =>
      'Kata Laluan Telah Berjaya\nDitukar';

  @override
  String get forget_password_title =>
      'Masukkan emel yang berkaitan dengan akaun anda dan kami akan hantar Pin Keselamatan tetapan semula kata laluan.';

  @override
  String get auth_security_pin => 'Pin Keselamatan';

  @override
  String get auth_enter_pin => 'Masukkan pin keselamatan';

  @override
  String get verify => 'Sahkan';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Hantar semula dalam ${seconds}s';
  }

  @override
  String get home_title => 'Laman Utama';

  @override
  String get home_welcome => 'Hai, Selamat Kembali';

  @override
  String get home_good_morning => 'Selamat Pagi';

  @override
  String get home_good_afternoon => 'Selamat Petang';

  @override
  String get home_good_evening => 'Selamat Malam';

  @override
  String get home_looks_good => 'Kelihatan\nBaik';

  @override
  String get home_safety_score => 'Gambaran Keseluruhan Skor Keselamatan';

  @override
  String get home_total_accidents => 'Jumlah kemalangan';

  @override
  String get total_active_cars => 'Jumlah Kereta Aktif';

  @override
  String get total_cars => 'Jumlah Kereta';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% daripada kereta anda adalah aktif';
  }

  @override
  String get car_section_title => 'Kereta';

  @override
  String get car_view_all => 'Lihat Semua Kereta';

  @override
  String get car_add => 'Tambah Kereta';

  @override
  String get car_edit => 'Edit Kereta';

  @override
  String get car_name => 'Nama Kereta';

  @override
  String get car_plate => 'Nombor Plat Kereta';

  @override
  String get car_type => 'Jenis Kereta';

  @override
  String get car_driver_name => 'Nama Pemandu';

  @override
  String car_item_title(Object id) {
    return 'Kereta #$id';
  }

  @override
  String get tracking_live => 'Penjejakan Langsung';

  @override
  String get tracking_last_updates => 'Kemaskini Terkini';

  @override
  String get event_title => 'Peristiwa Memandu';

  @override
  String get event_speeding => 'Memecut';

  @override
  String get event_hard_braking => 'Brekan Keras';

  @override
  String get event_aggressive_turns => 'Pusingan Agresif';

  @override
  String get event_crash => 'Kemalangan';

  @override
  String event_location(Object location) {
    return 'Di $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed km/j';
  }

  @override
  String get event_severity => 'Keterukan';

  @override
  String get event_severity_low => 'Rendah';

  @override
  String get event_severity_medium => 'Sederhana';

  @override
  String get event_severity_high => 'Tinggi';

  @override
  String get event_severity_critical => 'Kritikal';

  @override
  String get event_reason => 'Sebab';

  @override
  String get event_last_speed => 'Kelajuan Terakhir Direkod';

  @override
  String get notification_title => 'Pemberitahuan';

  @override
  String get notification_today => 'Hari Ini';

  @override
  String get notification_yesterday => 'Semalam';

  @override
  String get notification_earlier => 'Awal Minggu Ini';

  @override
  String get notification_fuel_alert => 'Amaran Kebocoran Bahan Api!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Kenderaan $car yang dipandu oleh $driver melaporkan penurunan mendadak tahap bahan api.';
  }

  @override
  String get notification_crash_alert => 'Kemalangan kritikal dikesan!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Kenderaan $car yang dipandu oleh $driver melaporkan perlanggaran teruk.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Edit Profil Saya';

  @override
  String get update_profile => 'Kemas Kini Profil';

  @override
  String get user_name => 'Nama Pengguna';

  @override
  String get security_title => 'Keselamatan';

  @override
  String get change_password => 'Tukar Kata Laluan';

  @override
  String get settings_title => 'Tetapan';

  @override
  String get settings_notifications => 'Tetapan Pemberitahuan';

  @override
  String get settings_general_notifications => 'Pemberitahuan Am';

  @override
  String get account_settings => 'Tetapan Akaun';

  @override
  String get push_notification => 'Pemberitahuan Push';

  @override
  String get dark_mode => 'Mod Gelap Hidup';

  @override
  String get help_title => 'Pusat Bantuan';

  @override
  String get help_and_faq => 'Bantuan & Soalan Lazim';

  @override
  String get help_contact => 'Hubungi Kami';

  @override
  String get help_faq => 'Soalan Lazim';

  @override
  String get how_help => 'Bagaimana Kami Boleh Membantu Anda?';

  @override
  String get on_wh_num => 'Pada Nombor WhatsApp';

  @override
  String get language => 'Bahasa';

  @override
  String get question1 => 'Bagaimana cara menggunakan BlackBox?';

  @override
  String get answer1 =>
      'Pasang peranti BlackBox dalam kereta anda, log masuk ke aplikasi, dan mulakan memandu. Aplikasi akan secara automatik merakam dan memaparkan data memandu anda.';

  @override
  String get question2 => 'Berapakah kos untuk menggunakan BlackBox?';

  @override
  String get answer2 =>
      'Kos bergantung pada pelan dan perkhidmatan yang dipilih. Sila hubungi syarikat untuk butiran harga.';

  @override
  String get question3 => 'Bagaimana cara menghubungi sokongan?';

  @override
  String get answer3 =>
      'Anda boleh menghubungi sokongan melalui WhatsApp menggunakan nombor rasmi syarikat atau melawat pejabat syarikat semasa waktu pejabat.';

  @override
  String get question4 =>
      'Bagaimana saya boleh menetapkan semula kata laluan jika saya terlupa?';

  @override
  String get answer4 =>
      'Gunakan pilihan \'Lupa Kata Laluan\' pada skrin log masuk dan ikuti arahan untuk menetapkan semula kata laluan.';

  @override
  String get question5 =>
      'Adakah terdapat langkah privasi atau keselamatan data?';

  @override
  String get answer5 =>
      'Ya. Data anda disimpan dengan selamat dan dilindungi, dan tidak dikongsi tanpa kebenaran anda kecuali jika dikehendaki oleh undang-undang.';

  @override
  String get question6 => 'Bolehkah saya menyesuaikan tetapan dalam aplikasi?';

  @override
  String get answer6 =>
      'Ya. Anda boleh menyesuaikan tetapan yang tersedia seperti pemberitahuan dan keutamaan dalam aplikasi.';

  @override
  String get question7 => 'Bagaimana cara saya memadam akaun saya?';

  @override
  String get answer7 =>
      'Untuk memadam akaun anda, sila hubungi syarikat melalui WhatsApp atau lawati pejabat syarikat.';

  @override
  String get question8 => 'Bagaimana saya mengakses sejarah analitik saya?';

  @override
  String get answer8 =>
      'Anda boleh melihat perjalanan lalu dan analitik memandu dalam bahagian Sejarah atau Analitik aplikasi.';

  @override
  String get question9 =>
      'Bolehkah saya menggunakan aplikasi secara luar talian?';

  @override
  String get answer9 =>
      'Aplikasi mempunyai fungsi luar talian yang terhad. Sambungan internet diperlukan untuk menyegerakkan data dan mengakses ciri penuh.';

  @override
  String get terms_title => 'Terma dan Syarat';

  @override
  String get terms_accept => 'Terima terma dan syarat';

  @override
  String get terms_full =>
      '1. Penerimaan Terma\nDengan memasang atau menggunakan aplikasi ini, anda bersetuju dengan Terma dan Syarat ini. Jika anda tidak bersetuju, sila hentikan penggunaan aplikasi.\n\n2. Tujuan Aplikasi\nAplikasi ini adalah sistem kotak hitam kenderaan dan telematik yang digunakan untuk memantau prestasi kenderaan dan tingkah laku memandu untuk tujuan maklumat, keselamatan, dan analisis sahaja.\n\n3. Parameter Data yang Dikumpul\nAplikasi boleh mengumpul dan memproses data kenderaan dan memandu, termasuk tetapi tidak terhad kepada:\n\n• Kelajuan kenderaan\n• Penggunaan dan tahap bahan api\n• Pecutan dan nyahpecutan\n• Peristiwa brekan keras dan pecutan pantas\n• Pusingan tajam\n• Data lokasi GPS (latitud dan longitud)\n• Jarak, tempoh dan masa perjalanan\n• Data pengenalan pemandu dan kenderaan\n\nDengan menggunakan aplikasi, anda secara jelas memberi kebenaran untuk pengumpulan parameter ini.\n\n4. Ketersediaan Perkhidmatan\nOperasi berterusan, masa nyata atau bebas ralat aplikasi tidak dijamin disebabkan oleh had teknikal.';

  @override
  String get validation_password_mismatch => 'Kata laluan tidak sepadan';

  @override
  String get validation_invalid_phone => 'Nombor telefon tidak sah';

  @override
  String get validation_incorrect_pin => 'PIN salah';

  @override
  String get validation_empty_fields => 'Sila isi semua medan';

  @override
  String get empty_no_cars => 'Tiada kereta dijumpai';

  @override
  String get empty_no_notifications => 'Belum ada pemberitahuan';

  @override
  String get empty_no_events => 'Tiada peristiwa tersedia';

  @override
  String get status_loading => 'Memuatkan...';

  @override
  String get status_success => 'Operasi berjaya';

  @override
  String get status_error => 'Sesuatu yang salah berlaku';

  @override
  String get confirm_delete_car => 'Adakah anda pasti mahu memadam kereta ini?';

  @override
  String get confirm_reset_password =>
      'Adakah anda pasti mahu menetapkan semula kata laluan anda?';

  @override
  String get search => 'Cari';

  @override
  String get search_hint => 'Cari...';

  @override
  String get search_no_results => 'Tiada hasil dijumpai';

  @override
  String get filter => 'Penapis';

  @override
  String get sort => 'Isih';

  @override
  String get onboarding_title_1 => 'Selamat Datang';

  @override
  String get onboarding_desc_1 => 'Ke Black Box Manager';

  @override
  String get onboarding_title_2 => 'Lihat Kisah Di Sebalik Pemanduan Anda,';

  @override
  String get onboarding_desc_2 =>
      'Merakam setiap perjalanan, menganalisis setiap batu.';

  @override
  String get delete_car => 'Padam Kereta';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Tugas Berat';

  @override
  String get current_password => 'Kata Laluan Semasa';

  @override
  String get password_requirement =>
      'Mestilah sekurang-kurangnya 8 akserta dan mengandungi kedua-dua huruf dan nombor.';

  @override
  String get current_password_is_not_correct =>
      'Kata laluan semasa tidak betul.';

  @override
  String get vehicle => 'Kenderaan';

  @override
  String get driven_by => 'dipandu oleh';

  @override
  String get report_fuel_level => 'melaporkan penurunan cepat tahap bahan api.';

  @override
  String get report_collision_or_rollover =>
      'melaporkan perlanggaran teruk atau terbalik (sos).';

  @override
  String get report_overheating_or_dtc =>
      'melaporkan enjin terlalu panas atau kod DTC dikesan.';

  @override
  String get unknown_driver => 'Pemandu Tidak Dikenali';

  @override
  String get mechanical_failure => 'Amaran Kegagalan Mekanikal!';

  @override
  String get critical_crash => 'Perlanggaran kritikal dikesan!';

  @override
  String get fuel_leak => 'Amaran Kebocoran Bahan Api!';

  @override
  String get today => 'Hari Ini';

  @override
  String get yesterday => 'Semalam';

  @override
  String get day => 'hari';

  @override
  String get days => 'hari';

  @override
  String get week => 'minggu';

  @override
  String get weeks => 'minggu';

  @override
  String get month => 'bulan';

  @override
  String get months => 'bulan';

  @override
  String get year => 'tahun';

  @override
  String get years => 'tahun';

  @override
  String get january => 'Januari';

  @override
  String get february => 'Februari';

  @override
  String get march => 'Mac';

  @override
  String get april => 'April';

  @override
  String get may => 'Mei';

  @override
  String get june => 'Jun';

  @override
  String get july => 'Julai';

  @override
  String get august => 'Ogos';

  @override
  String get september => 'September';

  @override
  String get october => 'Oktober';

  @override
  String get november => 'November';

  @override
  String get december => 'Disember';

  @override
  String more_than_years(Object num) {
    return 'Sejak #$num Tahun';
  }

  @override
  String get since_two_years => 'Sejak 2 Tahun';

  @override
  String get since_year => 'Sejak setahun';

  @override
  String since_months(Object num) {
    return 'Sejak #$num Bulan';
  }

  @override
  String get since_two_months => 'Sejak 2 Bulan';

  @override
  String get since_month => 'Sejak sebulan';

  @override
  String since_weeks(Object num) {
    return 'Sejak #$num minggu';
  }

  @override
  String get since_two_weeks => 'Sejak 2 minggu';

  @override
  String get since_week => 'Sejak seminggu';

  @override
  String since_days(Object num) {
    return 'Sejak #$num hari';
  }

  @override
  String get since_two_days => 'Sejak 2 hari';

  @override
  String get since_day => 'Sejak sehari';

  @override
  String get view_driving_events => 'Lihat Peristiwa Pemanduan';

  @override
  String get coolant_temp => 'Suhu Penyejuk';

  @override
  String get dtc_codes => 'Kod DTC';

  @override
  String get road_bump => 'Bonggol Jalan';

  @override
  String get fuel_level => 'Tahap Bahan Api';

  @override
  String get driving_behavior_score => 'Skor Tingkah Laku Pemanduan';

  @override
  String get event_major_crashes => 'Perlanggaran Besar';

  @override
  String get event_speeding_incident => 'Insiden Laju';

  @override
  String get driver_id => 'ID Pemandu';

  @override
  String get more_details => 'Butiran Lanjut';

  @override
  String get events => 'Peristiwa';

  @override
  String get error_email_exists => 'Emel ini sudah wujud';

  @override
  String get error_wrong_password => 'Kata laluan salah';

  @override
  String get error_phone_exists => 'Nombor telefon ini sudah digunakan';

  @override
  String get error_sp_ch =>
      'Kata laluan mesti mengandungi sekurang-kurangnya satu aksara khas';

  @override
  String get error_up =>
      'Kata laluan mesti mengandungi sekurang-kurangnya satu huruf besar';

  @override
  String get error_low =>
      'Kata laluan mesti mengandungi sekurang-kurangnya satu huruf kecil';

  @override
  String get error_num =>
      'Kata laluan mesti mengandungi sekurang-kurangnya satu nombor';

  @override
  String get error_required => 'Medan ini diperlukan';

  @override
  String get error_invalid_email => 'Alamat emel tidak sah';

  @override
  String error_password_short(Object length) {
    return 'Kata laluan mesti sekurang-kurangnya $length aksara';
  }
}
