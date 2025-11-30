import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/presentation/widgets/button/app_button.dart';
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
      title: context.locale.home,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppButton(
            label: context.locale.upgrade,
            padding: EdgeInsets.all(8),
            backgroundColor: Colors.white,
            textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w900,
            ),
            onPressed: () {},
          ),
        ),
      ],
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     AppServices.showDefaultModalSheet(
      //       context: context,
      //       isDismissible: true,
      //       isScrollable: false,
      //       child: AddNewMethodBottomSheet(),
      //     );
      //   },
      //   label: Text(context.locale.addNew),
      //   icon: Icon(Icons.add),
      // ),
      child: HomePageBody(),
    );
  }
}
