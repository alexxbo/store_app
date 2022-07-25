import 'package:formz/formz.dart';

enum ImageUrlValidationError { empty, invalidUrl, invalidFormat }

class ImageUrlInput extends FormzInput<String, ImageUrlValidationError> {
  const ImageUrlInput.pure() : super.pure('');

  const ImageUrlInput.dirty(String value) : super.dirty(value);

  @override
  ImageUrlValidationError? validator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return ImageUrlValidationError.empty;
    }

    if (!value.startsWith('http') && !value.startsWith('https')) {
      return ImageUrlValidationError.invalidFormat;
    }

    if (!value.endsWith('.png') &&
        !value.endsWith('.jpg') &&
        !value.endsWith('.jpeg')) {
      return ImageUrlValidationError.invalidUrl;
    }

    return null;
  }
}
