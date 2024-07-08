import 'package:flutter/material.dart';

import '../colors/silk_colors.dart';

class SilkFonts {
  SilkFonts(this._colors);
  final SilkColors _colors;

  Color get _defaultColor => _colors.neutral_9;

  final double _ratio = 1;
  final String _fontName = 'Roboto';

// Bold
  TextStyle cabin12Bold({Color? color}) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 12 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
  TextStyle cabin18Bold({Color? color}) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
  TextStyle cabin16Bold({Color? color}) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
  TextStyle cabin14Bold({Color? color}) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );

  TextStyle cabin20Bold({Color? color}) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
//italic
  TextStyle cabin20Italic({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontSize: 20 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
  TextStyle cabin18Italic({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontSize: 18 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
  TextStyle cabin16Italic({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontSize: 16 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
  TextStyle cabin14Italic({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontSize: 14 * _ratio,
        fontFamily: _fontName,
        color: color ?? _defaultColor,
      );
}
