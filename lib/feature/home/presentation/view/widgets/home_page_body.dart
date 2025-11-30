import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/extension/double.dart';
import 'package:demorental/core/presentation/widgets/logo/arkanzax_logo.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:flutter/material.dart';
import 'header_title.dart';
import 'package_info_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ArkanzaxLogo(),
            20.toHeight.verticalSpace,
            PackageInfoCard(),
            20.toHeight.verticalSpace,
            HeaderTitle(title: context.locale.category),
            20.toHeight.verticalSpace,
            Card(
              child: ListTile(
                title: Text(
                  'السيارة (10)',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'السيارة (10)',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'السيارة (10)',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            20.toHeight.verticalSpace,
            HeaderTitle(title: context.locale.finishedReminders),
            20.toHeight.verticalSpace,
            Card(
              child: ListTile(
                title: Text(
                  'تجديد رخصة العربية',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                subtitle: Text(
                  'منذ يومان',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.secondText,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'دفع إيجار الشقه',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                subtitle: Text(
                  'منذ 5 أيام',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.secondText,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'دفع قسط الكهرباء',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                subtitle: Text(
                  'منذ أسبوع',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.secondText,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            20.toHeight.verticalSpace,
            HeaderTitle(title: context.locale.comingReminders),
            20.toHeight.verticalSpace,
            Card(
              child: ListTile(
                title: Text(
                  'دفع قسط المياه',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                subtitle: Text(
                  'متبقي يوم واحد',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.secondText,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'دفع قسط أجهزه',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                subtitle: Text(
                  'متبقي 5 أيام',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.secondText,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'صيانة',
                  style: context.textTheme.labelMedium?.copyWith(fontSize: 16),
                ),
                subtitle: Text(
                  'متبقي شهر',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.secondText,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
