import 'package:black_box/features/auth/domain/entities/owner_entity.dart';

sealed class LoginState {

}

class LoginInitial extends LoginState{}
class LoginLoading extends LoginState{}
class LoginSuccess extends LoginState{
  final OwnerEntity owner;
  LoginSuccess(this.owner);
}
class LoginFailure extends LoginState{
  String message;
  LoginFailure(this.message);
}
