import 'package:auto_route/annotations.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/light_theme/light_colors.dart';

@RoutePage()
class RemindersPage extends StatelessWidget {
  const RemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBarColor: AppColors.primaryColor,
      title: context.locale.reminders,
      child: Text('reminders'),
    );
  }
}
