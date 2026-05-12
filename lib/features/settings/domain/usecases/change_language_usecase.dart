import 'package:black_box/features/settings/domain/repositories/language_repository.dart';

class ChangeLanguageUseCase{
  final LanguageRepository _languageRepository;
  ChangeLanguageUseCase(this._languageRepository);

  call(String langCode){
    return _languageRepository.changeLanguage(langCode);
  }
}