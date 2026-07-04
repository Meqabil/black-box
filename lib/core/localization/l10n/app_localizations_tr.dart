// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'Evet';

  @override
  String get common_no => 'Hayır';

  @override
  String get common_cancel => 'İptal';

  @override
  String get common_save => 'Kaydet';

  @override
  String get common_save_changes => 'Değişiklikleri Kaydet';

  @override
  String get common_continue => 'Devam Et';

  @override
  String get common_next => 'İleri';

  @override
  String get auth_login => 'Giriş Yap';

  @override
  String get auth_space_login => 'Giriş Yap';

  @override
  String get auth_logout => 'Çıkış Yap';

  @override
  String get auth_confirm_logout => 'Çıkış yapmak istediğinizden emin misiniz?';

  @override
  String get auth_signup => 'Kayıt Ol';

  @override
  String get auth_create_account => 'Hesap Oluştur';

  @override
  String get auth_already_have_account => 'Zaten bir hesabınız var mı? ';

  @override
  String get auth_no_account => 'Hesabınız yok mu?';

  @override
  String get auth_forgot_password => 'Şifremi Unuttum?';

  @override
  String get auth_reset_password => 'Şifreyi Sıfırla?';

  @override
  String get auth_change_password => 'Şifreyi Değiştir';

  @override
  String get auth_continue => 'Devam ederek şunları kabul etmiş olursunuz\n';

  @override
  String get auth_terms => 'Kullanım Koşulları ve Gizlilik Politikası';

  @override
  String get auth_email => 'E-posta';

  @override
  String get auth_password => 'Şifre';

  @override
  String get auth_confirm_password => 'Şifreyi Onayla';

  @override
  String get auth_new_password => 'Yeni Şifre';

  @override
  String get auth_confirm_new_password => 'Yeni Şifreyi Onayla';

  @override
  String get auth_enter_email => 'E-posta adresini girin';

  @override
  String get auth_password_hint => 'Şifrenizi girin';

  @override
  String get full_name => 'Ad Soyad';

  @override
  String get email_hint => 'ornek@gmail.com';

  @override
  String get name_hint => 'Ahmet Yılmaz';

  @override
  String get required_name => 'Ad Soyad zorunludur';

  @override
  String get required_email => 'E-posta zorunludur';

  @override
  String get email_end => 'E-posta @gmail.com ile bitmelidir';

  @override
  String get required_password => 'Şifre zorunludur';

  @override
  String get required_confirm_password => 'Şifre onayı zorunludur';

  @override
  String get password_do_not_match => 'Şifreler eşleşmiyor';

  @override
  String get min_password =>
      'Şifre en az 8 karakter olmalı ve rakam içermelidir';

  @override
  String get send_verification_code => 'Doğrulama Kodu Gönder';

  @override
  String get password_changed_successfully => 'Şifre Başarıyla\nDeğiştirildi';

  @override
  String get forget_password_title =>
      'Hesabınızla ilişkili e-posta adresini girin, şifre sıfırlama güvenlik PIN\'ini size göndereceğiz.';

  @override
  String get auth_security_pin => 'Güvenlik PIN\'i';

  @override
  String get auth_enter_pin => 'Güvenlik PIN\'ini girin';

  @override
  String get verify => 'Doğrula';

  @override
  String auth_resend_pin(Object seconds) {
    return '$seconds saniye sonra tekrar gönder';
  }

  @override
  String get home_title => 'Ana Sayfa';

  @override
  String get home_welcome => 'Merhaba, Tekrar Hoş Geldiniz';

  @override
  String get home_good_morning => 'Günaydın';

  @override
  String get home_good_afternoon => 'İyi günler';

  @override
  String get home_good_evening => 'İyi akşamlar';

  @override
  String get home_looks_good => 'Her Şey\nYolunda';

  @override
  String get home_safety_score => 'Güvenlik Puanı Genel Bakış';

  @override
  String get home_total_accidents => 'Toplam kazalar';

  @override
  String get total_active_cars => 'Toplam Aktif Araçlar';

  @override
  String get total_cars => 'Toplam Araçlar';

  @override
  String home_active_cars(Object percentage) {
    return 'Araçlarınızın $percentage%\'si aktif';
  }

  @override
  String get car_section_title => 'Araçlar';

  @override
  String get car_view_all => 'Araçları Görüntüle';

  @override
  String get car_add => 'Araç Ekle';

  @override
  String get car_edit => 'Aracı Düzenle';

  @override
  String get car_name => 'Araç Adı';

  @override
  String get car_plate => 'Araç Plakası';

  @override
  String get car_type => 'Araç Tipi';

  @override
  String get car_driver_name => 'Sürücü Adı';

  @override
  String car_item_title(Object id) {
    return 'Araç #$id';
  }

  @override
  String get tracking_live => 'Canlı Takip';

  @override
  String get tracking_last_updates => 'Son Güncellemeler';

  @override
  String get event_title => 'Sürüş Olayları';

  @override
  String get event_speeding => 'Hız Aşımı';

  @override
  String get event_hard_braking => 'Sert Fren';

  @override
  String get event_aggressive_turns => 'Agresif Dönüşler';

  @override
  String get event_crash => 'Kaza';

  @override
  String event_location(Object location) {
    return '$location\'da';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed km/s';
  }

  @override
  String get event_severity => 'Şiddet';

  @override
  String get event_severity_low => 'Düşük';

  @override
  String get event_severity_medium => 'Orta';

  @override
  String get event_severity_high => 'Yüksek';

  @override
  String get event_severity_critical => 'Kritik';

  @override
  String get event_reason => 'Neden';

  @override
  String get event_last_speed => 'Son Kaydedilen Hız';

  @override
  String get notification_title => 'Bildirimler';

  @override
  String get notification_today => 'Bugün';

  @override
  String get notification_yesterday => 'Dün';

  @override
  String get notification_earlier => 'Bu Hafta Önce';

  @override
  String get notification_fuel_alert => 'Yakıt Sızıntısı Uyarısı!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return '$driver tarafından kullanılan $car aracında yakıt seviyesinde hızlı düşüş bildirildi.';
  }

  @override
  String get notification_crash_alert => 'Kritik kaza tespit edildi!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return '$driver tarafından kullanılan $car aracında ciddi çarpışma bildirildi.';
  }

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profilimi Düzenle';

  @override
  String get update_profile => 'Profili Güncelle';

  @override
  String get user_name => 'Kullanıcı Adı';

  @override
  String get security_title => 'Güvenlik';

  @override
  String get change_password => 'Şifreyi Değiştir';

  @override
  String get settings_title => 'Ayarlar';

  @override
  String get settings_notifications => 'Bildirim Ayarları';

  @override
  String get settings_general_notifications => 'Genel Bildirim';

  @override
  String get account_settings => 'Hesap Ayarları';

  @override
  String get push_notification => 'Anlık Bildirimler';

  @override
  String get dark_mode => 'Karanlık Mod Açık';

  @override
  String get help_title => 'Yardım Merkezi';

  @override
  String get help_and_faq => 'Yardım ve SSS';

  @override
  String get help_contact => 'Bize Ulaşın';

  @override
  String get help_faq => 'SSS';

  @override
  String get how_help => 'Size Nasıl Yardımcı Olabiliriz?';

  @override
  String get on_wh_num => 'WhatsApp Numarasında';

  @override
  String get language => 'Dil';

  @override
  String get question1 => 'BlackBox nasıl kullanılır?';

  @override
  String get answer1 =>
      'BlackBox cihazını arabanıza kurun, uygulamaya giriş yapın ve sürmeye başlayın. Uygulama sürüş verilerinizi otomatik olarak kaydedip gösterecektir.';

  @override
  String get question2 => 'BlackBox kullanmanın maliyeti nedir?';

  @override
  String get answer2 =>
      'Maliyet seçilen plan ve hizmetlere göre değişir. Fiyatlandırma detayları için lütfen şirketle iletişime geçin.';

  @override
  String get question3 => 'Destekle nasıl iletişime geçilir?';

  @override
  String get answer3 =>
      'Şirketin resmi WhatsApp numarasını kullanarak destek ekibiyle iletişime geçebilir veya çalışma saatlerinde şirket ofisini ziyaret edebilirsiniz.';

  @override
  String get question4 => 'Şifremi unutursam nasıl sıfırlayabilirim?';

  @override
  String get answer4 =>
      'Giriş ekranındaki \'Şifremi Unuttum\' seçeneğini kullanın ve şifrenizi sıfırlamak için talimatları izleyin.';

  @override
  String get question5 => 'Gizlilik veya veri güvenliği önlemleri mevcut mu?';

  @override
  String get answer5 =>
      'Evet. Verileriniz güvenli bir şekilde saklanır ve korunur; yasanın gerektirdiği durumlar dışında izniniz olmadan paylaşılmaz.';

  @override
  String get question6 => 'Uygulama içindeki ayarları özelleştirebilir miyim?';

  @override
  String get answer6 =>
      'Evet. Uygulama içinde bildirimler ve tercihler gibi mevcut ayarları özelleştirebilirsiniz.';

  @override
  String get question7 => 'Hesabımı nasıl silebilirim?';

  @override
  String get answer7 =>
      'Hesabınızı silmek için lütfen WhatsApp üzerinden şirketle iletişime geçin veya şirket ofisini ziyaret edin.';

  @override
  String get question8 => 'Analiz geçmişime nasıl erişebilirim?';

  @override
  String get answer8 =>
      'Geçmiş yolculuklarınızı ve sürüş analizlerinizi uygulamanın Geçmiş veya Analiz bölümünde görüntüleyebilirsiniz.';

  @override
  String get question9 => 'Uygulamayı çevrimdışı kullanabilir miyim?';

  @override
  String get answer9 =>
      'Uygulamanın sınırlı çevrimdışı işlevselliği vardır. Verileri senkronize etmek ve tüm özelliklere erişmek için internet bağlantısı gereklidir.';

  @override
  String get terms_title => 'Şartlar ve Koşullar';

  @override
  String get terms_accept => 'Şartlar ve koşulları kabul et';

  @override
  String get terms_full =>
      '1. Şartların Kabulu\nBu uygulamayı yükleyerek veya kullanarak bu Şartlar ve Koşulları kabul etmiş olursunuz. Kabul etmiyorsanız lütfen uygulamayı kullanmayı bırakın.\n\n2. Uygulamanın Amacı\nBu uygulama, yalnızca bilgilendirme, güvenlik ve analiz amacıyla araç performansını ve sürüş davranışını izlemek için kullanılan bir araç kara kutusu ve telematik sistemidir.\n\n3. Toplanan Veri Parametreleri\nUygulama aşağıdakiler dahil ancak bunlarla sınırlı olmamak üzere araç ve sürüş verilerini toplayabilir ve işleyebilir:\n\n• Araç hızı\n• Yakıt tüketimi ve yakıt seviyesi\n• İvme ve yavaşlama\n• Sert fren ve hızlı ivmelenme olayları\n• Keskin virajlar\n• GPS konum verileri (enlem ve boylam)\n• Yolculuk mesafesi, süresi ve zamanı\n• Sürücü ve araç kimlik verileri\n\nUygulamayı kullanarak bu parametrelerin toplanmasına açıkça rıza göstermiş olursunuz.\n\n4. Hizmet Kullanılabilirliği\nTeknik sınırlamalar nedeniyle uygulamanın sürekli, gerçek zamanlı veya hatasız çalışması garanti edilmez.';

  @override
  String get validation_password_mismatch => 'Şifreler eşleşmiyor';

  @override
  String get validation_invalid_phone => 'Geçersiz telefon numarası';

  @override
  String get validation_incorrect_pin => 'Yanlış PIN';

  @override
  String get validation_empty_fields => 'Lütfen tüm alanları doldurun';

  @override
  String get empty_no_cars => 'Araç bulunamadı';

  @override
  String get empty_no_notifications => 'Henüz bildirim yok';

  @override
  String get empty_no_events => 'Mevcut olay yok';

  @override
  String get status_loading => 'Yükleniyor...';

  @override
  String get status_success => 'İşlem başarılı';

  @override
  String get status_error => 'Bir şeyler yanlış gitti';

  @override
  String get confirm_delete_car =>
      'Bu aracı silmek istediğinizden emin misiniz?';

  @override
  String get confirm_reset_password =>
      'Şifrenizi sıfırlamak istediğinizden emin misiniz?';

  @override
  String get search => 'Ara';

  @override
  String get search_hint => 'Ara...';

  @override
  String get search_no_results => 'Sonuç bulunamadı';

  @override
  String get filter => 'Filtrele';

  @override
  String get sort => 'Sırala';

  @override
  String get onboarding_title_1 => 'Hoş Geldiniz';

  @override
  String get onboarding_desc_1 => 'Black Box Yöneticisine';

  @override
  String get onboarding_title_2 => 'Sürüşünüzün Arkasındaki Hikayeyi Görün,';

  @override
  String get onboarding_desc_2 =>
      'Her yolculuğu kayıt altına alıyor, her kilometreyi analiz ediyoruz.';

  @override
  String get delete_car => 'Arabayı Sil';

  @override
  String get sedan => 'Sedan';

  @override
  String get heavy_duty => 'Ağır Hizmet';

  @override
  String get current_password => 'Mevcut Şifre';

  @override
  String get password_requirement =>
      'En az 8 karakter uzunluğunda olmalı ve hem harf hem de rakam içermelidir.';

  @override
  String get current_password_is_not_correct => 'Mevcut şifre yanlış.';

  @override
  String get vehicle => 'Araç';

  @override
  String get driven_by => 'tarafından kullanılıyor';

  @override
  String get report_fuel_level => 'yakıt seviyesinde hızlı bir düşüş bildirdi.';

  @override
  String get report_collision_or_rollover =>
      'şiddetli bir çarpışma veya takla (sos) bildirdi.';

  @override
  String get report_overheating_or_dtc =>
      'motor aşırı ısınması veya DTC kodları tespit edildiğini bildirdi.';

  @override
  String get unknown_driver => 'Bilinmeyen Sürücü';

  @override
  String get mechanical_failure => 'Mekanik Arıza Uyarısı!';

  @override
  String get critical_crash => 'Kritik çarpışma tespit edildi!';

  @override
  String get fuel_leak => 'Yakıt Sızıntısı Uyarısı!';

  @override
  String get today => 'Bugün';

  @override
  String get yesterday => 'Dün';

  @override
  String get day => 'gün';

  @override
  String get days => 'gün';

  @override
  String get week => 'hafta';

  @override
  String get weeks => 'hafta';

  @override
  String get month => 'ay';

  @override
  String get months => 'ay';

  @override
  String get year => 'yıl';

  @override
  String get years => 'yıl';

  @override
  String get january => 'Ocak';

  @override
  String get february => 'Şubat';

  @override
  String get march => 'Mart';

  @override
  String get april => 'Nisan';

  @override
  String get may => 'Mayıs';

  @override
  String get june => 'Haziran';

  @override
  String get july => 'Temmuz';

  @override
  String get august => 'Ağustos';

  @override
  String get september => 'Eylül';

  @override
  String get october => 'Ekim';

  @override
  String get november => 'Kasım';

  @override
  String get december => 'Aralık';

  @override
  String more_than_years(Object num) {
    return '#$num yıldır';
  }

  @override
  String get since_two_years => '2 yıldır';

  @override
  String get since_year => 'Bir yıldır';

  @override
  String since_months(Object num) {
    return '#$num aydır';
  }

  @override
  String get since_two_months => '2 aydır';

  @override
  String get since_month => 'Bir aydır';

  @override
  String since_weeks(Object num) {
    return '#$num haftadır';
  }

  @override
  String get since_two_weeks => '2 haftadır';

  @override
  String get since_week => 'Bir haftadır';

  @override
  String since_days(Object num) {
    return '#$num gündür';
  }

  @override
  String get since_two_days => '2 gündür';

  @override
  String get since_day => 'Bir gündür';

  @override
  String get view_driving_events => 'Sürüş Olaylarını Görüntüle';

  @override
  String get coolant_temp => 'Soğutma Suyu Sıcaklığı';

  @override
  String get dtc_codes => 'DTC Kodları';

  @override
  String get road_bump => 'Yol Çukuru';

  @override
  String get fuel_level => 'Yakıt Seviyesi';

  @override
  String get driving_behavior_score => 'Sürüş Davranışı Puanı';

  @override
  String get event_major_crashes => 'Büyük Çarpışmalar';

  @override
  String get event_speeding_incident => 'Hız İhlali Olayları';

  @override
  String get driver_id => 'Sürücü Kimliği';

  @override
  String get more_details => 'Daha Fazla Detay';

  @override
  String get events => 'Olaylar';

  @override
  String get error_email_exists => 'Bu e-posta zaten mevcut';

  @override
  String get error_wrong_password => 'Yanlış şifre';

  @override
  String get error_phone_exists => 'Bu telefon numarası zaten kullanılıyor';

  @override
  String get error_sp_ch => 'Şifre en az bir özel karakter içermelidir';

  @override
  String get error_up => 'Şifre en az bir büyük harf içermelidir';

  @override
  String get error_low => 'Şifre en az bir küçük harf içermelidir';

  @override
  String get error_num => 'Şifre en az bir rakam içermelidir';

  @override
  String get error_required => 'Bu alan zorunludur';

  @override
  String get error_invalid_email => 'Geçersiz e-posta adresi';

  @override
  String error_password_short(Object length) {
    return 'Şifre en az $length karakter olmalıdır';
  }
}
