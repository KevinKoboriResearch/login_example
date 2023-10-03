import 'package:flutter_modular/flutter_modular.dart';
import 'package:login_example/modules/login/login_page.dart';
import 'package:login_example/modules/login/login_page_controller.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.add<LoginPageController>(() => LoginPageController());
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => LoginPage(
        loginPageController: Modular.get<LoginPageController>(),
      ),
    );
    // r.child(
    //   '/home',
    //   child: (context) => HomePage(
    //     HomePageController: Modular.get<HomePageController>(),
    //   ),
    // );
    // ...
  }
}
