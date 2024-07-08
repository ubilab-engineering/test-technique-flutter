import 'dart:convert';

import 'package:flutter/material.dart';

class FileHelper {
  static Future<dynamic> loadJsonFromAssets({
    required BuildContext context,
    required String path,
  }) async {
    return jsonDecode(
      await DefaultAssetBundle.of(context).loadString('assets/$path'),
    );
  }
}
