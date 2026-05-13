// Password validation (min 6 chars, at least 1 letter & 1 number)
bool isValidPassword(String password) {
  return RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$',
  ).hasMatch(password);
}
