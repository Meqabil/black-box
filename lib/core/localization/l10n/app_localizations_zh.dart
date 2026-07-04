// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => '是';

  @override
  String get common_no => '否';

  @override
  String get common_cancel => '取消';

  @override
  String get common_save => '保存';

  @override
  String get common_save_changes => '保存更改';

  @override
  String get common_continue => '继续';

  @override
  String get common_next => '下一步';

  @override
  String get auth_login => '登录';

  @override
  String get auth_space_login => '登录';

  @override
  String get auth_logout => '退出登录';

  @override
  String get auth_confirm_logout => '您确定要退出登录吗？';

  @override
  String get auth_signup => '注册';

  @override
  String get auth_create_account => '创建账户';

  @override
  String get auth_already_have_account => '已有账户？ ';

  @override
  String get auth_no_account => '没有账户？';

  @override
  String get auth_forgot_password => '忘记密码？';

  @override
  String get auth_reset_password => '重置密码？';

  @override
  String get auth_change_password => '修改密码';

  @override
  String get auth_continue => '继续即表示您同意\n';

  @override
  String get auth_terms => '使用条款和隐私政策';

  @override
  String get auth_email => '电子邮件';

  @override
  String get auth_password => '密码';

  @override
  String get auth_confirm_password => '确认密码';

  @override
  String get auth_new_password => '新密码';

  @override
  String get auth_confirm_new_password => '确认新密码';

  @override
  String get auth_enter_email => '输入电子邮件地址';

  @override
  String get auth_password_hint => '输入您的密码';

  @override
  String get full_name => '全名';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => '张三';

  @override
  String get required_name => '全名为必填项';

  @override
  String get required_email => '电子邮件为必填项';

  @override
  String get email_end => '电子邮件必须以@gmail.com结尾';

  @override
  String get required_password => '密码为必填项';

  @override
  String get required_confirm_password => '确认密码为必填项';

  @override
  String get password_do_not_match => '密码不匹配';

  @override
  String get min_password => '密码必须至少8个字符且包含数字';

  @override
  String get send_verification_code => '发送验证码';

  @override
  String get password_changed_successfully => '密码已成功\n更改';

  @override
  String get forget_password_title => '输入与您账户关联的电子邮件，我们将向您发送密码重置安全PIN码。';

  @override
  String get auth_security_pin => '安全PIN码';

  @override
  String get auth_enter_pin => '输入安全PIN码';

  @override
  String get verify => '验证';

  @override
  String auth_resend_pin(Object seconds) {
    return '$seconds秒后重新发送';
  }

  @override
  String get home_title => '首页';

  @override
  String get home_welcome => '嗨，欢迎回来';

  @override
  String get home_good_morning => '早上好';

  @override
  String get home_good_afternoon => '下午好';

  @override
  String get home_good_evening => '晚上好';

  @override
  String get home_looks_good => '一切\n良好';

  @override
  String get home_safety_score => '安全评分概览';

  @override
  String get home_total_accidents => '总事故数';

  @override
  String get total_active_cars => '活跃车辆总数';

  @override
  String get total_cars => '车辆总数';

  @override
  String home_active_cars(Object percentage) {
    return '您$percentage%的车辆处于活跃状态';
  }

  @override
  String get car_section_title => '车辆';

  @override
  String get car_view_all => '查看车辆';

  @override
  String get car_add => '添加车辆';

  @override
  String get car_edit => '编辑车辆';

  @override
  String get car_name => '车辆名称';

  @override
  String get car_plate => '车牌号';

  @override
  String get car_type => '车辆类型';

  @override
  String get car_driver_name => '驾驶员姓名';

  @override
  String car_item_title(Object id) {
    return '车辆 #$id';
  }

  @override
  String get tracking_live => '实时追踪';

  @override
  String get tracking_last_updates => '最新更新';

  @override
  String get event_title => '驾驶事件';

  @override
  String get event_speeding => '超速';

  @override
  String get event_hard_braking => '急刹车';

  @override
  String get event_aggressive_turns => '急转弯';

  @override
  String get event_crash => '碰撞';

  @override
  String event_location(Object location) {
    return '在$location';
  }

  @override
  String event_time(Object time, Object date) {
    return '$time - $date';
  }

  @override
  String event_speed(Object speed) {
    return '$speed 公里/小时';
  }

  @override
  String get event_severity => '严重程度';

  @override
  String get event_severity_low => '低';

  @override
  String get event_severity_medium => '中';

  @override
  String get event_severity_high => '高';

  @override
  String get event_severity_critical => '危急';

  @override
  String get event_reason => '原因';

  @override
  String get event_last_speed => '最后记录速度';

  @override
  String get notification_title => '通知';

  @override
  String get notification_today => '今天';

  @override
  String get notification_yesterday => '昨天';

  @override
  String get notification_earlier => '本周早些时候';

  @override
  String get notification_fuel_alert => '燃油泄漏警报！';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return '由$driver驾驶的车辆$car报告燃油液位急剧下降。';
  }

  @override
  String get notification_crash_alert => '检测到严重碰撞！';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return '由$driver驾驶的车辆$car报告发生严重碰撞。';
  }

  @override
  String get profile_title => '个人资料';

  @override
  String get profile_edit => '编辑我的资料';

  @override
  String get update_profile => '更新资料';

  @override
  String get user_name => '用户名';

  @override
  String get security_title => '安全';

  @override
  String get change_password => '修改密码';

  @override
  String get settings_title => '设置';

  @override
  String get settings_notifications => '通知设置';

  @override
  String get settings_general_notifications => '一般通知';

  @override
  String get account_settings => '账户设置';

  @override
  String get push_notification => '推送通知';

  @override
  String get dark_mode => '深色模式已开启';

  @override
  String get help_title => '帮助中心';

  @override
  String get help_and_faq => '帮助与常见问题';

  @override
  String get help_contact => '联系我们';

  @override
  String get help_faq => '常见问题';

  @override
  String get how_help => '我们如何帮助您？';

  @override
  String get on_wh_num => 'WhatsApp号码';

  @override
  String get language => '语言';

  @override
  String get question1 => '如何使用BlackBox？';

  @override
  String get answer1 => '将BlackBox设备安装在您的汽车中，登录应用程序，然后开始驾驶。应用程序将自动记录并显示您的驾驶数据。';

  @override
  String get question2 => '使用BlackBox需要多少费用？';

  @override
  String get answer2 => '费用取决于所选计划和服务。请联系公司了解定价详情。';

  @override
  String get question3 => '如何联系客服？';

  @override
  String get answer3 => '您可以通过WhatsApp使用公司官方号码联系客服，或在工作时间内前往公司办公室。';

  @override
  String get question4 => '如果忘记密码，如何重置？';

  @override
  String get answer4 => '在登录界面使用忘记密码选项，按照说明重置您的密码。';

  @override
  String get question5 => '是否有隐私或数据安全措施？';

  @override
  String get answer5 => '是的。您的数据被安全存储和保护，除非法律要求，否则不会在未经您许可的情况下共享。';

  @override
  String get question6 => '可以自定义应用程序设置吗？';

  @override
  String get answer6 => '是的。您可以在应用程序内自定义可用设置，如通知和偏好设置。';

  @override
  String get question7 => '如何删除我的账户？';

  @override
  String get answer7 => '要删除账户，请通过WhatsApp联系公司或前往公司办公室。';

  @override
  String get question8 => '如何访问我的分析历史？';

  @override
  String get answer8 => '您可以在应用程序的历史记录或分析部分查看过去的行程和驾驶分析。';

  @override
  String get question9 => '可以离线使用应用程序吗？';

  @override
  String get answer9 => '应用程序具有有限的离线功能。同步数据和访问完整功能需要互联网连接。';

  @override
  String get terms_title => '条款和条件';

  @override
  String get terms_accept => '接受条款和条件';

  @override
  String get terms_full =>
      '1. 条款接受\n通过安装或使用本应用程序，您同意这些条款和条件。如果您不同意，请停止使用该应用程序。\n\n2. 应用程序目的\n本应用程序是一个车辆黑匣子和远程信息处理系统，仅用于监控车辆性能和驾驶行为，供信息、安全和分析目的使用。\n\n3. 收集的数据参数\n应用程序可能收集和处理车辆和驾驶数据，包括但不限于：\n\n• 车辆速度\n• 燃油消耗和燃油液位\n• 加速和减速\n• 急刹车和急加速事件\n• 急转弯\n• GPS位置数据（纬度和经度）\n• 行程距离、时长和时间\n• 驾驶员和车辆识别数据\n\n使用应用程序即表示您明确同意收集这些参数。\n\n4. 服务可用性\n由于技术限制，应用程序的持续、实时或无错误运行无法得到保证。';

  @override
  String get validation_password_mismatch => '密码不匹配';

  @override
  String get validation_invalid_phone => '无效的电话号码';

  @override
  String get validation_incorrect_pin => 'PIN码不正确';

  @override
  String get validation_empty_fields => '请填写所有字段';

  @override
  String get empty_no_cars => '未找到车辆';

  @override
  String get empty_no_notifications => '暂无通知';

  @override
  String get empty_no_events => '无可用事件';

  @override
  String get status_loading => '加载中...';

  @override
  String get status_success => '操作成功';

  @override
  String get status_error => '出现问题';

  @override
  String get confirm_delete_car => '您确定要删除这辆车吗？';

  @override
  String get confirm_reset_password => '您确定要重置密码吗？';

  @override
  String get search => '搜索';

  @override
  String get search_hint => '搜索...';

  @override
  String get search_no_results => '未找到结果';

  @override
  String get filter => '筛选';

  @override
  String get sort => '排序';

  @override
  String get onboarding_title_1 => '欢迎';

  @override
  String get onboarding_desc_1 => '使用Black Box管理器';

  @override
  String get onboarding_title_2 => '了解您驾驶背后的故事，';

  @override
  String get onboarding_desc_2 => '记录每一段旅程，分析每一公里。';

  @override
  String get delete_car => '删除车辆';

  @override
  String get sedan => '轿车';

  @override
  String get heavy_duty => '重型车';

  @override
  String get current_password => '当前密码';

  @override
  String get password_requirement => '长度至少为8个字符，且同时包含字母和数字。';

  @override
  String get current_password_is_not_correct => '当前密码不正确。';

  @override
  String get vehicle => '车辆';

  @override
  String get driven_by => '由驾驶';

  @override
  String get report_fuel_level => '报告检测到燃油量快速下降。';

  @override
  String get report_collision_or_rollover => '报告发生严重碰撞或翻车事故（紧急求救）。';

  @override
  String get report_overheating_or_dtc => '报告发动机过热或检测到故障码。';

  @override
  String get unknown_driver => '未知驾驶员';

  @override
  String get mechanical_failure => '机械故障警告！';

  @override
  String get critical_crash => '检测到严重碰撞！';

  @override
  String get fuel_leak => '燃油泄漏警报！';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get day => '天';

  @override
  String get days => '天';

  @override
  String get week => '周';

  @override
  String get weeks => '周';

  @override
  String get month => '月';

  @override
  String get months => '月';

  @override
  String get year => '年';

  @override
  String get years => '年';

  @override
  String get january => '1月';

  @override
  String get february => '2月';

  @override
  String get march => '3月';

  @override
  String get april => '4月';

  @override
  String get may => '5月';

  @override
  String get june => '6月';

  @override
  String get july => '7月';

  @override
  String get august => '8月';

  @override
  String get september => '9月';

  @override
  String get october => '10月';

  @override
  String get november => '11月';

  @override
  String get december => '12月';

  @override
  String more_than_years(Object num) {
    return '已有#$num年';
  }

  @override
  String get since_two_years => '已有2年';

  @override
  String get since_year => '已有1年';

  @override
  String since_months(Object num) {
    return '已有#$num个月';
  }

  @override
  String get since_two_months => '已有2个月';

  @override
  String get since_month => '已有1个月';

  @override
  String since_weeks(Object num) {
    return '已有#$num周';
  }

  @override
  String get since_two_weeks => '已有2周';

  @override
  String get since_week => '已有1周';

  @override
  String since_days(Object num) {
    return '已有#$num天';
  }

  @override
  String get since_two_days => '已有2天';

  @override
  String get since_day => '已有1天';

  @override
  String get view_driving_events => '查看驾驶事件';

  @override
  String get coolant_temp => '冷却液温度';

  @override
  String get dtc_codes => '故障码';

  @override
  String get road_bump => '道路颠簸';

  @override
  String get fuel_level => '燃油量';

  @override
  String get driving_behavior_score => '驾驶行为评分';

  @override
  String get event_major_crashes => '重大碰撞';

  @override
  String get event_speeding_incident => '超速事件';

  @override
  String get driver_id => '驾驶员ID';

  @override
  String get more_details => '更多详情';

  @override
  String get events => '事件';

  @override
  String get error_email_exists => '此电子邮件已存在';

  @override
  String get error_wrong_password => '密码不正确';

  @override
  String get error_phone_exists => '此电话号码已被使用';

  @override
  String get error_sp_ch => '密码必须包含至少一个特殊字符';

  @override
  String get error_up => '密码必须包含至少一个大写字母';

  @override
  String get error_low => '密码必须包含至少一个小写字母';

  @override
  String get error_num => '密码必须包含至少一个数字';

  @override
  String get error_required => '此字段为必填项';

  @override
  String get error_invalid_email => '无效的电子邮件地址';

  @override
  String error_password_short(Object length) {
    return '密码必须至少$length个字符';
  }
}
