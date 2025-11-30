import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/extension/double.dart';
import 'package:demorental/core/presentation/widgets/button/app_button.dart';
import 'package:demorental/core/presentation/widgets/text_fields/generic_text_field.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/themeing/themes_contants.dart';

class AddNewCategoryBody extends StatelessWidget {
  const AddNewCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.toHeight.verticalSpace,
          Text(
            context.locale.addNewCategory,
            style: context.textTheme.titleSmall?.copyWith(
              fontFamily: ThemesConstant.cairoFontFamily,
            ),
          ),
          64.toHeight.verticalSpace,
          GenericTextField(
            hint: context.locale.enterCategoryName,
            labelText: context.locale.categoryName,
          ),
          30.toHeight.verticalSpace,
          AppButton(
            label: context.locale.add,
            width: double.infinity,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
