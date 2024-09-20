import 'package:dartz/dartz.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

class WilayahRepositoryImpl implements WilayahRepository {
  WilayahRepositoryImpl(this.wilayahApiDataSource);

  final WilayahApiDataSource wilayahApiDataSource;

  @override
  Future<Either<Failure, List<Province>>> province() async {
    try {
      final result = await wilayahApiDataSource.province();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, code: e.code));
    }
  }

  @override
  Future<Either<Failure, List<City>>> city(String id) async {
    try {
      final result = await wilayahApiDataSource.city(id);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, code: e.code));
    }
  }

  @override
  Future<Either<Failure, List<District>>> district(String id) async {
    try {
      final result = await wilayahApiDataSource.district(id);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, code: e.code));
    }
  }

  @override
  Future<Either<Failure, List<Village>>> village(String id) async {
    try {
      final result = await wilayahApiDataSource.village(id);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, code: e.code));
    }
  }
}