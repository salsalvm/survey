class CustomRegex {
  static bool isValidName(String name) {
    final RegExp nameRegex = RegExp(r'^[a-zA-Z][\w\s]*[a-zA-Z0-9]$');
    return nameRegex.hasMatch(name);
  }

  static bool isValidMobileNumber(String number) {
    final RegExp mobileRegex = RegExp(r'^[1-9]\d{5,14}$');
    return mobileRegex.hasMatch(number);
  }
  static bool isValidEmail(String email) {
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  return emailRegex.hasMatch(email);
}

}