// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get app_title => 'BlackBox App';

  @override
  String get common_yes => 'はい';

  @override
  String get common_no => 'いいえ';

  @override
  String get common_cancel => 'キャンセル';

  @override
  String get common_save => '保存';

  @override
  String get common_save_changes => '変更を保存';

  @override
  String get common_continue => '続ける';

  @override
  String get common_next => '次へ';

  @override
  String get auth_login => 'ログイン';

  @override
  String get auth_space_login => 'ログイン';

  @override
  String get auth_logout => 'ログアウト';

  @override
  String get auth_confirm_logout => '本当にログアウトしますか？';

  @override
  String get auth_signup => '新規登録';

  @override
  String get auth_create_account => 'アカウントを作成';

  @override
  String get auth_already_have_account => 'すでにアカウントをお持ちですか？ ';

  @override
  String get auth_no_account => 'アカウントをお持ちでないですか？';

  @override
  String get auth_forgot_password => 'パスワードをお忘れですか？';

  @override
  String get auth_reset_password => 'パスワードをリセットしますか？';

  @override
  String get auth_change_password => 'パスワードを変更';

  @override
  String get auth_continue => '続けることで、以下に同意します\n';

  @override
  String get auth_terms => '利用規約とプライバシーポリシー';

  @override
  String get auth_email => 'メールアドレス';

  @override
  String get auth_password => 'パスワード';

  @override
  String get auth_confirm_password => 'パスワードの確認';

  @override
  String get auth_new_password => '新しいパスワード';

  @override
  String get auth_confirm_new_password => '新しいパスワードの確認';

  @override
  String get auth_enter_email => 'メールアドレスを入力';

  @override
  String get auth_password_hint => 'パスワードを入力';

  @override
  String get full_name => '氏名';

  @override
  String get email_hint => 'example@gmail.com';

  @override
  String get name_hint => '山田太郎';

  @override
  String get required_name => '氏名は必須です';

  @override
  String get required_email => 'メールアドレスは必須です';

  @override
  String get email_end => 'メールアドレスは@gmail.comで終わる必要があります';

  @override
  String get required_password => 'パスワードは必須です';

  @override
  String get required_confirm_password => 'パスワードの確認は必須です';

  @override
  String get password_do_not_match => 'パスワードが一致しません';

  @override
  String get min_password => 'パスワードは8文字以上で数字を含む必要があります';

  @override
  String get send_verification_code => '確認コードを送信';

  @override
  String get password_changed_successfully => 'パスワードが\n正常に変更されました';

  @override
  String get forget_password_title =>
      'アカウントに関連付けられたメールアドレスを入力してください。パスワードリセット用のセキュリティPINをお送りします。';

  @override
  String get auth_security_pin => 'セキュリティPIN';

  @override
  String get auth_enter_pin => 'セキュリティPINを入力';

  @override
  String get verify => '確認';

  @override
  String auth_resend_pin(Object seconds) {
    return '$seconds秒後に再送信';
  }

  @override
  String get home_title => 'ホーム';

  @override
  String get home_welcome => 'こんにちは、おかえりなさい';

  @override
  String get home_good_morning => 'おはようございます';

  @override
  String get home_good_afternoon => 'こんにちは';

  @override
  String get home_good_evening => 'こんばんは';

  @override
  String get home_looks_good => '良好\nです';

  @override
  String get home_safety_score => '安全スコアの概要';

  @override
  String get home_total_accidents => '総事故数';

  @override
  String get total_active_cars => '稼働中の車両数';

  @override
  String get total_cars => '車両総数';

  @override
  String home_active_cars(Object percentage) {
    return 'あなたの車両の$percentage%が稼働中です';
  }

  @override
  String get car_section_title => '車両';

  @override
  String get car_view_all => '車両を表示';

  @override
  String get car_add => '車両を追加';

  @override
  String get car_edit => '車両を編集';

  @override
  String get car_name => '車両名';

  @override
  String get car_plate => 'ナンバープレート';

  @override
  String get car_type => '車両タイプ';

  @override
  String get car_driver_name => 'ドライバー名';

  @override
  String car_item_title(Object id) {
    return '車両 #$id';
  }

  @override
  String get tracking_live => 'リアルタイム追跡';

  @override
  String get tracking_last_updates => '最新の更新';

  @override
  String get event_title => '運転イベント';

  @override
  String get event_speeding => '速度超過';

  @override
  String get event_hard_braking => '急ブレーキ';

  @override
  String get event_aggressive_turns => '急カーブ';

  @override
  String get event_crash => '事故';

  @override
  String event_location(Object location) {
    return '$locationにて';
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
  String get event_severity => '深刻度';

  @override
  String get event_severity_low => '低';

  @override
  String get event_severity_medium => '中';

  @override
  String get event_severity_high => '高';

  @override
  String get event_severity_critical => '重大';

  @override
  String get event_reason => '理由';

  @override
  String get event_last_speed => '最後に記録された速度';

  @override
  String get notification_title => '通知';

  @override
  String get notification_today => '今日';

  @override
  String get notification_yesterday => '昨日';

  @override
  String get notification_earlier => '今週の初め';

  @override
  String get notification_fuel_alert => '燃料漏れアラート！';

  @override
  String notification_fuel_desc(Object car, Object driver) {
    return '$driverが運転する車両$carで燃料レベルの急激な低下が報告されました。';
  }

  @override
  String get notification_crash_alert => '重大な衝突が検出されました！';

  @override
  String notification_crash_desc(Object car, Object driver) {
    return '$driverが運転する車両$carで深刻な衝突が報告されました。';
  }

  @override
  String get profile_title => 'プロフィール';

  @override
  String get profile_edit => 'プロフィールを編集';

  @override
  String get update_profile => 'プロフィールを更新';

  @override
  String get user_name => 'ユーザー名';

  @override
  String get security_title => 'セキュリティ';

  @override
  String get change_password => 'パスワードを変更';

  @override
  String get settings_title => '設定';

  @override
  String get settings_notifications => '通知設定';

  @override
  String get settings_general_notifications => '一般通知';

  @override
  String get account_settings => 'アカウント設定';

  @override
  String get push_notification => 'プッシュ通知';

  @override
  String get dark_mode => 'ダークモードオン';

  @override
  String get help_title => 'ヘルプセンター';

  @override
  String get help_and_faq => 'ヘルプ & よくある質問';

  @override
  String get help_contact => 'お問い合わせ';

  @override
  String get help_faq => 'よくある質問';

  @override
  String get how_help => 'どのようにお手伝いできますか？';

  @override
  String get on_wh_num => 'WhatsApp番号にて';

  @override
  String get language => '言語';

  @override
  String get question1 => 'BlackBoxの使い方は？';

  @override
  String get answer1 =>
      'BlackBoxデバイスを車に取り付け、アプリにログインして運転を開始してください。アプリが自動的に運転データを記録・表示します。';

  @override
  String get question2 => 'BlackBoxの利用料金は？';

  @override
  String get answer2 => '料金は選択したプランとサービスによって異なります。詳しくは会社にお問い合わせください。';

  @override
  String get question3 => 'サポートへの連絡方法は？';

  @override
  String get answer3 => '会社の公式WhatsApp番号でサポートに連絡するか、営業時間中に会社のオフィスをご訪問ください。';

  @override
  String get question4 => 'パスワードを忘れた場合のリセット方法は？';

  @override
  String get answer4 => 'ログイン画面の「パスワードをお忘れですか？」を使用して、指示に従ってパスワードをリセットしてください。';

  @override
  String get question5 => 'プライバシーやデータセキュリティの対策はありますか？';

  @override
  String get answer5 =>
      'はい。お客様のデータは安全に保存・保護されており、法律で要求される場合を除き、許可なく共有されることはありません。';

  @override
  String get question6 => 'アプリの設定をカスタマイズできますか？';

  @override
  String get answer6 => 'はい。通知や設定などのカスタマイズが可能です。';

  @override
  String get question7 => 'アカウントを削除するには？';

  @override
  String get answer7 => 'アカウントを削除するには、WhatsApp経由で会社にご連絡いただくか、会社のオフィスをご訪問ください。';

  @override
  String get question8 => '分析履歴へのアクセス方法は？';

  @override
  String get answer8 => 'アプリの「履歴」または「分析」セクションで過去の旅行と運転分析を確認できます。';

  @override
  String get question9 => 'オフラインでアプリを使用できますか？';

  @override
  String get answer9 =>
      'アプリはオフラインで限定的な機能を持っています。データの同期とすべての機能へのアクセスにはインターネット接続が必要です。';

  @override
  String get terms_title => '利用規約';

  @override
  String get terms_accept => '利用規約に同意する';

  @override
  String get terms_full =>
      '1. 規約の承諾\nこのアプリケーションをインストールまたは使用することで、この利用規約に同意したものとみなします。同意しない場合は、アプリの使用を中止してください。\n\n2. アプリケーションの目的\nこのアプリケーションは、情報提供、安全管理、および分析目的のみのために、車両の性能と運転行動を監視するための車両ブラックボックスおよびテレマティクスシステムです。\n\n3. 収集されるデータパラメータ\nアプリケーションは以下を含むがこれに限定されない車両および運転データを収集・処理する場合があります：\n\n• 車両速度\n• 燃料消費量と燃料レベル\n• 加速と減速\n• 急ブレーキおよび急加速イベント\n• 急カーブ\n• GPS位置データ（緯度と経度）\n• 走行距離、時間、所要時間\n• ドライバーおよび車両識別データ\n\nアプリを使用することで、これらのパラメータの収集に明示的に同意したものとみなします。\n\n4. サービスの可用性\n技術的な制限により、アプリのリアルタイムまたはエラーのない継続的な動作は保証されません。';

  @override
  String get validation_password_mismatch => 'パスワードが一致しません';

  @override
  String get validation_invalid_phone => '無効な電話番号';

  @override
  String get validation_incorrect_pin => 'PINが正しくありません';

  @override
  String get validation_empty_fields => 'すべてのフィールドを入力してください';

  @override
  String get empty_no_cars => '車両が見つかりません';

  @override
  String get empty_no_notifications => '通知はまだありません';

  @override
  String get empty_no_events => '利用可能なイベントはありません';

  @override
  String get status_loading => '読み込み中...';

  @override
  String get status_success => '操作が成功しました';

  @override
  String get status_error => '問題が発生しました';

  @override
  String get confirm_delete_car => 'この車両を削除してもよろしいですか？';

  @override
  String get confirm_reset_password => 'パスワードをリセットしてもよろしいですか？';

  @override
  String get search => '検索';

  @override
  String get search_hint => '検索...';

  @override
  String get search_no_results => '結果が見つかりません';

  @override
  String get filter => 'フィルター';

  @override
  String get sort => '並べ替え';

  @override
  String get onboarding_title_1 => 'ようこそ';

  @override
  String get onboarding_desc_1 => 'Black Box マネージャーへ';

  @override
  String get onboarding_title_2 => 'あなたの運転の記録をご覧ください、';

  @override
  String get onboarding_desc_2 => 'すべての旅を記録し、すべてのキロメートルを分析します。';

  @override
  String get delete_car => '車を削除';

  @override
  String get sedan => 'セダン';

  @override
  String get heavy_duty => '大型車';

  @override
  String get current_password => '現在のパスワード';

  @override
  String get password_requirement => '8文字以上で、文字と数字の両方を含む必要があります。';

  @override
  String get current_password_is_not_correct => '現在のパスワードが正しくありません。';

  @override
  String get vehicle => '車両';

  @override
  String get driven_by => 'の運転手';

  @override
  String get report_fuel_level => '燃料レベルの急激な低下を報告しました。';

  @override
  String get report_collision_or_rollover => '重大な衝突または横転を報告しました（sos）。';

  @override
  String get report_overheating_or_dtc => 'エンジンの過熱またはDTCコードを検出しました。';

  @override
  String get unknown_driver => '不明な運転手';

  @override
  String get mechanical_failure => '機械的故障の警告！';

  @override
  String get critical_crash => '重大な衝突を検出！';

  @override
  String get fuel_leak => '燃料漏れの警告！';

  @override
  String get today => '今日';

  @override
  String get yesterday => '昨日';

  @override
  String get day => '日';

  @override
  String get days => '日';

  @override
  String get week => '週';

  @override
  String get weeks => '週';

  @override
  String get month => 'ヶ月';

  @override
  String get months => 'ヶ月';

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
    return '#$num年間';
  }

  @override
  String get since_two_years => '2年間';

  @override
  String get since_year => '1年間';

  @override
  String since_months(Object num) {
    return '#$numヶ月間';
  }

  @override
  String get since_two_months => '2ヶ月間';

  @override
  String get since_month => '1ヶ月間';

  @override
  String since_weeks(Object num) {
    return '#$num週間';
  }

  @override
  String get since_two_weeks => '2週間';

  @override
  String get since_week => '1週間';

  @override
  String since_days(Object num) {
    return '#$num日間';
  }

  @override
  String get since_two_days => '2日間';

  @override
  String get since_day => '1日間';

  @override
  String get view_driving_events => '運転イベントを表示';

  @override
  String get coolant_temp => 'クーラント温度';

  @override
  String get dtc_codes => 'DTCコード';

  @override
  String get road_bump => '段差';

  @override
  String get fuel_level => '燃料レベル';

  @override
  String get driving_behavior_score => '運転行動スコア';

  @override
  String get event_major_crashes => '重大な衝突';

  @override
  String get event_speeding_incident => '速度違反';

  @override
  String get driver_id => 'ドライバーID';

  @override
  String get more_details => '詳細';

  @override
  String get events => 'イベント';

  @override
  String get error_email_exists => 'このメールアドレスは既に使用されています';

  @override
  String get error_wrong_password => 'パスワードが正しくありません';

  @override
  String get error_phone_exists => 'この電話番号は既に使用されています';

  @override
  String get error_sp_ch => 'パスワードには少なくとも1つの特殊文字を含める必要があります';

  @override
  String get error_up => 'パスワードには少なくとも1つの大文字を含める必要があります';

  @override
  String get error_low => 'パスワードには少なくとも1つの小文字を含める必要があります';

  @override
  String get error_num => 'パスワードには少なくとも1つの数字を含める必要があります';

  @override
  String get error_required => 'このフィールドは必須です';

  @override
  String get error_invalid_email => '無効なメールアドレス';

  @override
  String error_password_short(Object length) {
    return 'パスワードは少なくとも$length文字以上である必要があります';
  }
}
