import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:demorental/core/services/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/presentation/widgets/button/app_button.dart';
import '../../../../../core/utilities/light_theme/light_colors.dart';
import 'package_info.dart';

class PackageInfoCard extends StatelessWidget {
  const PackageInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.divider,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Enterprise'),
            20.toHeight.verticalSpace,
            PackageInfo(
              title: context.locale.attempts,
              amount: '2 / 3',
              progress: 0.7,
            ),
            20.toHeight.verticalSpace,
            PackageInfo(
              title: context.locale.reminders,
              amount: '2 / 8',
              progress: 0.2,
            ),
            20.toHeight.verticalSpace,
            PackageInfo(
              title: context.locale.finished,
              amount: '1 / 8',
              progress: 0.1,
            ),
            20.toHeight.verticalSpace,
            AppButton(
              padding: EdgeInsets.all(0),
              label: context.locale.upgradePlans,
              onPressed: () {
                context.pushRoute(UpgradePlansRoute());
              },
              height: 40.toHeight,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
