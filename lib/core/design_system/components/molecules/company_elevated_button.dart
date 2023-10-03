import 'package:flutter/material.dart';
import 'package:login_example/modules/login/login_page_controller.dart';

class CompanyButton extends StatelessWidget {
  const CompanyButton({
    super.key,
    required this.loginPageController,
  });

  final LoginPageController loginPageController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        loginPageController.setCounter(10);
      },
      child: Text('Contador ${loginPageController.rxCounter.value}'),
    );
  }
}
