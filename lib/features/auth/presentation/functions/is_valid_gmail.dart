// Email validation (Gmail only)
bool isValidGmail(String email) {
  return RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(email);
}