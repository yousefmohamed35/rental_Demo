import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/light_theme/light_colors.dart';
import 'widgets/add_new_rental_page_body.dart';

@RoutePage()
class AddNewRentalPage extends StatelessWidget {
  const AddNewRentalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: context.locale.addNew,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBarColor: AppColors.primaryColor,
      child: AddNewRentalPageBody(),
    );
  }
}
