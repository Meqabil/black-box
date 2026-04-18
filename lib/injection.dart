
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/auth/data/datasources/auth_datasource.dart';
import 'package:black_box/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';
import 'package:black_box/features/auth/domain/usecases/login_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/send_reset_password.dart';
import 'package:black_box/features/auth/domain/usecases/signup_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/verify_pin_usecase.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/signup/signup_cubit.dart';
import 'package:black_box/features/cars/data/datasources/car_datasource.dart';
import 'package:black_box/features/cars/data/repositories/car_repository_impl.dart';
import 'package:black_box/features/cars/domain/repositories/car_repository.dart';
import 'package:black_box/features/cars/domain/usecases/add_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/delete_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/get_all_cars_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/update_car_usecase.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/drivers/domain/usecases/add_driver_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/delete_driver_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/get_all_dirvers_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/update_driver_usecase.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:get_it/get_it.dart';

import 'features/auth/presentation/bloc/auth/login/login_cubit.dart';
import 'features/drivers/data/datasources/driver_datasource.dart';
import 'features/drivers/data/repositories/driver_repository_impl.dart';
import 'features/drivers/domain/repositories/driver_repository.dart';

final s1 = GetIt.instance;

Future<void> initAuthFeature() async{
  s1.registerFactory(
      () => LoginCubit(s1())
  );
  s1.registerFactory(
      () => SignUpCubit(s1())
  );

  s1.registerFactory(
      () => PasswordCubit(s1(), s1(), s1())
  );

  s1.registerFactory(
      () => CarCubit(s1(),s1(),s1(),s1())
  );

  s1.registerFactory(
      () => DriverCubit(s1(), s1(),s1(),s1())
  );

  s1.registerLazySingleton(() => LoginAsOwnerUseCase(s1()));
  s1.registerLazySingleton(() => SignUpUseCase(s1()));
  s1.registerLazySingleton(() => ResetPasswordUseCase(s1()));
  s1.registerLazySingleton(() => SendResetPasswordUseCase(s1()));
  s1.registerLazySingleton(() => VerifyPinUseCase(s1()));
  s1.registerLazySingleton(() => AddCarUseCase(s1()));
  s1.registerLazySingleton(() => DeleteCarUseCase(s1()));
  s1.registerLazySingleton(() => UpdateCarUseCase(s1()));
  s1.registerLazySingleton(() => GetAllCarsUseCase(s1()));
  s1.registerLazySingleton(() => AddDriverUseCase(s1()));
  s1.registerLazySingleton(() => UpdateDriverUseCase(s1()));
  s1.registerLazySingleton(() => DeleteDriverUseCase(s1()));
  s1.registerLazySingleton(() => GetAllDriversUseCase(s1()));

  s1.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(s1()));
  s1.registerLazySingleton<CarRepository>(() => CarRepositoryImpl(s1()));
  s1.registerLazySingleton<DriverRepository>(() => DriverRepositoryImpl(s1()));

  s1.registerLazySingleton(() => AuthDatasource(dio));
  s1.registerLazySingleton(() => CarDataSource());
  s1.registerLazySingleton(() => DriverDataSource());

}