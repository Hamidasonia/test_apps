import 'package:equatable/equatable.dart';

class Village extends Equatable {
  final String id;
  final String districtId;
  final String name;

  const Village({
    required this.id,
    required this.districtId,
    required this.name,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        districtId,
        name,
      ];
}
