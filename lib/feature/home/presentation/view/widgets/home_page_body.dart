import 'package:demorental/core/extension/double.dart';
import 'package:demorental/core/presentation/widgets/button/app_button.dart';
import 'package:demorental/core/presentation/widgets/logo/arkanzax_logo.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';
import 'package:flutter/material.dart';
import 'package_info.dart';
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
        ],
      ),
    );
  }
}

