import 'package:json_annotation/json_annotation.dart';

part 'medical_supplies_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class MaterialMedicalSuppliesDto {
  MaterialMedicalSuppliesDto({
    required this.medicalSupplies,
    required this.total,
  });

  factory MaterialMedicalSuppliesDto.fromJson(Map<String, dynamic> json) =>
      _$MaterialMedicalSuppliesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialMedicalSuppliesDtoToJson(this);

  List<MaterialMedicalSupplyDto> medicalSupplies;
  int total;
}

@JsonSerializable(explicitToJson: true)
class MaterialMedicalSupplyDto {
  MaterialMedicalSupplyDto({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.availability,
    required this.availableTo,
  });

  factory MaterialMedicalSupplyDto.fromJson(Map<String, dynamic> json) =>
      _$MaterialMedicalSupplyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialMedicalSupplyDtoToJson(this);

  int id;
  String name;
  String description;
  String imageUrl;
  MaterialMedicalSupplyCategoryDto category;
  MaterialMedicalSupplyAvailabilityDto availability;
  List<MaterialMedicalSupplyAvailableToDto> availableTo;
}

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.pascal)
enum MaterialMedicalSupplyAvailabilityDto {
  available,
  outOfStock,
}

@JsonSerializable(explicitToJson: true)
class MaterialMedicalSupplyCategoryDto {
  MaterialMedicalSupplyCategoryDto({
    required this.id,
    required this.name,
    required this.color,
  });

  factory MaterialMedicalSupplyCategoryDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MaterialMedicalSupplyCategoryDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MaterialMedicalSupplyCategoryDtoToJson(this);

  int id;
  String name;
  String color;
}

@JsonSerializable(explicitToJson: true)
class MaterialMedicalSupplyAvailableToDto {
  MaterialMedicalSupplyAvailableToDto({
    required this.id,
    required this.name,
  });

  factory MaterialMedicalSupplyAvailableToDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MaterialMedicalSupplyAvailableToDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MaterialMedicalSupplyAvailableToDtoToJson(this);

  int id;
  String name;
}
