import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:login_example/core/validators/company_validators.dart';
import 'package:rx_notifier/rx_notifier.dart';

class LoginPageController {
  final rxCounter = RxNotifier<int>(0);
  void setCounter(int value) {
    rxCounter.value = rxCounter.value + value;
  }

  final formKey = GlobalKey<FormBuilderState>();
  final companyValidators = CompanyValidators();

  String? Function(String?) emailValidationCompose(String? value) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.email(),
      (value) => companyValidators.gmailNotAllowedValidation(value),
      companyValidators.required(value),
    ]);
  }

  void onChangedEmail(String? value) {}
}
