import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../generated/l10n.dart';
import '../../../utilities/light_theme/light_colors.dart';

class GenericTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final String? hint;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final String? Function(String?)? validation;
  final String? labelText;
  final Widget? prefix;
  final Function()? onTap;
  final Widget? suffix;
  final bool isSecure;
  final bool isRequired;
  final bool enabled;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final bool hasBorder;
  final Color? backgroundColor;
  final double borderRadius;
  final EdgeInsets? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final bool isOptional;
  final bool autoValidation;
  final int? minLines;
  final int? maxLines;
  final FocusNode? nextFocusNode;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final bool hasValidation;
  final bool? autofocus;
  final bool shouldAutoClose;

  const GenericTextField({
    super.key,
    this.controller,
    this.type,
    this.textInputAction,
    this.hint,
    this.onSubmit,
    this.onChange,
    this.validation,
    this.labelText,
    this.prefix,
    this.onTap,
    this.suffix,
    this.isSecure = false,
    this.isRequired = false,
    this.enabled = true,
    this.onSaved,
    this.focusNode,
    this.hasBorder = true,
    this.backgroundColor,
    this.borderRadius = 10,
    this.contentPadding,
    this.inputFormatters,
    this.isOptional = false,
    this.autoValidation = true,
    this.hasValidation = true,
    this.minLines,
    this.maxLines,
    this.nextFocusNode,
    this.textDirection,
    this.autofocus,
    this.shouldAutoClose = true,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              children: [
                Text(
                  labelText!,
                  style: context.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (isRequired)
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
          ),
        TextFormField(
          enabled: enabled,
          focusNode: focusNode,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          keyboardType: type,
          autofocus: autofocus ?? false,
          onFieldSubmitted: textInputAction == TextInputAction.next
              ? (value) {
                  FocusScope.of(context).requestFocus(nextFocusNode);
                }
              : onSubmit,
          onChanged: onChange,
          onTap: onTap,
          textAlign: textAlign,
          onSaved: onSaved,
          validator: !hasValidation
              ? null
              : (val) => textValidator(val, context, validation),
          obscureText: isSecure,
          style: Theme.of(context).textTheme.bodyMedium,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          autovalidateMode: autoValidation
              ? AutovalidateMode.onUserInteraction
              : null,
          minLines: minLines,
          maxLines: isSecure ? 1 : maxLines,
          onTapOutside: shouldAutoClose
              ? (_) => FocusScope.of(context).unfocus()
              : null,
          textDirection: textDirection,
          decoration: InputDecoration(
            filled: backgroundColor != null ? true : false,
            fillColor: backgroundColor ?? const Color(0xffF9F9F9),
            hintText: hint,
            contentPadding: contentPadding,
            hintStyle: context.textTheme.labelSmall?.copyWith(
              color: AppColors.secondText,
              fontSize: 12.toFont,
            ),
            suffixIcon: suffix,
            prefixIcon: prefix,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: hasBorder ? Colors.grey[300]! : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: hasBorder ? Colors.black : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: hasBorder ? Colors.grey[300]! : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: hasBorder ? Colors.grey[300]! : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ],
    );
  }

  String? textValidator(
    String? val,
    BuildContext context,
    String? Function(String?)? validator,
  ) {
    if (val != null && val.isEmpty) {
      return S.of(context).thisFieldIsRequired;
    }
    return validator != null ? validator(val) : null;
  }
}
