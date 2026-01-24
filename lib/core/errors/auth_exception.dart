class AuthException implements Exception {
  final String message;
  AuthException(this.message);
}

class EmailAlreadyExistsException extends AuthException {
  EmailAlreadyExistsException() : super("Email already exists");
}

class InvalidCredentialsException extends AuthException {
  InvalidCredentialsException() : super("Invalid email or password");
}
class InvalidEmailException extends AuthException {
  InvalidEmailException() : super("This email isn't registered !");
}

class UserBlockedException extends AuthException {
  UserBlockedException() : super("User is blocked");
}

class EmailHasAlreadyTakenException extends AuthException {
  EmailHasAlreadyTakenException() : super("Email is already used");
}

class PhoneHasAlreadyTakenException extends AuthException {
  PhoneHasAlreadyTakenException() : super("The phone number is used by other owner");
}

class NationalNumberHasAlreadyTakenException extends AuthException {
  NationalNumberHasAlreadyTakenException() : super("This ID is used before");
}

class InvalidOtpException extends AuthException {
  InvalidOtpException() : super("The Pin Code is invalid or expired !");
}
class InCompleteOtpException extends AuthException {
  InCompleteOtpException() : super("The Pin Code is incomplete !");
}
