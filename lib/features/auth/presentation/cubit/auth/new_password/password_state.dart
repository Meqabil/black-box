sealed class PasswordState{}

class InitialPassword extends PasswordState{}
class LoadingPassword extends PasswordState{}
class SuccessPassword extends PasswordState{
  String message;
  SuccessPassword(this.message);
}
class FailurePassword extends PasswordState{
  String message;
  FailurePassword(this.message);
}


class FailedToChangePassword extends PasswordState{
  String message;
  FailedToChangePassword(this.message);
}

class SuccessToChangePassword extends PasswordState{}