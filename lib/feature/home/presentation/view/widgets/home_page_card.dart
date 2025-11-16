import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:demorental/feature/add_new_rental/data/models/rental_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/services/core_utilis/date_fromatter.dart';
import '../../../../../core/utilities/light_theme/light_colors.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({super.key, required this.rental});
  final RentalModel rental;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: context.screenWidth * 0.3,
              height: context.screenWidth * 0.3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                'assets/images/blank_holder_image.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            15.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rental.type,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: AppColors.mainText,
                      fontSize: 15.toFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  4.toHeight.verticalSpace,
                  Text(
                    rental.homeLocation ?? rental.carType!,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: AppColors.secondText,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.toFont,
                    ),
                  ),
                  32.toHeight.verticalSpace,
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.secondText,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Text(
                      formatDate(rental.date.toIso8601String()),
                      style: context.textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.toFont,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
