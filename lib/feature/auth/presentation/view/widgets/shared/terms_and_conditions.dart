import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utilities/light_theme/light_colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "${context.locale.byPressingContinue}\n",
              style: context.textTheme.labelSmall?.copyWith(
                color: AppColors.secondText,
                fontSize: 12.toFont,
                height: 4,
              ),
            ),
            TextSpan(
              text: "${context.locale.termsAndConditions} ",
              style: context.textTheme.labelSmall?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 12.toFont,
                fontWeight: FontWeight.w700,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                //  context.pushRoute(TermsAndConditionsRoute());
                },
            ),
            TextSpan(
              text: "${context.locale.and} ",
              style: context.textTheme.labelSmall?.copyWith(
                color: AppColors.secondText,
                fontSize: 12.toFont,
              ),
            ),
            TextSpan(
              text: context.locale.privacyPolicy,
              style: context.textTheme.labelSmall?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 12.toFont,
                fontWeight: FontWeight.w700,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
              //    context.pushRoute(PrivacyPolicyRoute());
                },
            ),
          ],
        ),
      ),
    );
  }
}
