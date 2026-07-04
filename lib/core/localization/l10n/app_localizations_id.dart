// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

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
  String get common_continue => 'Lanjutkan';

  @override
  String get common_next => 'Berikutnya';

  @override
  String get auth_login => 'Masuk';

  @override
  String get auth_space_login => 'Masuk';

  @override
  String get auth_logout => 'Keluar';

  @override
  String get auth_confirm_logout => 'Apakah Anda yakin ingin keluar?';

  @override
  String get auth_signup => 'Daftar';

  @override
  String get auth_create_account => 'Buat Akun';

  @override
  String get auth_already_have_account => 'Sudah punya akun? ';

  @override
  String get auth_no_account => 'Tidak punya akun?';

  @override
  String get auth_forgot_password => 'Lupa Kata Sandi?';

  @override
  String get auth_reset_password => 'Atur Ulang Kata Sandi?';

  @override
  String get auth_change_password => 'Ubah Kata Sandi';

  @override
  String get auth_continue => 'Dengan melanjutkan, Anda menyetujui\n';

  @override
  String get auth_terms => 'Ketentuan Penggunaan dan Kebijakan Privasi';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Kata Sandi';

  @override
  String get auth_confirm_password => 'Konfirmasi Kata Sandi';

  @override
  String get auth_new_password => 'Kata Sandi Baru';

  @override
  String get auth_confirm_new_password => 'Konfirmasi Kata Sandi Baru';

  @override
  String get auth_enter_email => 'Masukkan alamat email';

  @override
  String get auth_password_hint => 'Masukkan kata sandi Anda';

  @override
  String get full_name => 'Nama Lengkap';

  @override
  String get email_hint => 'contoh@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'Nama Lengkap wajib diisi';

  @override
  String get required_email => 'Email wajib diisi';

  @override
  String get email_end => 'Email harus diakhiri dengan @gmail.com';

  @override
  String get required_password => 'Kata Sandi wajib diisi';

  @override
  String get required_confirm_password => 'Konfirmasi Kata Sandi wajib diisi';

  @override
  String get password_do_not_match => 'Kata Sandi tidak cocok';

  @override
  String get min_password =>
      'Kata Sandi harus minimal 8 karakter dan mengandung angka';

  @override
  String get send_verification_code => 'Kirim Kode Verifikasi';

  @override
  String get password_changed_successfully => 'Kata Sandi Berhasil Diubah';

  @override
  String get forget_password_title =>
      'Masukkan email yang terkait dengan akun Anda dan kami akan mengirimkan PIN Keamanan untuk mengatur ulang kata sandi Anda.';

  @override
  String get auth_security_pin => 'PIN Keamanan';

  @override
  String get auth_enter_pin => 'Masukkan PIN keamanan';

  @override
  String get verify => 'Verifikasi';

  @override
  String auth_resend_pin(Object seconds) {
    return 'Kirim lagi dalam $seconds dtk';
  }

  @override
  String get home_title => 'Beranda';

  @override
  String get home_welcome => 'Hai, Selamat Datang Kembali';

  @override
  String get home_good_morning => 'Selamat Pagi';

  @override
  String get home_good_afternoon => 'Selamat Siang';

  @override
  String get home_good_evening => 'Selamat Malam';

  @override
  String get home_looks_good => 'Terlihat\nBaik';

  @override
  String get home_safety_score => 'Ikhtisar Skor Keselamatan';

  @override
  String get home_total_accidents => 'Total kecelakaan';

  @override
  String get total_active_cars => 'Total Mobil Aktif';

  @override
  String get total_cars => 'Total Mobil';

  @override
  String home_active_cars(Object percentage) {
    return '$percentage% dari mobil Anda aktif';
  }

  @override
  String get car_section_title => 'Mobil';

  @override
  String get car_view_all => 'Lihat Mobil';

  @override
  String get car_add => 'Tambah Mobil';

  @override
  String get car_edit => 'Edit Mobil';

  @override
  String get car_name => 'Nama Mobil';

  @override
  String get car_plate => 'Plat Mobil';

  @override
  String get car_type => 'Tipe Mobil';

  @override
  String get car_driver_name => 'Nama Pengemudi';

  @override
  String car_item_title(Object id) {
    return 'Mobil #$id';
  }

  @override
  String get tracking_live => 'Pelacakan Langsung';

  @override
  String get tracking_last_updates => 'Pembaruan Terakhir';

  @override
  String get event_title => 'Peristiwa Mengemudi';

  @override
  String get event_speeding => 'Melebihi Batas Kecepatan';

  @override
  String get event_hard_braking => 'Pengereman Keras';

  @override
  String get event_aggressive_turns => 'Belokan Agresif';

  @override
  String get event_crash => 'Kecelakaan';

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
    return '$speed km/jam';
  }

  @override
  String get event_severity => 'Tingkat Keparahan';

  @override
  String get event_severity_low => 'Rendah';

  @override
  String get event_severity_medium => 'Sedang';

  @override
  String get event_severity_high => 'Tinggi';

  @override
  String get event_severity_critical => 'Kritis';

  @override
  String get event_reason => 'Alasan';

  @override
  String get event_last_speed => 'Kecepatan Terakhir Terekam';

  @override
  String get notification_title => 'Notifikasi';

  @override
  String get notification_today => 'Hari Ini';

  @override
  String get notification_yesterday => 'Kemarin';

  @override
  String get notification_earlier => 'Awal Pekan Ini';

  @override
  String get notification_fuel_alert => 'Peringatan Kebocoran Bahan Bakar!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'Kendaraan $car yang dikendarai oleh $driver melaporkan penurunan cepat level bahan bakar.';
  }

  @override
  String get notification_crash_alert => 'Deteksi kecelakaan kritis!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'Kendaraan $car yang dikendarai oleh $driver melaporkan tabrakan parah.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Edit Profil Saya';

  @override
  String get update_profile => 'Perbarui Profil';

  @override
  String get user_name => 'Nama Pengguna';

  @override
  String get security_title => 'Keamanan';

  @override
  String get change_password => 'Ubah Kata Sandi';

  @override
  String get settings_title => 'Pengaturan';

  @override
  String get settings_notifications => 'Pengaturan Notifikasi';

  @override
  String get settings_general_notifications => 'Notifikasi Umum';

  @override
  String get account_settings => 'Pengaturan Akun';

  @override
  String get push_notification => 'Notifikasi Push';

  @override
  String get dark_mode => 'Mode Gelap Aktif';

  @override
  String get help_title => 'Pusat Bantuan';

  @override
  String get help_and_faq => 'Bantuan & FAQ';

  @override
  String get help_contact => 'Hubungi Kami';

  @override
  String get help_faq => 'FAQ';

  @override
  String get how_help => 'Bagaimana Kami Dapat Membantu Anda?';

  @override
  String get on_wh_num => 'Di Nomor WhatsApp';

  @override
  String get language => 'Bahasa';

  @override
  String get question1 => 'Bagaimana cara menggunakan BlackBox?';

  @override
  String get answer1 =>
      'Pasang perangkat BlackBox di mobil Anda, masuk ke aplikasi, dan mulailah mengemudi. Aplikasi akan secara otomatis merekam dan menampilkan data mengemudi Anda.';

  @override
  String get question2 => 'Berapa biaya menggunakan BlackBox?';

  @override
  String get answer2 =>
      'Biaya tergantung pada paket dan layanan yang dipilih. Silakan hubungi perusahaan untuk detail harga.';

  @override
  String get question3 => 'Bagaimana cara menghubungi dukungan?';

  @override
  String get answer3 =>
      'Anda dapat menghubungi dukungan melalui WhatsApp menggunakan nomor resmi perusahaan atau dengan mengunjungi kantor perusahaan selama jam kerja.';

  @override
  String get question4 =>
      'Bagaimana cara mengatur ulang kata sandi jika saya lupa?';

  @override
  String get answer4 =>
      'Gunakan opsi \'Lupa Kata Sandi\' di layar masuk dan ikuti petunjuk untuk mengatur ulang kata sandi Anda.';

  @override
  String get question5 =>
      'Apakah ada langkah-langkah privasi atau keamanan data?';

  @override
  String get answer5 =>
      'Ya. Data Anda disimpan dan dilindungi dengan aman, dan tidak dibagikan tanpa izin Anda kecuali jika diwajibkan oleh hukum.';

  @override
  String get question6 =>
      'Dapatkah saya menyesuaikan pengaturan dalam aplikasi?';

  @override
  String get answer6 =>
      'Ya. Anda dapat menyesuaikan pengaturan yang tersedia seperti notifikasi dan preferensi di dalam aplikasi.';

  @override
  String get question7 => 'Bagaimana cara menghapus akun saya?';

  @override
  String get answer7 =>
      'Untuk menghapus akun Anda, silakan hubungi perusahaan melalui WhatsApp atau kunjungi kantor perusahaan.';

  @override
  String get question8 => 'Bagaimana cara mengakses riwayat analisis saya?';

  @override
  String get answer8 =>
      'Anda dapat melihat perjalanan masa lalu dan analisis mengemudi Anda di bagian Riwayat atau Analisis aplikasi.';

  @override
  String get question9 => 'Dapatkah saya menggunakan aplikasi secara offline?';

  @override
  String get answer9 =>
      'Aplikasi memiliki fungsionalitas offline yang terbatas. Koneksi internet diperlukan untuk menyinkronkan data dan mengakses fitur lengkap.';

  @override
  String get terms_title => 'Syarat dan Ketentuan';

  @override
  String get terms_accept => 'Terima syarat dan ketentuan';

  @override
  String get terms_full =>
      '1. Penerimaan Syarat\nDengan menginstal atau menggunakan aplikasi ini, Anda menyetujui Syarat dan Ketentuan ini. Jika Anda tidak setuju, harap hentikan penggunaan aplikasi.\n\n2. Tujuan Aplikasi\nAplikasi ini adalah sistem black box dan telematika kendaraan yang digunakan untuk memantau kinerja kendaraan dan perilaku mengemudi hanya untuk tujuan informasi, keselamatan, dan analitis.\n\n3. Parameter Data yang Dikumpulkan\nAplikasi dapat mengumpulkan dan memproses data kendaraan dan mengemudi, termasuk namun tidak terbatas pada:\n\n• Kecepatan kendaraan\n• Konsumsi bahan bakar dan level bahan bakar\n• Akselerasi dan deselerasi\n• Pengereman keras dan akselerasi cepat\n• Belokan tajam\n• Data lokasi GPS (lintang dan bujur)\n• Jarak, durasi, dan waktu perjalanan\n• Data identifikasi pengemudi dan kendaraan\n\nDengan menggunakan aplikasi, Anda secara tegas menyetujui pengumpulan parameter ini.\n\n4. Ketersediaan Layanan\nOperasi aplikasi yang berkelanjutan, real-time, atau bebas kesalahan tidak dijamin karena keterbatasan teknis.';

  @override
  String get validation_password_mismatch => 'Kata Sandi tidak cocok';

  @override
  String get validation_invalid_phone => 'Nomor telepon tidak valid';

  @override
  String get validation_incorrect_pin => 'PIN salah';

  @override
  String get validation_empty_fields => 'Silakan isi semua bidang';

  @override
  String get empty_no_cars => 'Tidak ada mobil ditemukan';

  @override
  String get empty_no_notifications => 'Belum ada notifikasi';

  @override
  String get empty_no_events => 'Tidak ada peristiwa tersedia';

  @override
  String get status_loading => 'Memuat...';

  @override
  String get status_success => 'Operasi berhasil';

  @override
  String get status_error => 'Terjadi kesalahan';

  @override
  String get confirm_delete_car =>
      'Apakah Anda yakin ingin menghapus mobil ini?';

  @override
  String get confirm_reset_password =>
      'Apakah Anda yakin ingin mengatur ulang kata sandi Anda?';

  @override
  String get search => 'Cari';

  @override
  String get search_hint => 'Cari...';

  @override
  String get search_no_results => 'Tidak ada hasil ditemukan';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Urutkan';

  @override
  String get onboarding_title_1 => 'Selamat Datang';

  @override
  String get onboarding_desc_1 => 'di Black Box Manager';

  @override
  String get onboarding_title_2 => 'Lihat Cerita di Balik Perjalanan Anda,';

  @override
  String get onboarding_desc_2 =>
      'Merekam setiap perjalanan, menganalisis setiap kilometer.';

  @override
  String get delete_car => 'Hapus Mobil';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Berat';

  @override
  String get current_password => 'Kata Sandi Saat Ini';

  @override
  String get password_requirement =>
      'Harus memiliki panjang minimal 8 karakter dan mengandung huruf dan angka.';

  @override
  String get current_password_is_not_correct =>
      'Kata sandi saat ini tidak benar.';

  @override
  String get vehicle => 'Kendaraan';

  @override
  String get driven_by => 'dikendarai oleh';

  @override
  String get report_fuel_level =>
      'melaporkan penurunan cepat level bahan bakar.';

  @override
  String get report_collision_or_rollover =>
      'melaporkan tabrakan parah atau terguling (sos).';

  @override
  String get report_overheating_or_dtc =>
      'melaporkan mesin overheating atau kode DTC terdeteksi.';

  @override
  String get unknown_driver => 'Pengemudi Tidak Dikenal';

  @override
  String get mechanical_failure => 'Peringatan Kegagalan Mekanis!';

  @override
  String get critical_crash => 'Tabrakan kritis terdeteksi!';

  @override
  String get fuel_leak => 'Peringatan Kebocoran Bahan Bakar!';

  @override
  String get today => 'Hari Ini';

  @override
  String get yesterday => 'Kemarin';

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
  String get march => 'Maret';

  @override
  String get april => 'April';

  @override
  String get may => 'Mei';

  @override
  String get june => 'Juni';

  @override
  String get july => 'Juli';

  @override
  String get august => 'Agustus';

  @override
  String get september => 'September';

  @override
  String get october => 'Oktober';

  @override
  String get november => 'November';

  @override
  String get december => 'Desember';

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
  String get view_driving_events => 'Lihat Peristiwa Mengemudi';

  @override
  String get coolant_temp => 'Suhu Pendingin';

  @override
  String get dtc_codes => 'Kode DTC';

  @override
  String get road_bump => 'Bump Jalan';

  @override
  String get fuel_level => 'Level Bahan Bakar';

  @override
  String get driving_behavior_score => 'Skor Perilaku Mengemudi';

  @override
  String get event_major_crashes => 'Tabrakan Besar';

  @override
  String get event_speeding_incident => 'Insiden Kecepatan Berlebih';

  @override
  String get driver_id => 'ID Pengemudi';

  @override
  String get more_details => 'Detail Lainnya';

  @override
  String get events => 'Peristiwa';

  @override
  String get error_email_exists => 'Email ini sudah ada';

  @override
  String get error_wrong_password => 'Kata Sandi salah';

  @override
  String get error_phone_exists => 'Nomor telepon ini sudah digunakan';

  @override
  String get error_sp_ch =>
      'Kata Sandi harus mengandung setidaknya satu karakter khusus';

  @override
  String get error_up =>
      'Kata Sandi harus mengandung setidaknya satu huruf besar';

  @override
  String get error_low =>
      'Kata Sandi harus mengandung setidaknya satu huruf kecil';

  @override
  String get error_num => 'Kata Sandi harus mengandung setidaknya satu angka';

  @override
  String get error_required => 'Bidang ini wajib diisi';

  @override
  String get error_invalid_email => 'Alamat email tidak valid';

  @override
  String error_password_short(Object length) {
    return 'Kata Sandi harus minimal $length karakter';
  }
}
