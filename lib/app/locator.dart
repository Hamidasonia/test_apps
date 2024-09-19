import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:test_apps/core/core.dart';
import 'package:path_provider/path_provider.dart';

import 'config.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  await _setupCore();

  // ----------------------------- Authentication ----------------------------

  // Data
  // getIt
  //   ..registerLazySingleton<AuthApiDataSource>(
  //     () => AuthApiDataSourceImpl(
  //       getIt(),
  //       authLocalSource: getIt(),
  //     ),
  //   )
  //   ..registerLazySingleton<AuthLocalDataSource>(
  //     () => AuthLocalDataSourceImpl(getIt()),
  //   )
  //   ..registerLazySingleton<AuthRepository>(
  //     () => AuthRepositoryImpl(getIt()),
  //   );

  // Domain
  // getIt
  //   ..registerLazySingleton(() => LoginUseCase(getIt()))
  //   ..registerLazySingleton(() => LogoutUseCase(getIt()))
  //   ..registerLazySingleton(() => ProfileUseCase(getIt()));

  // getIt
  //   ..registerFactory(
  //     () => AuthBloc(
  //       loginUseCase: getIt(),
  //       logoutUseCase: getIt(),
  //       profileUseCase: getIt(),
  //     ),
  //   )
  //   ..registerFactory(() => AuthFormBloc());

  // ------------------------------ Settings ---------------------------------

  // Data
  // getIt
  //   ..registerLazySingleton<SettingsLocalSource>(
  //     () => SettingsLocalSourceImpl(getIt()),
  //   )
  //   ..registerLazySingleton<SettingsRepository>(
  //     () => SettingsRepositoryImpl(localSource: getIt()),
  //   );

  // Domain
  // getIt
  //   ..registerLazySingleton(() => GetThemeSettingUseCase(getIt()))
  //   ..registerLazySingleton(() => SaveThemeSettingUseCase(getIt()))
  //   ..registerLazySingleton(RecordErrorUseCase.new);
  //
  // // Presentationd
  // getIt.registerFactory(
  //   () => ThemeBloc(
  //     getThemeSetting: getIt(),
  //     saveThemeSetting: getIt(),
  //   ),
  // );

  // ------------------------------ Billing ------------------------------------

  // Data
  // getIt
  //   ..registerLazySingleton<BillingApiDataSource>(
  //     () => BillingApiDataSourceImpl(getIt()),
  //   )
  //   ..registerLazySingleton<BillingRepository>(
  //     () => BillingRepositoryImpl(getIt()),
  //   );

  // Domain
  // getIt
  //   ..registerLazySingleton(() => ActiveBillingUsecase(getIt()))
  //   ..registerLazySingleton(() => HistoryBillingUsecase(getIt()))
  //   ..registerLazySingleton(() => CreateInvoiceUseCase(getIt()));

  // getIt
  //   ..registerFactory(
  //     () => ActiveBillingBloc(
  //       activeBillingUsecase: getIt(),
  //       createInvoiceUseCase: getIt(),
  //     ),
  //   )
  //   ..registerFactory(() => HistoryBillingBloc(historyBillingUsecase: getIt()));

  // ------------------------------ Ticket ------------------------------------

  // Data
  // getIt
  //   ..registerLazySingleton<TicketApiDataSource>(
  //     () => TicketApiDataSourceImpl(getIt()),
  //   )
  //   ..registerLazySingleton<TicketRepository>(
  //     () => TicketRepositoryImpl(getIt()),
  //   );

  // Domain
  // getIt
  //   ..registerLazySingleton(() => GetTicketUseCase(getIt()))
  //   ..registerLazySingleton(() => CreateTicketUseCase(getIt()));

  // getIt.registerFactory(
  //   () => TicketBloc(
  //     getTicketUseCase: getIt(),
  //     createTicketUseCase: getIt(),
  //   ),
  // );

  // ------------------------------ Internet Package ------------------------------------

  // Data
  // getIt
  //   ..registerLazySingleton<InternetPackageApiDataSource>(
  //     () => InternetPackageApiDataSourceImpl(getIt()),
  //   )
  //   ..registerLazySingleton<InternetPackageRepository>(
  //     () => InternetPackageRepositoryImpl(getIt()),
  //   );

  // Domain
  // getIt
  //   ..registerLazySingleton(() => InternetPackageUsecase(getIt()))
  //   ..registerLazySingleton(() => InternetPackageItemUsecase(getIt()));

  // getIt.registerFactory(
  //   () => InternetPackageBloc(
  //     internetPackageUsecase: getIt(),
  //     internetPackageItemUsecase: getIt(),
  //   ),
  // );

  // ------------------------------ Invoice ------------------------------------

  // Data
  // getIt
  //   ..registerLazySingleton<InvoiceApiDataSource>(
  //     () => InvoiceApiDataSourceImpl(getIt()),
  //   )
  //   ..registerLazySingleton<InvoiceRepository>(
  //     () => InvoiceRepositoryImpl(getIt()),
  //   );

  // Domain
  // getIt
  //   ..registerLazySingleton(() => GetInvoiceUseCase(getIt()))
  //   ..registerLazySingleton(() => ExpireInvoiceUseCase(getIt()));

  // getIt.registerFactory(
  //   () => InvoiceBloc(
  //     getInvoiceUseCase: getIt(),
  //     expireInvoiceUseCase: getIt(),
  //   ),
  // );
}

Future<void> _setupCore() async {
  EquatableConfig.stringify = AppConfig.autoStringifyEquatable;

  getIt.registerLazySingleton(
    () => CaptureErrorUseCase(),
  );
  // getIt.registerLazySingleton(
  //   () => Dio()
  //     ..options = BaseOptions(baseUrl: AppConfig.baseUrl.value)
  //     ..interceptors.addAll([
  //       LogInterceptor(requestBody: false, responseBody: false),
  //       AuthHttpInterceptor(getIt()),
  //     ]),
  // );

  if (!kIsWeb) {
    final appDocDir = await getApplicationDocumentsDirectory();
    Hive.init('${appDocDir.path}/db');
  }

  getIt.registerLazySingleton<HiveInterface>(() => Hive);
}
