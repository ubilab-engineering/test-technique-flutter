import 'package:flutter/material.dart';
import 'package:test_technique_flutter/themes/icons/silk_icons_base.dart';
import 'package:test_technique_flutter/themes/silk_theme_manager.dart';
import 'package:test_technique_flutter/widgets/silk_icon.dart';

enum SilkButtonType { primary, secondary, tertiary }

class SilkButton extends StatelessWidget {
  const SilkButton({
    required this.color,
    super.key,
    this.onPressed,
    this.text,
    this.icon,
    this.trailingIcon,
    this.type = SilkButtonType.primary,
    this.height = 48,
    this.width,
    this.borderRadius,
    this.fontColor,
    this.padding,
    this.mainAxisSize,
    this.shadow,
    this.iconSize = 24,
  }) : isIconButton = false;

  const SilkButton.icon({
    required this.color,
    super.key,
    this.onPressed,
    this.icon,
    this.type = SilkButtonType.primary,
    this.fontColor,
    this.borderRadius,
    this.padding,
    this.mainAxisSize,
    this.height = 56,
    this.width,
    this.shadow,
    this.iconSize = 24,
  })  : trailingIcon = null,
        text = null,
        isIconButton = true;

  final VoidCallback? onPressed;
  final String? text;
  final SilkIconsBase? icon;
  final SilkIconsBase? trailingIcon;
  final SilkButtonType type;
  final bool isIconButton;
  final Color color;
  final Color? fontColor;
  final double height;
  final double? width;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final MainAxisSize? mainAxisSize;

  final double iconSize;

  final BoxShadow? shadow;

  @override
  Widget build(BuildContext context) {
    Color foregroundColor;
    Color? borderColor;
    Color overlayColor;

    if (type == SilkButtonType.secondary) {
      foregroundColor = (onPressed == null)
          ? SilkThemeManager.of(context).colors.neutral_5
          : color;
      borderColor = (onPressed == null)
          ? SilkThemeManager.of(context).colors.neutral_3
          : color;
      overlayColor = (onPressed == null)
          ? Colors.transparent
          : SilkThemeManager.of(context).colors.neutral_2.withOpacity(0.2);
    } else if (type == SilkButtonType.tertiary) {
      foregroundColor = (onPressed == null)
          ? SilkThemeManager.of(context).colors.neutral_6
          : color;
      borderColor = null;
      overlayColor = (onPressed == null)
          ? Colors.transparent
          : SilkThemeManager.of(context).colors.neutral_2.withOpacity(0.2);
    } else {
      foregroundColor = (onPressed == null)
          ? SilkThemeManager.of(context).colors.neutral_5
          : SilkThemeManager.of(context).colors.neutral_1;
      borderColor = null;
      overlayColor = (onPressed == null)
          ? Colors.transparent
          : SilkThemeManager.of(context).colors.neutral_2.withOpacity(0.2);
    }

    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: shadow != null ? [shadow!] : null,
        ),
        child: TextButton(
          onPressed: (onPressed == null) ? null : onPressed,
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(overlayColor),
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12),
                side: borderColor != null
                    ? BorderSide(color: borderColor)
                    : BorderSide.none,
              ),
            ),
          ),
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              children: [
                if (icon != null)
                  Padding(
                    padding: EdgeInsets.only(right: isIconButton ? 0 : 8),
                    child: SilkIcon.fromPath(
                      icon: icon!,
                      color: fontColor,
                      size: Size.square(iconSize),
                    ),
                  ),
                if (text != null)
                  Text(
                    text!,
                    style: SilkThemeManager.of(context).fonts.cabin14Bold(
                          color: fontColor ?? foregroundColor,
                        ),
                  ),
                if (trailingIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SilkIcon.fromPath(
                      icon: trailingIcon!,
                      color: fontColor,
                      size: Size.square(iconSize),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
