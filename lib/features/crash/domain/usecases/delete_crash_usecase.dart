import 'package:black_box/features/drivers/domain/repositories/driver_repository.dart';

import '../repositories/crash_repository.dart';

class DeleteCrashUseCase {
  final CrashRepository _crashRepository;
  DeleteCrashUseCase(this._crashRepository);

  call(int id){
    _crashRepository.deleteCrash(id);
  }
}