import 'package:formz/formz.dart';

enum NIKValidationError { invalid }

class NIKFormZ extends FormzInput<String, NIKValidationError> {
  const NIKFormZ.pure() : super.pure('');
  const NIKFormZ.dirty([String value = '']) : super.dirty(value);

  @override
  NIKValidationError? validator(String? value) {
    return (value ?? '').length <= 10 && value != null && value.isNotEmpty
        ? NIKValidationError.invalid
        : null;
  }
}
