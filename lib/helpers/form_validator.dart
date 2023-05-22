import 'package:rentico/helpers/ui_helper.dart';

class FormValidator {
  FormValidator._();

  static bool isNameValid(name) {
    return !UIHelper.isStringNOE(name);
  }

  static bool isEmailValid(email) {
    return !UIHelper.isStringNOE(email) &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(email);
  }

  static bool isPhoneValid(phone) {
    return !UIHelper.isStringNOE(phone) &&
        RegExp(r'(^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[6789]\d{9}$)')
            .hasMatch(phone);
  }

  static bool isPinCodeValid(phone) {
    return !UIHelper.isStringNOE(phone) &&
        RegExp(r'^[1-9][0-9]{5}$').hasMatch(phone);
  }
}
