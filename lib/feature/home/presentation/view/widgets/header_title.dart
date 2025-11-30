import 'package:demorental/core/extension/context.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/light_theme/light_colors.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: context.textTheme.bodyMedium),
        Text(
          context.locale.more,
          style: context.textTheme.bodyMedium?.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
