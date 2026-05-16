import 'package:black_box/features/crash/domain/repositories/crash_repository.dart';

class ShowAllCrashesUseCase{
  final CrashRepository crashRepository;
  ShowAllCrashesUseCase(this.crashRepository);
  call(){
    return crashRepository.getAllCrashes();
  }
}