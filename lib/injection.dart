
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/auth/data/datasources/owner_datasource.dart';
import 'package:black_box/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';
import 'package:black_box/features/auth/domain/usecases/change_password_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/login_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/send_reset_password.dart';
import 'package:black_box/features/auth/domain/usecases/show_owner_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/signup_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/verify_pin_usecase.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/signup/signup_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/owner/owner_cubit.dart';
import 'package:black_box/features/cars/data/datasources/car_datasource.dart';
import 'package:black_box/features/cars/data/repositories/car_repository_impl.dart';
import 'package:black_box/features/cars/domain/repositories/car_repository.dart';
import 'package:black_box/features/cars/domain/usecases/add_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/add_car_with_driver_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/delete_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/delete_car_with_driver_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/get_all_cars_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/update_car_usecase.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/crash/data/datasources/crash_datasource.dart';
import 'package:black_box/features/crash/data/repositories/crash_repository_impl.dart';
import 'package:black_box/features/crash/domain/usecases/delete_crash_usecase.dart';
import 'package:black_box/features/crash/domain/usecases/show_all_crashs_usecase.dart';
import 'package:black_box/features/crash/presentation/cubit/crash_cubit.dart';
import 'package:black_box/features/drivers/domain/usecases/add_driver_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/delete_driver_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/get_all_dirvers_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/show_one_driver.dart';
import 'package:black_box/features/drivers/domain/usecases/update_driver_usecase.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/notifications/data/datasources/notification_datasource.dart';
import 'package:black_box/features/notifications/data/repositories/notification_repository_impl.dart';
import 'package:black_box/features/notifications/domain/repositories/notification_repository.dart';
import 'package:black_box/features/notifications/domain/usecases/get_notifications_usecase.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_cubit.dart';
import 'package:black_box/features/settings/data/datasources/language_local_data_source.dart';
import 'package:black_box/features/settings/data/repositories/language_repository_impl.dart';
import 'package:black_box/features/settings/domain/repositories/language_repository.dart';
import 'package:black_box/features/settings/domain/usecases/change_language_usecase.dart';
import 'package:black_box/features/settings/domain/usecases/get_saved_language_usecase.dart';
import 'package:black_box/features/settings/presentation/cubit/language_cubit.dart';
import 'package:get_it/get_it.dart';

import 'features/auth/data/datasources/auth_datasource.dart';
import 'features/auth/domain/usecases/delete_owner_usecase.dart';
import 'features/auth/domain/usecases/update_owner.dart';
import 'features/auth/presentation/cubit/auth/login/login_cubit.dart';
import 'features/crash/domain/repositories/crash_repository.dart';
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
      () => OwnerCubit(s1(),s1(),s1())
  );

  s1.registerFactory(
      () => PasswordCubit(s1(), s1(), s1(),s1())
  );

  s1.registerFactory(
      () => CarCubit(s1(),s1(),s1(),s1(),s1(),s1())
  );

  s1.registerFactory(
      () => DriverCubit(s1(), s1(),s1(),s1(),s1())
  );

  s1.registerFactory(
      () => NotificationCubit(s1(),)
  );

  s1.registerFactory(
      () => CrashCubit(s1(),s1())
  );
  s1.registerFactory(
      () => LanguageCubit(s1(),s1())
  );

  s1.registerLazySingleton(() => LoginAsOwnerUseCase(s1()));
  s1.registerLazySingleton(() => SignUpUseCase(s1()));
  s1.registerLazySingleton(() => ResetPasswordUseCase(s1()));
  s1.registerLazySingleton(() => ChangePasswordUseCase(s1()));
  s1.registerLazySingleton(() => SendResetPasswordUseCase(s1()));
  s1.registerLazySingleton(() => VerifyPinUseCase(s1()));

  s1.registerLazySingleton(() => ShowOwnerUseCase(s1()));
  s1.registerLazySingleton(() => UpdateOwnerUseCase(s1()));
  s1.registerLazySingleton(() => DeleteOwnerUseCase(s1()));

  s1.registerLazySingleton(() => AddCarUseCase(s1()));
  s1.registerLazySingleton(() => AddCarWithDriverUseCase(s1(),s1()));
  s1.registerLazySingleton(() => DeleteCarUseCase(s1()));
  s1.registerLazySingleton(() => DeleteCarWithDriverUseCase(s1(),s1()));
  s1.registerLazySingleton(() => UpdateCarUseCase(s1()));
  s1.registerLazySingleton(() => GetAllCarsUseCase(s1()));
  s1.registerLazySingleton(() => AddDriverUseCase(s1()));
  s1.registerLazySingleton(() => UpdateDriverUseCase(s1()));
  s1.registerLazySingleton(() => DeleteDriverUseCase(s1()));
  s1.registerLazySingleton(() => ShowOneDriverUseCase(s1()));
  s1.registerLazySingleton(() => GetAllDriversUseCase(s1()));

  s1.registerLazySingleton(() => GetNotificationsUseCase(s1()));

  s1.registerLazySingleton(() => ShowAllCrashesUseCase(s1()));
  s1.registerLazySingleton(() => DeleteCrashUseCase(s1()));


  s1.registerLazySingleton(() => GetSavedLanguageUseCase(s1()));
  s1.registerLazySingleton(() => ChangeLanguageUseCase(s1()));

  s1.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(s1(),s1()));
  s1.registerLazySingleton<CarRepository>(() => CarRepositoryImpl(s1()));
  s1.registerLazySingleton<DriverRepository>(() => DriverRepositoryImpl(s1()));
  s1.registerLazySingleton<NotificationRepository>(() => NotificationRepositoryImpl(s1()));
  s1.registerLazySingleton<CrashRepository>(() => CrashRepositoryImpl(s1()));
  s1.registerLazySingleton<LanguageRepository>(() => LanguageRepositoryImpl(s1()));

  s1.registerLazySingleton(() => AuthDatasource());
  s1.registerLazySingleton(() => OwnerDataSource());
  s1.registerLazySingleton(() => CarDataSource());
  s1.registerLazySingleton(() => DriverDataSource());
  s1.registerLazySingleton(() => NotificationDataSource());
  s1.registerLazySingleton(() => CrashDataSource());
  s1.registerLazySingleton(() => LanguageDataSource());

}