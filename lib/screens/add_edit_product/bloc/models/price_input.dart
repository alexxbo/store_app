import 'package:formz/formz.dart';

enum PriceValidationError { small, invalid }

class PriceInput extends FormzInput<String, PriceValidationError> {
  const PriceInput.pure() : super.pure('0.0');

  const PriceInput.dirty(String value) : super.dirty(value);

  @override
  PriceValidationError? validator(String? value) {
    if (value == null ||
        value.trim().isEmpty ||
        double.tryParse(value) == null) {
      return PriceValidationError.invalid;
    }
    assert(double.tryParse(value) != null, 'return null for invalid inputs');
    if (double.tryParse(value)! <= 0.0) {
      return PriceValidationError.small;
    }

    return null;
  }
}
