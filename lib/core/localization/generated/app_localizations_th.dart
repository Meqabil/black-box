// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get app_title => 'แอป BlackBox';

  @override
  String get common_yes => 'ใช่';

  @override
  String get common_no => 'ไม่ใช่';

  @override
  String get common_cancel => 'ยกเลิก';

  @override
  String get common_save => 'บันทึก';

  @override
  String get common_save_changes => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get common_continue => 'ดำเนินการต่อ';

  @override
  String get common_next => 'ถัดไป';

  @override
  String get auth_login => 'เข้าสู่ระบบ';

  @override
  String get auth_space_login => 'Log In';

  @override
  String get auth_logout => 'ออกจากระบบ';

  @override
  String get auth_confirm_logout => 'คุณแน่ใจหรือไม่ว่าต้องการออกจากระบบ?';

  @override
  String get auth_signup => 'สมัครสมาชิก';

  @override
  String get auth_create_account => 'สร้างบัญชี';

  @override
  String get auth_already_have_account => 'มีบัญชีอยู่แล้ว? ';

  @override
  String get auth_no_account => 'ยังไม่มีบัญชี?';

  @override
  String get auth_forgot_password => 'ลืมรหัสผ่าน?';

  @override
  String get auth_reset_password => 'รีเซ็ตรหัสผ่าน?';

  @override
  String get auth_change_password => 'เปลี่ยนรหัสผ่าน';

  @override
  String get auth_continue => 'การดำเนินการต่อถือว่าคุณยอมรับ\n';

  @override
  String get auth_terms => 'ข้อกำหนดการใช้งานและนโยบายความเป็นส่วนตัว';

  @override
  String get auth_email => 'อีเมล';

  @override
  String get auth_password => 'รหัสผ่าน';

  @override
  String get auth_confirm_password => 'ยืนยันรหัสผ่าน';

  @override
  String get auth_new_password => 'รหัสผ่านใหม่';

  @override
  String get auth_confirm_new_password => 'ยืนยันรหัสผ่านใหม่';

  @override
  String get auth_enter_email => 'กรอกที่อยู่อีเมล';

  @override
  String get auth_password_hint => 'กรอกรหัสผ่านของคุณ';

  @override
  String get full_name => 'ชื่อ-นามสกุล';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => 'John Doe';

  @override
  String get required_name => 'ต้องระบุชื่อ-นามสกุล';

  @override
  String get required_email => 'ต้องระบุอีเมล';

  @override
  String get email_end => 'อีเมลต้องลงท้ายด้วย @gmail.com';

  @override
  String get required_password => 'ต้องระบุรหัสผ่าน';

  @override
  String get required_confirm_password => 'ต้องยืนยันรหัสผ่าน';

  @override
  String get password_do_not_match => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get min_password => 'รหัสผ่านต้องมีอย่างน้อย 8 ตัวอักษรและมีตัวเลข';

  @override
  String get send_verification_code => 'ส่งรหัสยืนยัน';

  @override
  String get password_changed_successfully => 'เปลี่ยนรหัสผ่าน\nสำเร็จแล้ว';

  @override
  String get forget_password_title =>
      'กรอกอีเมลที่เชื่อมโยงกับบัญชีของคุณ เราจะส่ง PIN ความปลอดภัยสำหรับรีเซ็ตรหัสผ่านให้คุณ';

  @override
  String get auth_security_pin => 'PIN ความปลอดภัย';

  @override
  String get auth_enter_pin => 'กรอก PIN ความปลอดภัย';

  @override
  String get verify => 'ยืนยัน';

  @override
  String auth_resend_pin(Object seconds) {
    return 'ส่งใหม่ใน $seconds วินาที';
  }

  @override
  String get home_title => 'หน้าหลัก';

  @override
  String get home_welcome => 'สวัสดี ยินดีต้อนรับกลับ';

  @override
  String get home_good_morning => 'สวัสดีตอนเช้า';

  @override
  String get home_good_afternoon => 'สวัสดีตอนบ่าย';

  @override
  String get home_good_evening => 'สวัสดีตอนเย็น';

  @override
  String get home_looks_good => 'ดูเหมือน\nจะดี';

  @override
  String get home_safety_score => 'ภาพรวมคะแนนความปลอดภัย';

  @override
  String get home_total_accidents => 'อุบัติเหตุทั้งหมด';

  @override
  String get total_active_cars => 'รถที่ใช้งานอยู่ทั้งหมด';

  @override
  String get total_cars => 'รถทั้งหมด';

  @override
  String home_active_cars(Object percentage) {
    return 'รถของคุณ $percentage% อยู่ในสถานะใช้งาน';
  }

  @override
  String get car_section_title => 'รถยนต์';

  @override
  String get car_view_all => 'ดูรถทั้งหมด';

  @override
  String get car_add => 'เพิ่มรถ';

  @override
  String get car_edit => 'แก้ไขรถ';

  @override
  String get car_name => 'ชื่อรถ';

  @override
  String get car_plate => 'ป้ายทะเบียนรถ';

  @override
  String get car_type => 'ประเภทรถ';

  @override
  String get car_driver_name => 'ชื่อผู้ขับขี่';

  @override
  String car_item_title(Object id) {
    return 'รถ #$id';
  }

  @override
  String get tracking_live => 'ติดตามแบบเรียลไทม์';

  @override
  String get tracking_last_updates => 'อัปเดตล่าสุด';

  @override
  String get event_title => 'เหตุการณ์การขับขี่';

  @override
  String get event_speeding => 'ขับเร็วเกินกำหนด';

  @override
  String get event_hard_braking => 'เบรกกระทันหัน';

  @override
  String get event_aggressive_turns => 'เลี้ยวกะทันหัน';

  @override
  String get event_crash => 'เกิดอุบัติเหตุ';

  @override
  String event_location(Object location) {
    return 'ที่ $location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed กม./ชม.';
  }

  @override
  String get event_severity => 'ระดับความรุนแรง';

  @override
  String get event_severity_low => 'ต่ำ';

  @override
  String get event_severity_medium => 'ปานกลาง';

  @override
  String get event_severity_high => 'สูง';

  @override
  String get event_severity_critical => 'วิกฤติ';

  @override
  String get event_reason => 'เหตุผล';

  @override
  String get event_last_speed => 'ความเร็วที่บันทึกครั้งล่าสุด';

  @override
  String get notification_title => 'การแจ้งเตือน';

  @override
  String get notification_today => 'วันนี้';

  @override
  String get notification_yesterday => 'เมื่อวาน';

  @override
  String get notification_earlier => 'ต้นสัปดาห์นี้';

  @override
  String get notification_fuel_alert => 'แจ้งเตือนน้ำมันรั่ว!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return 'รถ $car ที่ขับโดย $driver มีรายงานว่าระดับน้ำมันลดลงอย่างรวดเร็ว';
  }

  @override
  String get notification_crash_alert => 'ตรวจพบอุบัติเหตุรุนแรง!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return 'รถ $car ที่ขับโดย $driver มีรายงานการชนอย่างรุนแรง';
  }

  @override
  String get profile_title => 'โปรไฟล์';

  @override
  String get profile_edit => 'แก้ไขโปรไฟล์ของฉัน';

  @override
  String get update_profile => 'อัปเดตโปรไฟล์';

  @override
  String get user_name => 'ชื่อผู้ใช้';

  @override
  String get security_title => 'ความปลอดภัย';

  @override
  String get change_password => 'เปลี่ยนรหัสผ่าน';

  @override
  String get settings_title => 'การตั้งค่า';

  @override
  String get settings_notifications => 'การตั้งค่าการแจ้งเตือน';

  @override
  String get settings_general_notifications => 'การแจ้งเตือนทั่วไป';

  @override
  String get account_settings => 'การตั้งค่าบัญชี';

  @override
  String get push_notification => 'การแจ้งเตือนแบบพุช';

  @override
  String get dark_mode => 'โหมดมืดเปิดอยู่';

  @override
  String get help_title => 'ศูนย์ช่วยเหลือ';

  @override
  String get help_and_faq => 'ช่วยเหลือ & คำถามที่พบบ่อย';

  @override
  String get help_contact => 'ติดต่อเรา';

  @override
  String get help_faq => 'คำถามที่พบบ่อย';

  @override
  String get how_help => 'เราจะช่วยคุณได้อย่างไร?';

  @override
  String get on_wh_num => 'ผ่านเบอร์ WhatsApp';

  @override
  String get language => 'ภาษา';

  @override
  String get question1 => 'วิธีใช้ BlackBox?';

  @override
  String get answer1 =>
      'ติดตั้งอุปกรณ์ BlackBox ในรถของคุณ ล็อกอินเข้าสู่แอป แล้วเริ่มขับรถ แอปจะบันทึกและแสดงข้อมูลการขับขี่โดยอัตโนมัติ';

  @override
  String get question2 => 'การใช้ BlackBox มีค่าใช้จ่ายเท่าไหร่?';

  @override
  String get answer2 =>
      'ค่าใช้จ่ายขึ้นอยู่กับแพ็คเกจและบริการที่เลือก โปรดติดต่อบริษัทเพื่อสอบถามรายละเอียดราคา';

  @override
  String get question3 => 'ติดต่อฝ่ายสนับสนุนได้อย่างไร?';

  @override
  String get answer3 =>
      'คุณสามารถติดต่อผ่าน WhatsApp ด้วยเบอร์ทางการของบริษัท หรือมาที่สำนักงานบริษัทในเวลาทำการ';

  @override
  String get question4 => 'ลืมรหัสผ่าน จะรีเซ็ตอย่างไร?';

  @override
  String get answer4 =>
      'ใช้ตัวเลือก \'ลืมรหัสผ่าน\' บนหน้าจอเข้าสู่ระบบ แล้วทำตามขั้นตอน';

  @override
  String get question5 => 'มีมาตรการคุ้มครองความเป็นส่วนตัวและข้อมูลหรือไม่?';

  @override
  String get answer5 =>
      'มี ข้อมูลของคุณถูกเก็บรักษาอย่างปลอดภัยและไม่ถูกเปิดเผยโดยไม่ได้รับอนุญาตจากคุณ ยกเว้นตามที่กฎหมายกำหนด';

  @override
  String get question6 => 'ฉันสามารถปรับแต่งการตั้งค่าในแอปได้หรือไม่?';

  @override
  String get answer6 =>
      'ได้ คุณสามารถปรับแต่งการตั้งค่าที่มี เช่น การแจ้งเตือนและความชอบต่างๆ ได้ในแอป';

  @override
  String get question7 => 'ฉันจะลบบัญชีได้อย่างไร?';

  @override
  String get answer7 =>
      'เพื่อลบบัญชี โปรดติดต่อบริษัทผ่าน WhatsApp หรือมาที่สำนักงานบริษัท';

  @override
  String get question8 => 'ฉันจะเข้าถึงประวัติการวิเคราะห์ได้อย่างไร?';

  @override
  String get answer8 =>
      'คุณสามารถดูการเดินทางในอดีตและการวิเคราะห์การขับขี่ได้ในส่วนประวัติหรือการวิเคราะห์ของแอป';

  @override
  String get question9 => 'ฉันสามารถใช้แอปแบบออฟไลน์ได้หรือไม่?';

  @override
  String get answer9 =>
      'แอปมีฟังก์ชันออฟไลน์จำกัด ต้องเชื่อมต่ออินเทอร์เน็ตเพื่อซิงค์ข้อมูลและใช้งานฟีเจอร์ทั้งหมด';

  @override
  String get terms_title => 'ข้อกำหนดและเงื่อนไข';

  @override
  String get terms_accept => 'ยอมรับข้อกำหนดและเงื่อนไข';

  @override
  String get terms_full =>
      '1. การยอมรับข้อกำหนด\nการติดตั้งหรือใช้งานแอปพลิเคชันนี้ ถือว่าคุณยอมรับข้อกำหนดและเงื่อนไข หากไม่ยอมรับ โปรดหยุดการใช้งานแอป\n\n2. วัตถุประสงค์ของแอปพลิเคชัน\nแอปพลิเคชันนี้เป็นระบบกล่องดำรถยนต์และเทเลเมติกส์ ใช้เพื่อติดตามประสิทธิภาพรถยนต์และพฤติกรรมการขับขี่เพื่อวัตถุประสงค์ด้านข้อมูล ความปลอดภัย และการวิเคราะห์เท่านั้น\n\n3. พารามิเตอร์ข้อมูลที่เก็บรวบรวม\nแอปพลิเคชันอาจเก็บรวบรวมและประมวลผลข้อมูลรถยนต์และการขับขี่ รวมถึง:\n\n• ความเร็วของรถ\n• การบริโภคและระดับน้ำมันเชื้อเพลิง\n• การเร่งและลดความเร็ว\n• เหตุการณ์เบรกแรงและเร่งเร็ว\n• การเลี้ยวฉับพลัน\n• ข้อมูลตำแหน่ง GPS (ละติจูดและลองจิจูด)\n• ระยะทาง ระยะเวลา และเวลาของการเดินทาง\n• ข้อมูลประจำตัวผู้ขับขี่และรถยนต์\n\nการใช้งานแอปถือว่าคุณยินยอมอย่างชัดเจนให้เก็บรวบรวมพารามิเตอร์เหล่านี้\n\n4. การให้บริการ\nเนื่องจากข้อจำกัดทางเทคนิค ไม่สามารถรับประกันการทำงานของแอปแบบต่อเนื่อง เรียลไทม์ หรือปราศจากข้อผิดพลาดได้';

  @override
  String get validation_password_mismatch => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get validation_invalid_phone => 'เบอร์โทรศัพท์ไม่ถูกต้อง';

  @override
  String get validation_incorrect_pin => 'PIN ไม่ถูกต้อง';

  @override
  String get validation_empty_fields => 'กรุณากรอกข้อมูลให้ครบทุกช่อง';

  @override
  String get empty_no_cars => 'ไม่พบรถยนต์';

  @override
  String get empty_no_notifications => 'ยังไม่มีแจ้งเตือน';

  @override
  String get empty_no_events => 'ไม่มีเหตุการณ์';

  @override
  String get status_loading => 'กำลังโหลด...';

  @override
  String get status_success => 'ดำเนินการสำเร็จ';

  @override
  String get status_error => 'เกิดข้อผิดพลาด';

  @override
  String get confirm_delete_car => 'คุณแน่ใจหรือไม่ว่าต้องการลบรถคันนี้?';

  @override
  String get confirm_reset_password =>
      'คุณแน่ใจหรือไม่ว่าต้องการรีเซ็ตรหัสผ่าน?';

  @override
  String get search => 'ค้นหา';

  @override
  String get search_hint => 'ค้นหา...';

  @override
  String get search_no_results => 'ไม่พบผลลัพธ์';

  @override
  String get filter => 'ตัวกรอง';

  @override
  String get sort => 'เรียงลำดับ';

  @override
  String get onboarding_title_1 => 'ยินดีต้อนรับ';

  @override
  String get onboarding_desc_1 => 'สู่ Black Box Manager';

  @override
  String get onboarding_title_2 => 'ดูเรื่องราวเบื้องหลังการขับขี่ของคุณ';

  @override
  String get onboarding_desc_2 => 'บันทึกทุกการเดินทาง วิเคราะห์ทุกไมล์';

  @override
  String get delete_car => 'ลบรถ';

  @override
  String get sedan => 'ซีดาน';

  @override
  String get heavy_duty => 'รถบรรทุกหนัก';

  @override
  String get current_password => 'รหัสผ่านปัจจุบัน';

  @override
  String get password_requirement =>
      'ต้องมีความยาวอย่างน้อย 8 ตัวอักษรและประกอบด้วยตัวอักษรและตัวเลข';

  @override
  String get current_password_is_not_correct => 'รหัสผ่านปัจจุบันไม่ถูกต้อง';

  @override
  String get vehicle => 'ยานพาหนะ';

  @override
  String get driven_by => 'ขับโดย';

  @override
  String get report_fuel_level => 'รายงานระดับน้ำมันเชื้อเพลิงลดลงอย่างรวดเร็ว';

  @override
  String get report_collision_or_rollover =>
      'รายงานการชนอย่างรุนแรงหรือการพลิกคว่ำ (sos)';

  @override
  String get report_overheating_or_dtc =>
      'รายงานเครื่องยนต์ร้อนจัดหรือตรวจพบรหัส DTC';

  @override
  String get unknown_driver => 'คนขับที่ไม่รู้จัก';

  @override
  String get mechanical_failure => 'คำเตือนความล้มเหลวทางกลไก!';

  @override
  String get critical_crash => 'ตรวจพบการชนที่รุนแรง!';

  @override
  String get fuel_leak => 'แจ้งเตือนน้ำมันเชื้อเพลิงรั่ว!';

  @override
  String get today => 'วันนี้';

  @override
  String get yesterday => 'เมื่อวานนี้';

  @override
  String get day => 'วัน';

  @override
  String get days => 'วัน';

  @override
  String get week => 'สัปดาห์';

  @override
  String get weeks => 'สัปดาห์';

  @override
  String get month => 'เดือน';

  @override
  String get months => 'เดือน';

  @override
  String get year => 'ปี';

  @override
  String get years => 'ปี';

  @override
  String get january => 'มกราคม';

  @override
  String get february => 'กุมภาพันธ์';

  @override
  String get march => 'มีนาคม';

  @override
  String get april => 'เมษายน';

  @override
  String get may => 'พฤษภาคม';

  @override
  String get june => 'มิถุนายน';

  @override
  String get july => 'กรกฎาคม';

  @override
  String get august => 'สิงหาคม';

  @override
  String get september => 'กันยายน';

  @override
  String get october => 'ตุลาคม';

  @override
  String get november => 'พฤศจิกายน';

  @override
  String get december => 'ธันวาคม';

  @override
  String more_than_years(Object num) {
    return '#$num ปีที่แล้ว';
  }

  @override
  String get since_two_years => '2 ปีที่แล้ว';

  @override
  String get since_year => '1 ปีที่แล้ว';

  @override
  String since_months(Object num) {
    return '#$num เดือนที่แล้ว';
  }

  @override
  String get since_two_months => '2 เดือนที่แล้ว';

  @override
  String get since_month => '1 เดือนที่แล้ว';

  @override
  String since_weeks(Object num) {
    return '#$num สัปดาห์ที่แล้ว';
  }

  @override
  String get since_two_weeks => '2 สัปดาห์ที่แล้ว';

  @override
  String get since_week => '1 สัปดาห์ที่แล้ว';

  @override
  String since_days(Object num) {
    return '#$num วันที่แล้ว';
  }

  @override
  String get since_two_days => '2 วันที่แล้ว';

  @override
  String get since_day => '1 วันที่แล้ว';

  @override
  String get view_driving_events => 'ดูเหตุการณ์การขับขี่';

  @override
  String get coolant_temp => 'อุณหภูมิสารหล่อเย็น';

  @override
  String get dtc_codes => 'รหัส DTC';

  @override
  String get road_bump => 'การกระแทกของถนน';

  @override
  String get fuel_level => 'ระดับน้ำมันเชื้อเพลิง';

  @override
  String get driving_behavior_score => 'คะแนนพฤติกรรมการขับขี่';

  @override
  String get event_major_crashes => 'การชนครั้งใหญ่';

  @override
  String get event_speeding_incident => 'เหตุการณ์ขับรถเร็วเกินกำหนด';

  @override
  String get driver_id => 'รหัสผู้ขับขี่';

  @override
  String get more_details => 'รายละเอียดเพิ่มเติม';

  @override
  String get events => 'เหตุการณ์';

  @override
  String get error_email_exists => 'อีเมลนี้มีอยู่แล้ว';

  @override
  String get error_wrong_password => 'รหัสผ่านไม่ถูกต้อง';

  @override
  String get error_phone_exists => 'เบอร์โทรศัพท์นี้ถูกใช้แล้ว';

  @override
  String get error_sp_ch => 'รหัสผ่านต้องมีอักขระพิเศษอย่างน้อย 1 ตัว';

  @override
  String get error_up => 'รหัสผ่านต้องมีตัวพิมพ์ใหญ่อย่างน้อย 1 ตัว';

  @override
  String get error_low => 'รหัสผ่านต้องมีตัวพิมพ์เล็กอย่างน้อย 1 ตัว';

  @override
  String get error_num => 'รหัสผ่านต้องมีตัวเลขอย่างน้อย 1 ตัว';

  @override
  String get error_required => 'ช่องนี้จำเป็นต้องกรอก';

  @override
  String get error_invalid_email => 'ที่อยู่อีเมลไม่ถูกต้อง';

  @override
  String error_password_short(Object length) {
    return 'รหัสผ่านต้องมีอย่างน้อย $length ตัวอักษร';
  }
}
