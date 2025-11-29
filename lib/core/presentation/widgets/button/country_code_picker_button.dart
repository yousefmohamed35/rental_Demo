import 'package:country_code_picker/country_code_picker.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CountryCodePickerButton extends StatelessWidget {
  const CountryCodePickerButton({
    super.key,
    required this.onChange,
    required this.onInit,
    this.initSelection,
    this.isEnabled = true,
  });

  final Function(CountryCode) onChange;
  final Function(CountryCode?) onInit;
  final String? initSelection;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      backgroundColor: Colors.white,
      enabled: isEnabled,
      initialSelection: initSelection ?? 'Eg',
      padding: EdgeInsets.zero,
      showDropDownButton: true,
      flagDecoration: const BoxDecoration(
        // borderRadius: BorderRadius.circular(5),
      ),
      showFlagMain: true,
      onChanged: onChange,
      onInit: onInit,
      favorite: const ['+20'],
      builder: (code) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            code!.flagUri!,
            package: 'country_code_picker',
            width: 24,
          ),
          10.horizontalSpace,
          Text(code.dialCode ?? "", style: context.textTheme.bodySmall),
          const Icon(Icons.arrow_drop_down_rounded, color: Colors.black, size: 30,),
          14.horizontalSpace,
        ],
      ),
    );
  }
}