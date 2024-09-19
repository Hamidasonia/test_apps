import 'package:test_apps/features/wilayah/wilayah.dart';

class ProvinceModel {
  String id;
  String name;

  ProvinceModel({
    required this.id,
    required this.name,
  });

  Province toEntity() {
    return Province(id: id, name: name);
  }

  factory ProvinceModel.fromJson(Map<String, dynamic> json) => ProvinceModel(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
