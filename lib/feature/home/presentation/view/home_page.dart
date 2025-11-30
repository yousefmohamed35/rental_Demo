import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../../../../core/services/navigation/app_router.dart';
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
        IconButton(
          icon: const Icon(PhosphorIcons.bell, size: 28),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.pushRoute(AddNewCategoryRoute());
        },
        label: Text(context.locale.addNew),
        icon: Icon(Icons.add),
      ),
      child: HomePageBody(),
    );
  }
}
