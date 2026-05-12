

import 'package:black_box/features/settings/data/datasources/language_local_data_source.dart';
import 'package:black_box/features/settings/domain/repositories/language_repository.dart';

class LanguageRepositoryImpl extends LanguageRepository{
  final LanguageDataSource languageDataSource;
  LanguageRepositoryImpl(this.languageDataSource);
  @override
  Future<void> changeLanguage(String langCode) async{
    await languageDataSource.cacheLanguage(langCode);
  }

  @override
  Future<String?> getSavedLanguage() async{
    return languageDataSource.getCachedLanguage();
  }

}