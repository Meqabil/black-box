import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/settings/domain/usecases/change_language_usecase.dart';
import 'package:black_box/features/settings/domain/usecases/get_saved_language_usecase.dart';
import 'package:black_box/features/settings/presentation/cubit/language_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<LanguageState> {
  final ChangeLanguageUseCase changeLanguageUseCase;
  final GetSavedLanguageUseCase getSavedLanguageUseCase;
  LanguageCubit(this.changeLanguageUseCase,this.getSavedLanguageUseCase) : super(LanguageState(Locale('en')));


  Future<void> getSavedLanguage() async {
    final langCode = await getSavedLanguageUseCase();
    if (langCode != null) {
      emit(LanguageState(Locale(langCode)));
    }
  }
  void changeLanguage(String langCode) async {
    await changeLanguageUseCase(langCode);
    emit(LanguageState(Locale(langCode)));
  }
}