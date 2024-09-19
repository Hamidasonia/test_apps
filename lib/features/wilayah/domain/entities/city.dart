import 'package:equatable/equatable.dart';

class City extends Equatable {
  final String id;
  final String provinceId;
  final String name;

  const City({
    required this.id,
    required this.provinceId,
    required this.name,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        provinceId,
        name,
      ];
}
