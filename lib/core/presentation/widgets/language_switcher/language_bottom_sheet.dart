import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/locales.dart';
import '../../../utilities/theme/cubit/theme_cubit.dart';
import '../button/app_button.dart';
import 'language_switch_item.dart';


class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  late Locale _selectedLang;
  late final ThemeCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of<ThemeCubit>(context);
    _selectedLang = _cubit.locale;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.locale.changeLanguage,
            style: context.textTheme.titleSmall,
          ),
          24.verticalSpace,
          LanguageSwitchItem(
            locale: englishLocale,
            selectedLocale: _selectedLang,
            onTap: () {
              setState(() {
                _selectedLang = englishLocale;
              });
            },
          ),
          16.verticalSpace,
          LanguageSwitchItem(
            locale: arabicLocale,
            selectedLocale: _selectedLang,
            onTap: () {
              setState(() {
                _selectedLang = arabicLocale;
              });
            },
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  label: context.locale.cancel,
                  isPrimary: false,
                  onPressed: () => context.back(),
                ),
              ),
              17.horizontalSpace,
              Expanded(
                child: AppButton(
                  label: context.locale.confirm,
                  onPressed: () {
                    if (_selectedLang != _cubit.locale) {
                      _cubit.changeLocale(_selectedLang);
                    }
                    context.back();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}