import 'package:formz/formz.dart';

const int _minDescLength = 10;

enum DescriptionValidationError { empty, short, capitalize }

class DescriptionInput extends FormzInput<String, DescriptionValidationError> {
  const DescriptionInput.pure() : super.pure('');

  const DescriptionInput.dirty(String value) : super.dirty(value);

  @override
  DescriptionValidationError? validator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return DescriptionValidationError.empty;
    }
    if (value[0].toUpperCase() != value[0]) {
      return DescriptionValidationError.capitalize;
    }

    if (value.length < _minDescLength) {
      return DescriptionValidationError.short;
    }

    return null;
  }
}
