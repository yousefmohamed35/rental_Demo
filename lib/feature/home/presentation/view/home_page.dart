import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:demorental/core/services/core_utilis/app_sevices.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:demorental/feature/home/presentation/view/widgets/add_new_method_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'widgets/home_page_body.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBarColor: AppColors.primaryColor,
      title: 'home',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          AppServices.showDefaultModalSheet(
            context: context,
            isDismissible: true,
            isScrollable: false,
            child: AddNewMethodBottomSheet(),
          );
        },
        label: Text('Add'),
        icon: Icon(Icons.add),
      ),
      child: HomePageBody(),
    );
  }
}
