import 'package:auto_route/annotations.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:demorental/feature/upgrade_plans/presentation/view/widgets/upgrade_plans_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UpgradePlansPage extends StatelessWidget {
  const UpgradePlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBarColor: AppColors.primaryColor,
      title: context.locale.upgradePlans,
      child: UpgradePlansBody(),
    );
  }
}
