import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

/// MVC
class CompanyValidators {
  String? gmailNotAllowedValidation(String? value) {
    if (value?.contains('@gmail') ?? false) {
      return 'Extensões contendo @gmail não são válidos nesta plataforma!';
    }
    return null;
  }

  FormFieldValidator required(String? value) {
    return FormBuilderValidators.required();
  }
}
