import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_technique_flutter/themes/icons/silk_icons_svg.dart';
import 'package:test_technique_flutter/themes/silk_theme_manager.dart';
import 'package:test_technique_flutter/widgets/silk_button.dart';

enum SilkValidationState { normal, validated, warning, error }

class SilkNumericUpDown<T extends num> extends StatefulWidget {
  const SilkNumericUpDown({
    required this.value,
    required this.step,
    required this.activeColor,
    super.key,
    this.onChanged,
    this.minValue,
    this.maxValue,
    this.state,
    this.enabled = true,
  });

  static SilkNumericUpDown<int> intQuantity({
    required Color activeColor,
    Key? key,
    ValueChanged<int>? onChanged,
    int? value,
    int? maxValue,
    bool enabled = true,
    SilkValidationState? state,
  }) {
    return SilkNumericUpDown<int>(
      key: key,
      activeColor: activeColor,
      onChanged: onChanged,
      value: value ?? 0,
      minValue: 0,
      maxValue: maxValue,
      step: 1,
      state: state,
      enabled: enabled,
    );
  }

  final ValueChanged<T>? onChanged;
  final T value;
  final T? minValue;
  final T? maxValue;
  final T step;
  final SilkValidationState? state;
  final bool enabled;

  final Color activeColor;

  @override
  State<SilkNumericUpDown<T>> createState() => _SilkNumericUpDownState<T>();
}

class _SilkNumericUpDownState<T extends num>
    extends State<SilkNumericUpDown<T>> {
  bool get disabled => widget.onChanged == null || !widget.enabled;

  @override
  Widget build(BuildContext context) {
    Color borderColor;

    switch (widget.state) {
      case null:
        borderColor = Colors.transparent;
      case SilkValidationState.validated:
        borderColor = SilkThemeManager.of(context).colors.succes_5;
      case SilkValidationState.error:
        borderColor = SilkThemeManager.of(context).colors.error_5;
      case SilkValidationState.warning:
        borderColor = SilkThemeManager.of(context).colors.warning_5;
      case SilkValidationState.normal:
        borderColor = Colors.transparent;
    }

    return Row(
      children: [
        Container(
          height: 48,
          constraints: const BoxConstraints(minWidth: 56),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.fromBorderSide(
              BorderSide(
                color: widget.enabled ? borderColor : Colors.transparent,
              ),
            ),
            color: SilkThemeManager.of(context).colors.neutral_2,
          ),
          child: Center(
            child: Text(
              widget.value.toString(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        SilkButton.icon(
          color: SilkThemeManager.of(context).colors.neutral_1,
          icon: SilkIconsSvg.iconMoinsPath,
          fontColor: SilkThemeManager.of(context).colors.neutral_4,
          height: 48,
          width: 48,
          shadow: SilkThemeManager.of(context).shadows.interact,
          onPressed:
              disabled ? null : () => widget.onChanged?.call(decrementValue()),
        ),
        const SizedBox(
          width: 8,
        ),
        SilkButton.icon(
          color: SilkThemeManager.of(context).colors.neutral_1,
          icon: SilkIconsSvg.iconPlusPath,
          fontColor: widget.enabled
              ? widget.activeColor
              : SilkThemeManager.of(context).colors.neutral_4,
          height: 48,
          width: 48,
          shadow: SilkThemeManager.of(context).shadows.interact,
          onPressed:
              disabled ? null : () => widget.onChanged?.call(incrementValue()),
        ),
      ],
    );
  }

  T decrementValue() {
    final res = (widget.value - widget.step) as T;
    return widget.minValue == null ? res : max(widget.minValue!, res);
  }

  T incrementValue() {
    final res = (widget.value + widget.step) as T;
    return widget.maxValue == null ? res : min(widget.maxValue!, res);
  }
}
