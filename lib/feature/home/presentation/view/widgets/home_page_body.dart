import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/extension/double.dart';
import 'package:demorental/core/presentation/widgets/logo/arkanzax_logo.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:flutter/material.dart';
import 'package_info_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ArkanzaxLogo(),
          20.toHeight.verticalSpace,
          PackageInfoCard(),
          20.toHeight.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.locale.category,
                style: context.textTheme.bodyMedium,
              ),
              Text(
                context.locale.more,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          20.toHeight.verticalSpace,
          Card(
            child: ListTile(
              title: Text('السيارة (10)', style: context.textTheme.bodyMedium),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('السيارة (10)', style: context.textTheme.bodyMedium),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('السيارة (10)', style: context.textTheme.bodyMedium),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
