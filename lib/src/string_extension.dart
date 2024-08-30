import 'package:extensions/src/constants.dart';

extension StringExtension on String {
  bool get isValidEmail => contains(
        RegExp(
          RegexConstants.EMAIL_REGEX,
        ),
      )
          ? true
          : false;

  bool get isValidPassword =>
      contains(RegExp(RegexConstants.PASSWORD_REGEX)) ? true : false;

  bool get isNotNullOrEmpty => isNotEmpty;
}
