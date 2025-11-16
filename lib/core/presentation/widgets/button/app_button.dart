import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/material.dart';
import '../../../utilities/light_theme/light_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isPrimary = true,
    this.width,
    this.child,
    this.iconSpace,
    // this.height,
    this.textStyle,
    this.backgroundColor,
    this.borderRadius = 14,
    this.padding = const EdgeInsets.all(18),
    this.hasSide = true,
    this.borderColor,
    this.isLoading = false,
    this.height,
  });

  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final bool isPrimary;
  final Widget? child;
  final double? iconSpace;

  // final double? height;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final double borderRadius;
  final bool hasSide;
  final Color? borderColor;
  final bool isLoading;

  const AppButton.extended({
    this.height,
    super.key,
    required this.label,
    this.onPressed,
    this.isPrimary = true,
    required Widget icon,
    this.width,
    this.iconSpace,
    // this.height,
    this.textStyle,
    this.backgroundColor,
    this.borderRadius = 14,
    this.padding = const EdgeInsets.symmetric(vertical: 12),
    this.hasSide = true,
    this.borderColor,
    this.isLoading = false,
  }) : child = icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? () {} : onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: hasSide
                ? BorderSide(
                    color: onPressed != null && !isLoading
                        ? borderColor ??
                            backgroundColor ??
                            Theme.of(context).primaryColor
                        : AppColors.secondaryColor,
                    width: 2,
                  )
                : BorderSide.none,
          ),
          backgroundColor: backgroundColor ??
              (isPrimary ? Theme.of(context).primaryColor : Colors.transparent),
          padding: padding,
          shadowColor: Colors.transparent,
          disabledBackgroundColor: AppColors.secondaryColor,
        ),
        child:
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (child != null) ...[
                    child!,
                    SizedBox(width: iconSpace ?? 4),
                  ],
                  Text(
                    label,
                    style: textStyle ??
                        Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontSize: 15.toFont,
                              fontWeight: FontWeight.w500,
                              color: onPressed == null
                                  ? Colors.grey[400]
                                  : isPrimary
                                      ? Colors.white
                                      : Theme.of(context).primaryColor,
                            ),
                  ),
                ],
              ),
      ),
    );
  }
}