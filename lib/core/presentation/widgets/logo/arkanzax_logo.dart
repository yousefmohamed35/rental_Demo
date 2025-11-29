import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';

import '../../../utilities/light_theme/light_colors.dart';

class ArkanzaxLogo extends StatelessWidget {
  const ArkanzaxLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'ARKAN',
                style: context.textTheme.labelSmall?.copyWith(
                  letterSpacing: 15,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.toFont,
                  color: Color(0xff0a5282),
                ),
              ),
              TextSpan(
                text: 'ZAX',
                style: context.textTheme.labelSmall?.copyWith(
                  letterSpacing: 15,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.toFont,
                  color: AppColors.warningColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
