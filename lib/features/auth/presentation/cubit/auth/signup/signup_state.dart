import 'package:black_box/features/auth/domain/entities/owner_entity.dart';

sealed class SignUpState{}

class InitialSignUp extends SignUpState{}

class LoadingSignUp extends SignUpState{}

class SuccessSignUp extends SignUpState{
  OwnerEntity owner;
  SuccessSignUp(this.owner);
}
class FailureSignUp extends SignUpState{
  String message;
  FailureSignUp(this.message);
}