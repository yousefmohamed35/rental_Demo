import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/themeing/themes_contants.dart';
import '../../../../../../core/presentation/widgets/logo/arkanzax_logo.dart';


class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ArkanzaxLogo(),
                   Text(
                          context.locale.login,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontFamily: ThemesConstant.cairoFontFamily,
                          ),
                        ),
                        64.toHeight.verticalSpace,
                ],
              ),
            ),
          ),
          SizedBox(height: 20.toHeight),
        ],
      ),
    );
  }
}

