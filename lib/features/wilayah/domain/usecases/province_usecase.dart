import 'package:dartz/dartz.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

class ProvinceUsecase implements UseCaseFuture<Failure, List<Province>, NoParams> {
  ProvinceUsecase(this.wilayahRepository);

  final WilayahRepository wilayahRepository;

  @override
  Future<Either<Failure, List<Province>>> call(NoParams params) async {
    return wilayahRepository.province();
  }
}