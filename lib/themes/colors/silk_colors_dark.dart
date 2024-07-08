import 'package:flutter/material.dart';
import 'package:test_technique_flutter/themes/colors/silk_colors.dart';

class SilkColorsDark extends SilkColors {
  SilkColorsDark._();

  static final SilkColorsDark instance = SilkColorsDark._();
  // Neutres
  @override
  Color get neutral_1 => const Color(0xFFFFFFFF);
  @override
  Color get neutral_2 => const Color(0xFFEEEEEE);
  @override
  Color get neutral_3 => const Color(0xFFDADADA);
  @override
  Color get neutral_4 => const Color(0xFFBEBEBE);
  @override
  Color get neutral_5 => const Color(0xFF7D7D7D);
  @override
  Color get neutral_6 => const Color(0xFF505050);
  @override
  Color get neutral_7 => const Color(0xFF333333);
  @override
  Color get neutral_8 => const Color(0xFF1E1E1E);
  @override
  Color get neutral_9 => const Color(0xFF000000);
  // Succès
  @override
  Color get succes_2 => const Color(0xFFE9F6F1);
  @override
  Color get succes_3 => const Color(0xFFA0D9C2);
  @override
  Color get succes_4 => const Color(0xFF62C09A);
  @override
  Color get succes_5 => const Color(0xFF41A57D);
  @override
  Color get succes_6 => const Color(0xFF368766);
  @override
  Color get succes_7 => const Color(0xFF1D4938);
  // Attention
  @override
  Color get warning_2 => const Color(0xFFFFF6E0);
  @override
  Color get warning_3 => const Color(0xFFFFE3A3);
  @override
  Color get warning_4 => const Color(0xFFFFCE5C);
  @override
  Color get warning_5 => const Color(0xFFFFC328);
  @override
  Color get warning_6 => const Color(0xFFF5AB00);
  @override
  Color get warning_7 => const Color(0xFF805900);
  // Erreur
  @override
  Color get error_2 => const Color(0xFFFFE0E6);
  @override
  Color get error_3 => const Color(0xFFFFA3B4);
  @override
  Color get error_4 => const Color(0xFFFF4768);
  @override
  Color get error_5 => const Color(0xFFE10028);
  @override
  Color get error_6 => const Color(0xFFAD001F);
  @override
  Color get error_7 => const Color(0xFF7A0016);
  // Shadows
  @override
  Color get shadow => const Color(0x33505050);

  @override
  Color get materialOrder => const Color(0xFF153B42);
}
