import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilities/light_theme/light_colors.dart';

class PowredByArkanzaxWidget extends StatelessWidget {
  const PowredByArkanzaxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Text(
          context.locale.powered,
          style: context.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16.toFont,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(width: 3),
        Text(
          context.locale.by,
          style: context.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16.toFont,
          ),
        ),
        const SizedBox(width: 3),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'ARKAN',
                style: context.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.toFont,
                  color: Color(0xff0a5282),
                ),
              ),
              TextSpan(
                text: 'ZAX',
                style: context.textTheme.labelSmall?.copyWith(
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
