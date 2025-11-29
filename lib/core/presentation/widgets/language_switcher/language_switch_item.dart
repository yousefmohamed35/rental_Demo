import 'package:auto_size_text/auto_size_text.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';

import '../../../constants/locales.dart';


class LanguageSwitchItem extends StatelessWidget {
  const LanguageSwitchItem({
    super.key,
    required this.locale,
    required this.selectedLocale,
    required this.onTap,
    this.verticalHeight = 6,
  });

  final Locale locale;
  final Locale selectedLocale;
  final Function() onTap;
  final double verticalHeight;

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedLocale == locale;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).disabledColor,
            width: 2,
          ),
        ),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: verticalHeight),
          title: AutoSizeText(
            locale == englishLocale ? 'English' : 'عربى',
            style: context.textTheme.labelMedium?.copyWith(
              fontSize: 13.toFont,
              color: selectedLocale == locale
                  ? Theme.of(context).primaryColor
                  : null,
            ),
          ),
          trailing: AnimatedOpacity(
            opacity: selectedLocale == locale ? 1 : 0,
            curve: Curves.bounceInOut,
            duration: const Duration(milliseconds: 250),
            child: Icon(
              Icons.check_circle,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}