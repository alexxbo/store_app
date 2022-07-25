import 'package:formz/formz.dart';

const int _minTitleLength = 3;

enum TitleValidationError { empty, short, capitalize }

class TitleInput extends FormzInput<String, TitleValidationError> {
  const TitleInput.pure() : super.pure('');

  const TitleInput.dirty(String value) : super.dirty(value);

  @override
  TitleValidationError? validator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TitleValidationError.empty;
    }
    if (value[0].toUpperCase() != value[0]) {
      return TitleValidationError.capitalize;
    }

    if (value.length < _minTitleLength) {
      return TitleValidationError.short;
    }

    return null;
  }
}
