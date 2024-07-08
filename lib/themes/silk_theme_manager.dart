import 'package:flutter/material.dart';
import 'package:test_technique_flutter/themes/colors/silk_colors.dart';
import 'package:test_technique_flutter/themes/colors/silk_colors_dark.dart';
import 'package:test_technique_flutter/themes/colors/silk_colors_light.dart';
import 'package:test_technique_flutter/themes/fonts/silk_fonts.dart';
import 'package:test_technique_flutter/themes/shadows/silk_shadows.dart';

class SilkThemeManager {
  SilkThemeManager._(
    this.colors,
    this.shadows,
    this.fonts,
  );

  factory SilkThemeManager.of(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      return SilkThemeManager._(
        SilkColorsLight.instance,
        SilkShadows(SilkColorsLight.instance),
        SilkFonts(SilkColorsLight.instance),
      );
    } else {
      return SilkThemeManager._(
        SilkColorsDark.instance,
        SilkShadows(SilkColorsDark.instance),
        SilkFonts(SilkColorsDark.instance),
      );
    }
  }

  final SilkColors colors;
  final SilkShadows shadows;
  final SilkFonts fonts;
}
