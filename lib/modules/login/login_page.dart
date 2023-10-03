import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:login_example/core/design_system/components/molecules/company_elevated_button.dart';
import 'package:login_example/modules/login/login_page_controller.dart';
import 'package:rx_notifier/rx_notifier.dart';

class LoginPage extends StatefulWidget {
  final LoginPageController loginPageController;
  const LoginPage({
    super.key,
    required this.loginPageController,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext _) {
    return RxBuilder(
      builder: (_) {
        return Scaffold(
          body: FormBuilder(
            key: widget.loginPageController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Contador ${widget.loginPageController.rxCounter.value}'),
                CompanyButton(loginPageController: widget.loginPageController),
                const SizedBox(height: 64),
                FormBuilderTextField(
                  name: 'email',
                  initialValue: 'example@gmail.com',
                  onChanged: (value) {
                    widget.loginPageController.onChangedEmail(value);
                  },
                  validator: (value) {
                    return widget.loginPageController
                        .emailValidationCompose(value)(value);
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.loginPageController.formKey.currentState
                        ?.saveAndValidate();
                  },
                  child: const Text('Cadastro'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
