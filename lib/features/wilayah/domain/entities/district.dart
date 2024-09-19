import 'package:equatable/equatable.dart';

class District extends Equatable {
  final String id;
  final String regencyId;
  final String name;

  const District({
    required this.id,
    required this.regencyId,
    required this.name,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        regencyId,
        name,
      ];
}
