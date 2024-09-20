import 'package:dartz/dartz.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

abstract class WilayahRepository {
  Future<Either<Failure, List<Province>>> province();

  Future<Either<Failure, List<City>>> city(String id);

  Future<Either<Failure, List<District>>> district(String id);

  Future<Either<Failure, List<Village>>> village(String id);
}