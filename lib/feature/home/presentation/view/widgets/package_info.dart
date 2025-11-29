import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../core/constants/locales.dart';
import '../../../../../core/utilities/light_theme/light_colors.dart';
import '../../../../../core/utilities/theme/cubit/theme_cubit.dart';

class PackageInfo extends StatelessWidget {
  const PackageInfo({super.key, required this.title, required this.amount, required this.progress});
  final String title;
  final String amount;
  final double progress;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('$title: '),
        Expanded(
          child: LinearPercentIndicator(
            backgroundColor: AppColors.secondaryColor.withOpacity(.4),
            progressColor: context.primaryColor,
            lineHeight: 10.toHeight,
            animation: true,
            percent: progress,
            barRadius: const Radius.circular(25),
            curve: Curves.fastOutSlowIn,
            animationDuration: 2200,
            restartAnimation: true,
            isRTL: BlocProvider.of<ThemeCubit>(context).locale == arabicLocale,
          ),
        ),
        Text(amount),
      ],
    );
  }
}
