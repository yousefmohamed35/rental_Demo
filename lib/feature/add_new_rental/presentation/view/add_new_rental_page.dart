
import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/light_theme/light_colors.dart';

@RoutePage()
class AddNewRentalPage extends StatelessWidget {
  const AddNewRentalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
       backgroundColor: AppColors.scaffoldBackgroundColor,
      appBarColor: AppColors.primaryColor,
      child: Text('data'));
  }
}