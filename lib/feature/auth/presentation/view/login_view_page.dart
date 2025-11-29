import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/shared/language_button.dart';

@RoutePage()
class LoginViewPage extends StatelessWidget {
  const LoginViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: const [LanguageButton()],
        ),
    );
    
  }
}
