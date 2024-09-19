import 'package:test_apps/core/core.dart';
import 'package:formz/formz.dart';

enum WalletValidationError { invalid }

class WalletFormZ extends FormzInput<String, WalletValidationError> {
  const WalletFormZ.pure() : super.pure('');
  const WalletFormZ.dirty([String value = '']) : super.dirty(value);

  @override
  WalletValidationError? validator(String? value) {
    return !Validators.isValidPhoneNumber(value ?? '') &&
            (value ?? '').length < 5 &&
            value != null &&
            value.isNotEmpty
        ? WalletValidationError.invalid
        : null;
  }
}
