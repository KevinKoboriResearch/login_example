// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';

// import 'login_page_viewmodel.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends LoginPageViewModel {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FormBuilder(
//       key: formKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           FormBuilderTextField(
//             name: 'email',
//             onChanged: (value) {
//               onChangedEmail(value);
//             },
//             validator: (value) {
//               return emailValidationCompose(value)(value);
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               formKey.currentState?.saveAndValidate();
//             },
//             child: const Text('Signup'),
//           )
//         ],
//       ),
//     ));
//   }
// }
