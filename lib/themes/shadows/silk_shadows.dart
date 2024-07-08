import 'package:flutter/material.dart';
import 'package:test_technique_flutter/themes/colors/silk_colors.dart';

class SilkShadows {
  SilkShadows(this._colors);
  final SilkColors _colors;

  Color get _shadowColor => _colors.shadow;

  BoxShadow get interact => BoxShadow(
        offset: const Offset(0, 2),
        color: _shadowColor,
        blurRadius: 8,
      );

  BoxShadow get card => BoxShadow(
        offset: const Offset(0, 4),
        color: _shadowColor,
        blurRadius: 12,
        spreadRadius: 3,
      );

  BoxShadow get topBar => BoxShadow(
        offset: const Offset(0, 3),
        color: _shadowColor,
        blurRadius: 8,
      );

  BoxShadow get bottomBar => BoxShadow(
        offset: const Offset(0, -3),
        color: _shadowColor,
        blurRadius: 8,
      );

  BoxShadow get expander => BoxShadow(
        color: _shadowColor,
        offset: const Offset(0, 2),
        blurRadius: 8,
        spreadRadius: 1,
      );
}
