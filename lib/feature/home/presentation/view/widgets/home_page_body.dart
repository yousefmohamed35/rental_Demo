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
    return SingleChildScrollView(
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
          20.toHeight.verticalSpace,
          HeaderTitle(title: context.locale.category),
          20.toHeight.verticalSpace,
          HeaderTitle(title: context.locale.category),
          20.toHeight.verticalSpace,
        ],
      ),
    );
  }
}
