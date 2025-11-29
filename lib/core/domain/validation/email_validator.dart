extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension NameValidator on String {
  bool isInvalidName() {
    /// Check unicode categories in Regex:
    /// https://www.regular-expressions.info/unicode.html#category
    return contains(RegExp(r'\p{N}|\p{S}|\p{M}|\p{P}', unicode: true));
  }

  bool isValidName() {
    return RegExp(r'^[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FFa-zA-Z\s]+$')
        .hasMatch(this);
  }

  bool isNotEnglish() {
    return !RegExp(r'(^[a-zA-Z\s]+$)').hasMatch(this);
  }
}