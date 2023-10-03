import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:login_example/app_module.dart';
import 'package:login_example/app_widget.dart';

main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
