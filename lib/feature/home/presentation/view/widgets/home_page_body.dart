import 'package:demorental/core/extension/double.dart';
import 'package:demorental/core/presentation/widgets/button/app_button.dart';
import 'package:demorental/core/presentation/widgets/logo/arkanzax_logo.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:flutter/material.dart';
import 'package_info.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ArkanzaxLogo(),
          20.toHeight.verticalSpace,
          Card(
            color: AppColors.divider,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Enterprise'),
                  20.toHeight.verticalSpace,
                  PackageInfo(
                    title: 'المحاولات',
                    amount: '2 / 3',
                    progress: 0.7,
                  ),
                  20.toHeight.verticalSpace,
                  PackageInfo(
                    title: 'التذكيرات',
                    amount: '2 / 8',
                    progress: 0.2,
                  ),
                  20.toHeight.verticalSpace,
                  AppButton(
                    padding: EdgeInsets.all(0),
                    label: 'upgrade plan',
                    onPressed: () {},
                    height: 40.toHeight,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
