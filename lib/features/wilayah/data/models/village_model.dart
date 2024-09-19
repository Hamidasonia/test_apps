import 'package:test_apps/features/wilayah/wilayah.dart';

class VillageModel {
  String id;
  String districtId;
  String name;

  VillageModel({
    required this.id,
    required this.districtId,
    required this.name,
  });

  Village toEntity() {
    return Village(id: id, districtId: districtId, name: name);
  }

  factory VillageModel.fromJson(Map<String, dynamic> json) => VillageModel(
        id: json["id"],
        districtId: json["district_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "district_id": districtId,
        "name": name,
      };
}
