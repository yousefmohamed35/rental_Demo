import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../../../../../../core/presentation/widgets/language_switcher/language_bottom_sheet.dart';
import '../../../../../../core/services/core_utilis/app_sevices.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: IconButton(
        onPressed: () => AppServices.showDefaultModalSheet(
          context: context,
          isDismissible: true,
          isScrollable: false,
          child: const LanguageBottomSheet(),
        ),
        icon: const Icon(PhosphorIcons.globe_hemisphere_east_bold),
        iconSize: 26,
        color: Colors.black,
      ),
    );
   
  }
}