import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/presentation/widgets/button/app_button.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/light_theme/light_colors.dart';

class PlansCard extends StatelessWidget {
  const PlansCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.category,
    required this.reminders,
    required this.price,
    required this.addButton,
    required this.color,
  });
  final String title;
  final String subtitle;
  final int category;
  final int reminders;
  final String price;
  final bool addButton;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color, width: 2.5),
        color: color.withOpacity(0.5),
      ),

      child: Column(
        children: [
          Text(title),
          10.toHeight.verticalSpace,
          Text(subtitle, style: context.textTheme.labelSmall),
          10.toHeight.verticalSpace,
          Divider(color: AppColors.mainText),
          10.toHeight.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$category ${context.locale.category}',
                style: context.textTheme.labelSmall?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              8.toWidth.horizontalSpace,
              Icon(Icons.category, size: 18, color: color),
            ],
          ),
          10.toHeight.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$reminders ${context.locale.reminders}',
                style: context.textTheme.labelSmall?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              8.toWidth.horizontalSpace,
              Icon(Icons.notifications_active, size: 18, color: color),
            ],
          ),
          10.toHeight.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(price)],
          ),
          10.toHeight.verticalSpace,
          if (addButton)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppButton(
                padding: EdgeInsets.all(10),
                label: context.locale.upgrade,
                onPressed: () {},
                backgroundColor: color,
                width: double.infinity,
              ),
            ),
        ],
      ),
    );
  }
}
