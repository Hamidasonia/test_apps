import 'package:test_apps/core/core.dart';
import 'package:formz/formz.dart';

enum UsernameValidationError { invalid }

class UsernameFormZ extends FormzInput<String, UsernameValidationError> {
  const UsernameFormZ.pure() : super.pure('');
  const UsernameFormZ.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameValidationError? validator(String? value) {
    return !Validators.isValidUsername(value ?? '') &&
        value != null &&
        value.isNotEmpty
        ? UsernameValidationError.invalid
        : null;
  }
}