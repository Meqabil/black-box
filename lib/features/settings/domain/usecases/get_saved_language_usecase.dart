import '../repositories/language_repository.dart';

class GetSavedLanguageUseCase{
  final LanguageRepository _languageRepository;
  GetSavedLanguageUseCase(this._languageRepository);

  call(){
    return _languageRepository.getSavedLanguage();
  }
}