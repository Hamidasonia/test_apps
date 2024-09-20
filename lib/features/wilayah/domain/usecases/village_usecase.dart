import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

class VillageUsecase implements UseCaseFuture<Failure, List<Village>, GetVillageParams> {
  VillageUsecase(this.wilayahRepository);

  final WilayahRepository wilayahRepository;

  @override
  Future<Either<Failure, List<Village>>> call(GetVillageParams params) async {
    return wilayahRepository.village(params.id);
  }
}

class GetVillageParams extends Equatable {
  const GetVillageParams({
    required this.id
  });

  final String id;

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}