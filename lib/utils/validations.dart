

import 'package:sandyfarm/splash/splash.dart';
import 'package:sandyfarm/utils/strings.dart';

enum Validations {
  EMAIL,
  EMAIL_PHONE,
  PHONE,
  NAME,
  PASSWORD,
  OLD_PASSWORD,
  NEW_PASSWORD,
  CONFIRM_PASSWORD,
  CUSTOMER_ID,
  LOGIN_PASSWORD,
  VIN_NUMBER,
  VEHICLE_MAKE,
  VEHICLE_MODEL,
  DATE,
  YEAR,
  CURRENCY,
  LICENSE
}

String validatePhone(String value) {
  Pattern pattern = r'(^(?:[+0]9)?[0-9]{8,14}$)';
  RegExp regex = new RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyPhone;
  } else if (!regex.hasMatch(value))
    return Strings.of(Application.getContext()).invalidPhone;
  else
    return null;
}
String validateEmailOrPhone(String value) {
  if (value == null || value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyEmailOrPhone;
  } else
    return null;
}
String validateName(String value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return Strings.of(Application.getContext()).emptyName;
  } else if (value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyName;
  } else if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidName;
  } else
    return null;
}

String validateFirstName(String value) {
  String pattern = r'(^[a-zA-Z]*$)';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return Strings.of(Application.getContext()).emptyFirstName;
  } else if (value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyFirstName;
  } else if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidFirstName;
  } else
    return null;
}

String validateLastName(String value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return Strings.of(Application.getContext()).emptyLastName;
  } else if (value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyLastName;
  } else if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidLastName;
  } else
    return null;
}

String validateAddress(String value) {
  if (value == null || value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyAddress;
  } else
    return null;
}

String validateZipCode(String value) {
  String pattern = r'(^[0-9]{1,}$)';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return Strings.of(Application.getContext()).emptyZipCode;
  } else if (value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyZipCode;
  } else if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidZipCode;
  } else
    return null;
}

String validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,3}))$';
  RegExp regExp = new RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyEmail;
  } else if (!regExp.hasMatch(value)) {
    return Strings.of(Application.getContext()).invalidEmail;
  } else
    return null;
}

// ignore: missing_return
String validatePassword(String value, Validations type) {
  String pattern =
      r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=?])(?=\S+$).{8,}$';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.isEmpty) {
    switch (type) {
      case Validations.PASSWORD:
        return Strings.of(Application.getContext()).emptyPassword;
        break;
      case Validations.LOGIN_PASSWORD:
        return Strings.of(Application.getContext()).emptyPassword;
        break;
      case Validations.OLD_PASSWORD:
        return Strings.of(Application.getContext()).emptyOldPassword;
        break;
      case Validations.NEW_PASSWORD:
        return Strings.of(Application.getContext()).emptyNewPassword;
        break;
      default:
        Strings.of(Application.getContext()).emptyPassword;
    }
  } else if (!regExp.hasMatch(value)) {
    switch (type) {
      case Validations.PASSWORD:
        return Strings.of(Application.getContext()).invalidPassword;
        break;
      case Validations.LOGIN_PASSWORD:
        return Strings.of(Application.getContext()).invalidLoginPassword;
        break;
      case Validations.OLD_PASSWORD:
        return Strings.of(Application.getContext()).invalidOldPassword;
        break;
      case Validations.NEW_PASSWORD:
        return Strings.of(Application.getContext()).invalidNewPassword;
        break;
      default:
        Strings.of(Application.getContext()).invalidPassword;
    }
  } else
    return null;
}

String validateDate(String value, String month) {
  print("29date $month");
  String pattern = r'(^[0-9]{1,2}$)';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyDay;
  } else if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidDay;
  } else if (month == "02" && int.parse(value.trim()) > 29) {
    print("29date");
    return Strings.of(Application.getContext()).invalidDay;
  } else if (int.parse(value.trim()) > 31) {
    return Strings.of(Application.getContext()).invalidDay;
  } else
    return null;
}

String validateYear(String value) {
  String pattern = r'(^[0-9]{4,4}$)';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyYear;
  } else if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidYear;
  } else
    return null;
}

String validateDropdown(String value) {
  if (value == null) {
    return Strings.of(Application.getContext()).emptyDropdown;
  } else if (value.trim().isEmpty) {
    return Strings.of(Application.getContext()).emptyDropdown;
  } else
    return null;
}

String validateDependantFirstName(String value) {
  String pattern = r'(^[a-zA-Z]*$)';
  RegExp regExp = RegExp(pattern);
  if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidFirstName;
  } else
    return null;
}

String validateDependantLastName(String value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (!regExp.hasMatch(value.trim())) {
    return Strings.of(Application.getContext()).invalidLastName;
  } else
    return null;
}
