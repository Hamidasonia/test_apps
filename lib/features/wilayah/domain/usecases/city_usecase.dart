
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

class CityUsecase implements UseCaseFuture<Failure, List<City>, GetCityParams> {
  CityUsecase(this.wilayahRepository);

  final WilayahRepository wilayahRepository;

  @override
  Future<Either<Failure, List<City>>> call(GetCityParams params) async {
    return wilayahRepository.city(params.id);
  }
}

class GetCityParams extends Equatable {
  const GetCityParams({
    required this.id
  });

  final String id;

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}