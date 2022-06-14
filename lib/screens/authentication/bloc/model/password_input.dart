import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

//TODO implement: make a stronger password
class PasswordInput extends FormzInput<String, PasswordValidationError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    return value != null && value.length < 5
        ? PasswordValidationError.invalid
        : null;
  }
}
