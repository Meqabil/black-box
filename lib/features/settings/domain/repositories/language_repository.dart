

abstract class LanguageRepository{
  Future<void> changeLanguage(String langCode);
  Future<String?> getSavedLanguage();
}