import 'package:flutter/cupertino.dart';
import 'package:test_technique_flutter/data/medical_supplies_dto.dart';
import 'package:test_technique_flutter/helpers/file_helper.dart';

class MedicalSuppliesRepository {
  Future<MaterialMedicalSuppliesDto?> getMedicalSupplies(
      BuildContext context) async {
    return MaterialMedicalSuppliesDto.fromJson(
      await FileHelper.loadJsonFromAssets(context: context, path: 'data.json'),
    );
  }
}
