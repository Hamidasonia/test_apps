import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

class DistrictUsecase implements UseCaseFuture<Failure, List<District>, GetDistrictParams> {
  DistrictUsecase(this.wilayahRepository);

  final WilayahRepository wilayahRepository;

  @override
  Future<Either<Failure, List<District>>> call(GetDistrictParams params) async {
    return wilayahRepository.district(params.id);
  }
}

class GetDistrictParams extends Equatable {
  const GetDistrictParams({
    required this.id
  });

  final String id;

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}