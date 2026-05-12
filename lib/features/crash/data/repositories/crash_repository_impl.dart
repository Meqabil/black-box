import 'package:black_box/features/crash/data/datasources/crash_datasource.dart';
import 'package:black_box/features/crash/domain/repositories/crash_repository.dart';

class CrashRepositoryImpl extends CrashRepository{
  CrashDataSource crashDataSource;
  CrashRepositoryImpl(this.crashDataSource);
  @override
  deleteCrash(int id) {
    crashDataSource.deleteCrash(id);
  }

  @override
  getAllCrashes() {
    return crashDataSource.getAllCrashes();
  }

}