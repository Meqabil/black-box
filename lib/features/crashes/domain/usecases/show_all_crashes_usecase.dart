import 'package:black_box/features/crashes/domain/repositories/crash_repository.dart';

class ShowAllCrashesUseCase{
  final CrashRepository crashRepository;
  ShowAllCrashesUseCase(this.crashRepository);
  call(String type){
    return crashRepository.getAllCrashes(type);
  }
}