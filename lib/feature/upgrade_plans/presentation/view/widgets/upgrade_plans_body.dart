import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/extension/double.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:flutter/material.dart';
import 'plans_card.dart';

class UpgradePlansBody extends StatelessWidget {
  const UpgradePlansBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('الخطط المتاحه', style: context.textTheme.titleSmall),
            20.toHeight.verticalSpace,
            PlansCard(
              color: AppColors.divider,
              title: 'Enterprise',
              subtitle: 'خطة أساسية مناسبة للبدايات',
              category: 3,
              reminders: 8,
              price: '0.00 جنيه',
              addButton: false,
            ),
            20.toHeight.verticalSpace,
            PlansCard(
              color: AppColors.accentColor,
              title: 'Premium',
              subtitle: 'للاستخدام المتوسط والمشاريع الصغيرة',
              category: 10,
              reminders: 50,
              price: '100 جنيه / شهر',
              addButton: true,
            ),
            20.toHeight.verticalSpace,
            PlansCard(
              color: AppColors.primaryColor,
              title: 'VIP',
              subtitle: 'أفضل تجربة، لكل الميزات المتقدمة',
              category: 50,
              reminders: 200,
              price: '200 جنيه / شهر',
              addButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
