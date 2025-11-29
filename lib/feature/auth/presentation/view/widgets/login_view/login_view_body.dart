import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/themeing/themes_contants.dart';
import '../../../../../../core/presentation/widgets/logo/arkanzax_logo.dart';
import '../../../../../../core/presentation/widgets/text_fields/email_or_phone_text_field.dart';
import '../../../../../../core/presentation/widgets/text_fields/generic_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArkanzaxLogo(),
                  20.toHeight.verticalSpace,
                  Text(
                    context.locale.login,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontFamily: ThemesConstant.cairoFontFamily,
                    ),
                  ),
                  64.toHeight.verticalSpace,
                  EmailOrPhoneTextField(
                    textInputAction: TextInputAction.next,
                    //  focusNode: _cubit.emailOrPhoneFocusNode,
                    //  nextFocusNode: _cubit.passwordFocusNode,
                    //  controller: _cubit.emailOrPhoneController,
                    isRequired: true,
                    onCountryChange: (code) {
                      //    _cubit.selectedCountryCode = code;
                      debugPrint("${code?.code.toString()}");
                    },
                    controller: TextEditingController(),
                  ),
                  10.toHeight.verticalSpace,
                  GenericTextField(
                          isRequired: true,
                         // controller: _cubit.passwordController,
                          labelText: context.locale.password,
                          hint: context.locale.enterPassword,
                        //  focusNode: _cubit.passwordFocusNode,
                          type: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          validation: (value) {
                            if (value != null && value.length < 8) {
                              return context.locale.passwordTooShort;
                            }
                            return null;
                          },
                        ),
                        10.toHeight.verticalSpace,
                ],
              ),
            ),
          ),
          SizedBox(height: 20.toHeight),
        ],
      ),
    );
  }
}
