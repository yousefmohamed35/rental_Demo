import 'package:country_code_picker/country_code_picker.dart';
import 'package:demorental/core/domain/validation/email_validator.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/extension/string.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../generated/l10n.dart';
import '../../../utilities/light_theme/light_colors.dart';
import '../button/country_code_picker_button.dart';

class EmailOrPhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  final CountryCode? initialCountryCode;
  final ValueChanged<CountryCode?>? onCountryChange;
  final bool isRequired;
  final String? hintText;
  final double borderRadius;
  final TextInputAction? textInputAction;
  final bool? autofocus;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final Function(String)? onSubmit;

  const EmailOrPhoneTextField({
    super.key,
    required this.controller,
    this.initialCountryCode,
    this.onCountryChange,
    this.isRequired = false,
    this.hintText,
    this.borderRadius = 10,
    this.textInputAction,
    this.autofocus,
    this.focusNode,
    this.nextFocusNode,
    this.onSubmit,
  });

  @override
  State<EmailOrPhoneTextField> createState() => _EmailOrPhoneTextFieldState();
}

class _EmailOrPhoneTextFieldState extends State<EmailOrPhoneTextField> {
  bool isPhoneSelected = true;
  late CountryCode _selectedCountryCode;

  @override
  void initState() {
    super.initState();
    _selectedCountryCode =
        widget.initialCountryCode ?? CountryCode.fromDialCode('+20');
  }

  void toggleInputType() {
    setState(() {
      isPhoneSelected = !isPhoneSelected;
      widget.controller.clear();
    });
  }

  String? _validate(String? value) {
    if (widget.isRequired && (value == null || value.trim().isEmpty)) {
      return S.of(context).thisFieldIsRequired;
    }

    if (isPhoneSelected) {
      final phone = value?.removeIfStartsWith("0") ?? '';
      if (!_validatePhone(phone)) {
        return context.locale.pleaseEnterValidPhoneNumber;
      }
    } else {
      if (value != null && !value.isValidEmail()) {
        return context.locale.emailValidation;
      }
      return null;
    }

    return null;
  }

  bool _validatePhone(String phone) {
    return RegExp(r'^\d{9,15}$').hasMatch(phone);
  }

  @override
  Widget build(BuildContext context) {
    final label = GestureDetector(
      onTap: toggleInputType,
      child: Row(
        children: [
          Text(
            isPhoneSelected ? context.locale.phone : S.of(context).email,
            style: context.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            " /",
            style: context.textTheme.labelSmall?.copyWith(
              fontSize: 12.toFont,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            isPhoneSelected ? S.of(context).email : context.locale.phone,
            style: context.textTheme.labelSmall?.copyWith(
              fontSize: 12.toFont,
              color: Colors.grey,
            ),
          ),
          if (widget.isRequired)
            Text(
              "*",
              style: context.textTheme.labelSmall?.copyWith(
                fontSize: 14.toFont,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label,
        const SizedBox(height: 6),
        TextFormField(
          focusNode: widget.focusNode,
          onFieldSubmitted: widget.textInputAction == TextInputAction.next
              ? (value) {
                  FocusScope.of(context).requestFocus(widget.nextFocusNode);
                }
              : widget.onSubmit,
          key: ValueKey(isPhoneSelected),
          controller: widget.controller,
          style: Theme.of(context).textTheme.bodyMedium,
          keyboardType: isPhoneSelected
              ? TextInputType.phone
              : TextInputType.emailAddress,
          validator: _validate,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: isPhoneSelected
              ? [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.deny('٠', replacementString: '0'),
                  FilteringTextInputFormatter.deny('١', replacementString: '1'),
                  FilteringTextInputFormatter.deny('٢', replacementString: '2'),
                  FilteringTextInputFormatter.deny('٣', replacementString: '3'),
                  FilteringTextInputFormatter.deny('٤', replacementString: '4'),
                  FilteringTextInputFormatter.deny('٥', replacementString: '5'),
                  FilteringTextInputFormatter.deny('٦', replacementString: '6'),
                  FilteringTextInputFormatter.deny('٧', replacementString: '7'),
                  FilteringTextInputFormatter.deny('٨', replacementString: '8'),
                  FilteringTextInputFormatter.deny('٩', replacementString: '9'),
                  ZeroBlockingTextInputFormatter(
                      isEgypgt: _selectedCountryCode.dialCode == "+20"),
                ]
              : [],
          decoration: InputDecoration(
            prefixIcon: isPhoneSelected
                ? Padding(
                    padding: const EdgeInsetsDirectional.only(start: 12),
                    child: CountryCodePickerButton(
                      onChange: (code) {
                        setState(() => _selectedCountryCode = code);
                        if (widget.onCountryChange != null) {
                          widget.onCountryChange!(code);
                        }
                      },
                      onInit: (CountryCode? code) {
                        _selectedCountryCode.code;
                      },
                    ),
                  )
                : const Icon(Icons.email_outlined),
            hintText: widget.hintText ??
                (isPhoneSelected
                    ? S.of(context).enterPhoneNumber
                    : S.of(context).enterEmail),
            filled: true,
            fillColor: Colors.white,
            hintStyle: context.textTheme.labelSmall?.copyWith(
              color: AppColors.secondText,
              fontSize: 12.toFont,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
          ),
        ),
      ],
    );
  }
}

class ZeroBlockingTextInputFormatter extends TextInputFormatter {
  final bool isEgypgt;

  ZeroBlockingTextInputFormatter({required this.isEgypgt});
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.startsWith('0') && newValue.text.isNotEmpty && isEgypgt) {
      return const TextEditingValue(text: '1');
    }
    return newValue;
  }
}