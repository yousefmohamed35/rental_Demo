
import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/light_theme/light_colors.dart';
@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
       padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBarColor: AppColors.primaryColor,
      title: context.locale.settings,
      child: Text('data'));
  }
}