// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';

// import '../core/validators/company_validations.dart';
// import '../modules/login_page.dart';

// abstract class LoginPageViewModel extends State<LoginPage> {
//   final formKey = GlobalKey<FormBuilderState>();
//   final companyValidators = CompanyValidators();

//   String? Function(String?) emailValidationCompose(String? value) {
//     return FormBuilderValidators.compose([
//       FormBuilderValidators.required(),
//       FormBuilderValidators.email(),
//       (value) => companyValidators.gmailNotAllowedValidation(value),
//     ]);
//   }

//   void onChangedEmail(String? value) {}
// }
