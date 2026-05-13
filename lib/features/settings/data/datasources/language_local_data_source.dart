
import '../../../../core/constants/global.dart';

class LanguageDataSource{
  Future<void> cacheLanguage(String langCode) async {
    await pref!.setString('lang', langCode);
  }

  String? getCachedLanguage() {
    return pref!.getString('lang');
  }
}