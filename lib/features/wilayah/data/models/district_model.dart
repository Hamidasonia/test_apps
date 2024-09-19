import 'package:test_apps/features/wilayah/wilayah.dart';

class DistrictModel {
  String id;
  String regencyId;
  String name;

  DistrictModel({
    required this.id,
    required this.regencyId,
    required this.name,
  });

  District toEntity() {
    return District(id: id, regencyId: regencyId, name: name);
  }

  factory DistrictModel.fromJson(Map<String, dynamic> json) => DistrictModel(
        id: json["id"],
        regencyId: json["regency_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "regency_id": regencyId,
        "name": name,
      };
}
