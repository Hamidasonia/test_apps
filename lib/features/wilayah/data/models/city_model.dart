import 'package:test_apps/features/wilayah/domain/entities/city.dart';

class CityModel {
  String id;
  String provinceId;
  String name;

  CityModel({
    required this.id,
    required this.provinceId,
    required this.name,
  });

  City toEntity() {
    return City(id: id, provinceId: provinceId, name: name);
  }

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
    id: json["id"],
    provinceId: json["province_id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "province_id": provinceId,
    "name": name,
  };
}
