// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get app_title => 'BlackBox 앱';

  @override
  String get common_yes => '예';

  @override
  String get common_no => '아니오';

  @override
  String get common_cancel => '취소';

  @override
  String get common_save => '저장';

  @override
  String get common_save_changes => '변경사항 저장';

  @override
  String get common_continue => '계속';

  @override
  String get common_next => '다음';

  @override
  String get auth_login => '로그인';

  @override
  String get auth_space_login => '로그인';

  @override
  String get auth_logout => '로그아웃';

  @override
  String get auth_confirm_logout => '로그아웃하시겠습니까?';

  @override
  String get auth_signup => '회원가입';

  @override
  String get auth_create_account => '계정 만들기';

  @override
  String get auth_already_have_account => '이미 계정이 있으신가요? ';

  @override
  String get auth_no_account => '계정이 없으신가요?';

  @override
  String get auth_forgot_password => '비밀번호를 잊으셨나요?';

  @override
  String get auth_reset_password => '비밀번호 재설정?';

  @override
  String get auth_change_password => '비밀번호 변경';

  @override
  String get auth_continue => '계속 진행하면 \n에 동의하는 것입니다';

  @override
  String get auth_terms => '이용약관 및 개인정보 처리방침';

  @override
  String get auth_email => '이메일';

  @override
  String get auth_password => '비밀번호';

  @override
  String get auth_confirm_password => '비밀번호 확인';

  @override
  String get auth_new_password => '새 비밀번호';

  @override
  String get auth_confirm_new_password => '새 비밀번호 확인';

  @override
  String get auth_enter_email => '이메일 주소를 입력하세요';

  @override
  String get auth_password_hint => '비밀번호를 입력하세요';

  @override
  String get full_name => '성명';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => '홍길동';

  @override
  String get required_name => '성명은 필수입니다';

  @override
  String get required_email => '이메일은 필수입니다';

  @override
  String get email_end => '이메일은 @gmail.com으로 끝나야 합니다';

  @override
  String get required_password => '비밀번호는 필수입니다';

  @override
  String get required_confirm_password => '비밀번호 확인은 필수입니다';

  @override
  String get password_do_not_match => '비밀번호가 일치하지 않습니다';

  @override
  String get min_password => '비밀번호는 8자 이상이며 숫자를 포함해야 합니다';

  @override
  String get send_verification_code => '인증 코드 발송';

  @override
  String get password_changed_successfully => '비밀번호가\n성공적으로 변경되었습니다';

  @override
  String get forget_password_title =>
      '계정에 등록된 이메일을 입력하시면 비밀번호 재설정 보안 PIN을 보내드립니다.';

  @override
  String get auth_security_pin => '보안 PIN';

  @override
  String get auth_enter_pin => '보안 PIN을 입력하세요';

  @override
  String get verify => '인증';

  @override
  String auth_resend_pin(Object seconds) {
    return '$seconds초 후 다시 보내기';
  }

  @override
  String get home_title => '홈';

  @override
  String get home_welcome => '안녕하세요, 다시 오셨군요';

  @override
  String get home_good_morning => '좋은 아침이에요';

  @override
  String get home_good_afternoon => '안녕하세요';

  @override
  String get home_good_evening => '안녕하세요';

  @override
  String get home_looks_good => '좋아\n보여요';

  @override
  String get home_safety_score => '안전 점수 개요';

  @override
  String get home_total_accidents => '총 사고 건수';

  @override
  String get total_active_cars => '총 활성 차량';

  @override
  String get total_cars => '총 차량';

  @override
  String home_active_cars(Object percentage) {
    return '차량의 $percentage%가 활성 상태입니다';
  }

  @override
  String get car_section_title => '차량';

  @override
  String get car_view_all => '차량 보기';

  @override
  String get car_add => '차량 추가';

  @override
  String get car_edit => '차량 편집';

  @override
  String get car_name => '차량 이름';

  @override
  String get car_plate => '차량 번호판';

  @override
  String get car_type => '차량 유형';

  @override
  String get car_driver_name => '운전자 이름';

  @override
  String car_item_title(Object id) {
    return '차량 #$id';
  }

  @override
  String get tracking_live => '실시간 추적';

  @override
  String get tracking_last_updates => '최근 업데이트';

  @override
  String get event_title => '주행 이벤트';

  @override
  String get event_speeding => '과속';

  @override
  String get event_hard_braking => '급제동';

  @override
  String get event_aggressive_turns => '급격한 회전';

  @override
  String get event_crash => '충돌';

  @override
  String event_location(Object location) {
    return '$location에서';
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
  String get event_severity => '심각도';

  @override
  String get event_severity_low => '낮음';

  @override
  String get event_severity_medium => '보통';

  @override
  String get event_severity_high => '높음';

  @override
  String get event_severity_critical => '위험';

  @override
  String get event_reason => '원인';

  @override
  String get event_last_speed => '마지막 기록 속도';

  @override
  String get notification_title => '알림';

  @override
  String get notification_today => '오늘';

  @override
  String get notification_yesterday => '어제';

  @override
  String get notification_earlier => '이번 주 초';

  @override
  String get notification_fuel_alert => '연료 누출 경고!';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return '$driver이(가) 운전하는 $car 차량에서 연료 수준이 급격히 떨어졌습니다.';
  }

  @override
  String get notification_crash_alert => '심각한 충돌이 감지되었습니다!';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return '$driver이(가) 운전하는 $car 차량에서 심각한 충돌이 보고되었습니다.';
  }

  @override
  String get profile_title => '프로필';

  @override
  String get profile_edit => '내 프로필 편집';

  @override
  String get update_profile => '프로필 업데이트';

  @override
  String get user_name => '사용자 이름';

  @override
  String get security_title => '보안';

  @override
  String get change_password => '비밀번호 변경';

  @override
  String get settings_title => '설정';

  @override
  String get settings_notifications => '알림 설정';

  @override
  String get settings_general_notifications => '일반 알림';

  @override
  String get account_settings => '계정 설정';

  @override
  String get push_notification => '푸시 알림';

  @override
  String get dark_mode => '다크 모드 켜짐';

  @override
  String get help_title => '고객 센터';

  @override
  String get help_and_faq => '도움말 & FAQ';

  @override
  String get help_contact => '문의하기';

  @override
  String get help_faq => '자주 묻는 질문';

  @override
  String get how_help => '어떻게 도와드릴까요?';

  @override
  String get on_wh_num => 'WhatsApp 번호로';

  @override
  String get language => '언어';

  @override
  String get question1 => 'BlackBox를 어떻게 사용하나요?';

  @override
  String get answer1 =>
      '차량에 BlackBox 장치를 설치하고, 앱에 로그인한 후 운전을 시작하세요. 앱이 자동으로 주행 데이터를 기록하고 표시합니다.';

  @override
  String get question2 => 'BlackBox 사용 비용은 얼마인가요?';

  @override
  String get answer2 => '비용은 선택한 플랜과 서비스에 따라 다릅니다. 가격 세부 정보는 회사에 문의하세요.';

  @override
  String get question3 => '지원팀에 어떻게 연락하나요?';

  @override
  String get answer3 => '회사 공식 WhatsApp 번호를 통해 지원팀에 연락하거나 업무 시간 중에 회사를 방문하세요.';

  @override
  String get question4 => '비밀번호를 잊어버린 경우 어떻게 재설정하나요?';

  @override
  String get answer4 => '로그인 화면에서 \'비밀번호 찾기\' 옵션을 사용하고 지시에 따라 비밀번호를 재설정하세요.';

  @override
  String get question5 => '개인 정보 보호 또는 데이터 보안 조치가 있나요?';

  @override
  String get answer5 =>
      '네. 귀하의 데이터는 안전하게 저장 및 보호되며, 법으로 요구되는 경우를 제외하고는 귀하의 허락 없이 공유되지 않습니다.';

  @override
  String get question6 => '앱 내에서 설정을 맞춤 설정할 수 있나요?';

  @override
  String get answer6 => '네. 앱 내에서 알림 및 기본 설정과 같은 사용 가능한 설정을 맞춤 설정할 수 있습니다.';

  @override
  String get question7 => '계정을 삭제하려면 어떻게 해야 하나요?';

  @override
  String get answer7 => '계정을 삭제하려면 WhatsApp을 통해 회사에 연락하거나 회사를 방문하세요.';

  @override
  String get question8 => '분석 기록에 어떻게 액세스하나요?';

  @override
  String get answer8 => '앱의 기록 또는 분석 섹션에서 과거 주행 및 운전 분석을 확인할 수 있습니다.';

  @override
  String get question9 => '앱을 오프라인으로 사용할 수 있나요?';

  @override
  String get answer9 =>
      '앱은 제한된 오프라인 기능을 제공합니다. 데이터를 동기화하고 전체 기능에 액세스하려면 인터넷 연결이 필요합니다.';

  @override
  String get terms_title => '이용약관';

  @override
  String get terms_accept => '이용약관 동의';

  @override
  String get terms_full =>
      '1. 약관 동의\n이 애플리케이션을 설치하거나 사용함으로써 이 이용약관에 동의하는 것입니다. 동의하지 않으시면 앱 사용을 중단해 주세요.\n\n2. 애플리케이션의 목적\n이 애플리케이션은 정보, 안전 및 분석 목적으로만 차량 성능 및 운전 습관을 모니터링하는 데 사용되는 차량 블랙박스 및 텔레매틱스 시스템입니다.\n\n3. 수집되는 데이터 매개변수\n애플리케이션은 다음을 포함하되 이에 국한되지 않는 차량 및 운전 데이터를 수집 및 처리할 수 있습니다:\n\n• 차량 속도\n• 연료 소비량 및 연료 수준\n• 가속 및 감속\n• 급제동 및 급가속 이벤트\n• 급격한 커브\n• GPS 위치 데이터 (위도 및 경도)\n• 주행 거리, 시간 및 일시\n• 운전자 및 차량 식별 데이터\n\n앱을 사용함으로써 이러한 매개변수 수집에 명시적으로 동의하는 것입니다.\n\n4. 서비스 가용성\n기술적 한계로 인해 앱의 지속적, 실시간 또는 오류 없는 운영은 보장되지 않습니다.';

  @override
  String get validation_password_mismatch => '비밀번호가 일치하지 않습니다';

  @override
  String get validation_invalid_phone => '유효하지 않은 전화번호';

  @override
  String get validation_incorrect_pin => '잘못된 PIN';

  @override
  String get validation_empty_fields => '모든 필드를 입력해 주세요';

  @override
  String get empty_no_cars => '차량을 찾을 수 없습니다';

  @override
  String get empty_no_notifications => '아직 알림이 없습니다';

  @override
  String get empty_no_events => '사용 가능한 이벤트가 없습니다';

  @override
  String get status_loading => '로딩 중...';

  @override
  String get status_success => '작업이 성공적으로 완료되었습니다';

  @override
  String get status_error => '문제가 발생했습니다';

  @override
  String get confirm_delete_car => '이 차량을 삭제하시겠습니까?';

  @override
  String get confirm_reset_password => '비밀번호를 재설정하시겠습니까?';

  @override
  String get search => '검색';

  @override
  String get search_hint => '검색...';

  @override
  String get search_no_results => '검색 결과가 없습니다';

  @override
  String get filter => '필터';

  @override
  String get sort => '정렬';

  @override
  String get onboarding_title_1 => '환영합니다';

  @override
  String get onboarding_desc_1 => 'Black Box Manager에 오신 것을 환영합니다';

  @override
  String get onboarding_title_2 => '운전 뒤에 숨겨진 이야기를 확인하세요,';

  @override
  String get onboarding_desc_2 => '모든 여정을 기록하고, 모든 주행 거리를 분석합니다.';

  @override
  String get delete_car => '차량 삭제';

  @override
  String get sedan => '세단';

  @override
  String get heavy_duty => '대형';

  @override
  String get current_password => '현재 비밀번호';

  @override
  String get password_requirement => '최소 8자 이상이어야 하며 문자와 숫자를 모두 포함해야 합니다.';

  @override
  String get current_password_is_not_correct => '현재 비밀번호가 올바르지 않습니다.';

  @override
  String get vehicle => '차량';

  @override
  String get driven_by => '운전자';

  @override
  String get report_fuel_level => '연료 수준의 급격한 하락을 보고했습니다.';

  @override
  String get report_collision_or_rollover => '심각한 충돌 또는 전복을 보고했습니다(sos).';

  @override
  String get report_overheating_or_dtc => '엔진 과열 또는 DTC 코드를 감지했습니다.';

  @override
  String get unknown_driver => '알 수 없는 운전자';

  @override
  String get mechanical_failure => '기계적 결함 경고!';

  @override
  String get critical_crash => '심각한 충돌 감지!';

  @override
  String get fuel_leak => '연료 누출 경고!';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String get day => '일';

  @override
  String get days => '일';

  @override
  String get week => '주';

  @override
  String get weeks => '주';

  @override
  String get month => '개월';

  @override
  String get months => '개월';

  @override
  String get year => '년';

  @override
  String get years => '년';

  @override
  String get january => '1월';

  @override
  String get february => '2월';

  @override
  String get march => '3월';

  @override
  String get april => '4월';

  @override
  String get may => '5월';

  @override
  String get june => '6월';

  @override
  String get july => '7월';

  @override
  String get august => '8월';

  @override
  String get september => '9월';

  @override
  String get october => '10월';

  @override
  String get november => '11월';

  @override
  String get december => '12월';

  @override
  String more_than_years(Object num) {
    return '#$num년째';
  }

  @override
  String get since_two_years => '2년째';

  @override
  String get since_year => '1년째';

  @override
  String since_months(Object num) {
    return '#$num개월째';
  }

  @override
  String get since_two_months => '2개월째';

  @override
  String get since_month => '1개월째';

  @override
  String since_weeks(Object num) {
    return '#$num주째';
  }

  @override
  String get since_two_weeks => '2주째';

  @override
  String get since_week => '1주째';

  @override
  String since_days(Object num) {
    return '#$num일째';
  }

  @override
  String get since_two_days => '2일째';

  @override
  String get since_day => '1일째';

  @override
  String get view_driving_events => '운전 이벤트 보기';

  @override
  String get coolant_temp => '냉각수 온도';

  @override
  String get dtc_codes => 'DTC 코드';

  @override
  String get road_bump => '도로 충격';

  @override
  String get fuel_level => '연료 수준';

  @override
  String get driving_behavior_score => '운전 행동 점수';

  @override
  String get event_major_crashes => '대형 충돌';

  @override
  String get event_speeding_incident => '과속 사건';

  @override
  String get driver_id => '운전자 ID';

  @override
  String get more_details => '더보기';

  @override
  String get events => '이벤트';

  @override
  String get error_email_exists => '이 이메일은 이미 존재합니다';

  @override
  String get error_wrong_password => '잘못된 비밀번호';

  @override
  String get error_phone_exists => '이 전화번호는 이미 사용 중입니다';

  @override
  String get error_sp_ch => '비밀번호에는 특수 문자가 하나 이상 포함되어야 합니다';

  @override
  String get error_up => '비밀번호에는 대문자가 하나 이상 포함되어야 합니다';

  @override
  String get error_low => '비밀번호에는 소문자가 하나 이상 포함되어야 합니다';

  @override
  String get error_num => '비밀번호에는 숫자가 하나 이상 포함되어야 합니다';

  @override
  String get error_required => '이 필드는 필수입니다';

  @override
  String get error_invalid_email => '유효하지 않은 이메일 주소';

  @override
  String error_password_short(Object length) {
    return '비밀번호는 $length자 이상이어야 합니다';
  }
}
