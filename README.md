

# My Extensions

This package provides a set of helpful extensions for Flutter projects, including regex constants, context-related extensions, and string validation extensions. These extensions are designed to streamline common tasks and make your Flutter development process more efficient.

## Features

- **Regex Constants**: Commonly used regular expressions for email validation, password validation, number-only strings, URLs, and more.
- **Context Extensions**: Simplify access to `MediaQuery`, `Theme`, `Padding`, and other context-related properties.
- **String Extensions**: Easy-to-use methods for string validation, including email and password validation.

## Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  your_package_name:
    git:
      url: https://github.com/Ceren-Canbaz/myextensions.git
```

Then, run:

```bash
flutter pub get
```

## Usage

### Regex Constants

The `RegexConstants` class provides commonly used regular expressions.

```dart
import 'package:your_package_name/constants.dart';

void main() {
  print(RegexConstants.EMAIL_REGEX);  // Prints the regex for validating emails
}
```

### Context Extensions

Use these extensions to easily access media query properties, theme data, and padding values.

```dart
import 'package:flutter/material.dart';
import 'package:your_package_name/extensions/context_extension.dart';

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.allPaddingNormal,  // Access padding based on screen height
        child: Text(
          'Hello, World!',
          style: context.textTheme.headline4,  // Access text theme styles easily
        ),
      ),
    );
  }
}
```

#### Available Context Extensions

- **MediaQuery Extension**:
  - `context.height`: Returns screen height.
  - `context.width`: Returns screen width.
  - `context.lowValue`: Returns a small fraction of the screen height.
  - `context.normalValue`: Returns a normal fraction of the screen height.
  - `context.mediumValue`: Returns a medium fraction of the screen height.
  - `context.highValue`: Returns a large fraction of the screen height.

- **Theme Extension**:
  - `context.theme`: Access the current `ThemeData`.
  - `context.textTheme`: Access the current `TextTheme`.
  - `context.colors`: Access the current `ColorScheme`.

- **Padding Extension**:
  - `context.allPaddingLow`: Returns low padding for all sides.
  - `context.allPaddingNormal`: Returns normal padding for all sides.
  - `context.allPaddingMedium`: Returns medium padding for all sides.
  - `context.allPaddingHigh`: Returns high padding for all sides.
  - Similar extensions for horizontal and vertical padding.

### String Extensions

The `StringExtension` class provides validation methods to check if a string is a valid email, a valid password, or if it is not empty.

```dart
import 'package:your_package_name/extensions/string_extension.dart';

void main() {
  String email = "test@example.com";
  bool isEmailValid = email.isValidEmail;  // Returns true if the email is valid

  String password = "Password123";
  bool isPasswordValid = password.isValidPassword;  // Returns true if the password is valid
}
```
## Contributing

If you'd like to contribute, feel free to fork the repository and submit a pull request. Issues and feature requests are also welcome!
