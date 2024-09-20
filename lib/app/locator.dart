import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:test_apps/core/core.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

import 'config.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  await _setupCore();

  // ----------------------------- Authentication ----------------------------

  // ------------------------------ Wilayah ------------------------------------

  // Data
  getIt
    ..registerLazySingleton<WilayahApiDataSource>(
      () => WilayahApiDataSourceImpl(getIt()),
    )
    ..registerLazySingleton<WilayahRepository>(
      () => WilayahRepositoryImpl(getIt()),
    );

  // Domain
  getIt
    ..registerLazySingleton(() => ProvinceUsecase(getIt()))
    ..registerLazySingleton(RecordErrorUseCase.new)
    ..registerLazySingleton(() => CityUsecase(getIt()))
    ..registerLazySingleton(() => DistrictUsecase(getIt()))
    ..registerLazySingleton(() => VillageUsecase(getIt()));

  getIt.registerFactory(
    () => WilayahBloc(
      provinceUsecase: getIt(),
      cityUsecase: getIt(),
      districtUsecase: getIt(),
      villageUsecase: getIt(),
    ),
  );
}

Future<void> _setupCore() async {
  EquatableConfig.stringify = AppConfig.autoStringifyEquatable;

  getIt.registerLazySingleton(
    () => CaptureErrorUseCase(),
  );
  getIt.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(baseUrl: AppConfig.baseUrl.value)
      ..interceptors.addAll([
        LogInterceptor(requestBody: false, responseBody: false),
      ]),
  );

  if (!kIsWeb) {
    final appDocDir = await getApplicationDocumentsDirectory();
    Hive.init('${appDocDir.path}/db');
  }

  getIt.registerLazySingleton<HiveInterface>(() => Hive);
}
