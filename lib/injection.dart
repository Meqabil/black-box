
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
import 'package:get_it/get_it.dart';

import 'features/auth/presentation/bloc/auth/login/login_cubit.dart';

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

  s1.registerLazySingleton(() => LoginAsOwnerUseCase(s1()));
  s1.registerLazySingleton(() => SignUpUseCase(s1()));
  s1.registerLazySingleton(() =>ResetPasswordUseCase(s1()));
  s1.registerLazySingleton(() =>SendResetPasswordUseCase(s1()));
  s1.registerLazySingleton(() =>VerifyPinUseCase(s1()));

  s1.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(s1()));

  s1.registerLazySingleton(() => AuthDatasource(dio));

}