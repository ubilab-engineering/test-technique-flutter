import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_technique_flutter/themes/icons/silk_icons_base.dart';
import 'package:test_technique_flutter/themes/silk_theme_manager.dart';

class SilkIcon extends StatelessWidget {
  const SilkIcon._({
    super.key,
    this.icon,
    this.iconData,
    this.color,
    this.size,
  });

  factory SilkIcon.fromData({
    required IconData icon,
    Key? key,
    Color? color,
    Size? size,
  }) {
    return SilkIcon._(
      key: key,
      color: color,
      size: size,
      iconData: icon,
    );
  }

  factory SilkIcon.fromPath({
    required SilkIconsBase icon,
    Color? color,
    Key? key,
    Size? size,
  }) {
    return SilkIcon._(
      key: key,
      color: color,
      size: size,
      icon: icon,
    );
  }

  final SilkIconsBase? icon;
  final IconData? iconData;
  final Size? size;
  final Color? color;

  static const double _defaultImgSize = 25;

  Widget? getProperWidget() {
    if (iconData != null) {
      return Icon(
        iconData,
        color: color,
        size: size?.width ?? _defaultImgSize,
      );
    } else if (icon != null) {
      if (icon!.path.substring(icon!.path.length - 3) == 'svg') {
        return SvgPicture.asset(
          icon!.path,
          height: size?.height ?? _defaultImgSize,
          width: size?.width ?? _defaultImgSize,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color!,
                  BlendMode.srcIn,
                )
              : null,
        );
      } else {
        return Image(
          image: AssetImage(
            icon!.path,
          ),
          height: size?.height ?? _defaultImgSize,
          width: size?.width ?? _defaultImgSize,
          color: color,
          colorBlendMode: color != null ? BlendMode.srcIn : null,
        );
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return getProperWidget() ??
        Text(
          '[Icon Error]',
          style: TextStyle(
            color: SilkThemeManager.of(context).colors.error_5,
          ),
        );
  }
}
