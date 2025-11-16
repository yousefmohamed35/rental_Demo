import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/presentation/widgets/button/app_button.dart';
import '../../../../../core/utilities/light_theme/light_colors.dart';

class AddNewMethodBottomSheet extends StatelessWidget {
  const AddNewMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 34.0, left: 34.0, right: 34.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: context.screenWidth * 0.3,
              child: Image.asset('assets/images/scan_qr.png'),
            ),
            16.verticalSpace,
            AppButton(
              label: 'scan qr',
              width: context.screenWidth * 0.55,
              padding: const EdgeInsets.symmetric(vertical: 14),
              onPressed: () {},
            ),
            34.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(thickness: 1, color: AppColors.divider),
                ),
                16.horizontalSpace,
                Text(
                  'or',
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 23,
                  ),
                ),
                16.horizontalSpace,
                const Expanded(
                  child: Divider(thickness: 1, color: AppColors.divider),
                ),
              ],
            ),
            20.verticalSpace,
            TextButton(
              child: Text('enter mannully'),
              onPressed: () {
                context.pushRoute(AddNewRentalRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
