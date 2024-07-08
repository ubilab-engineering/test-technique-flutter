import 'package:flutter/material.dart';
import 'package:test_technique_flutter/themes/silk_theme_manager.dart';

class SilkAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const SilkAppBarWidget({
    required this.fillColor,
    required this.scaffoldKey,
    required this.title,
    super.key,
  });

  final Color fillColor;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String title;

  @override
  SilkAppBarWidgetState createState() => SilkAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SilkAppBarWidgetState extends State<SilkAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4),
      decoration: BoxDecoration(
        color: widget.fillColor,
        boxShadow: [
          SilkThemeManager.of(context).shadows.topBar,
        ],
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
                style: SilkThemeManager.of(context).fonts.cabin20Bold(
                      color: SilkThemeManager.of(context).colors.neutral_1,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
