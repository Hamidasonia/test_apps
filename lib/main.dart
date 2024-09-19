import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test_apps/app/app.dart';
import 'package:test_apps/app/flavor.dart';
import 'package:test_apps/app/locator.dart';
import 'package:test_apps/core/core.dart';

Future<void> main() async {
  F.flavor = Flavor.dev;

  runZonedGuarded(
        () async {
      WidgetsFlutterBinding.ensureInitialized();

      await setupLocator();

      await initializeDateFormatting('id_ID', null);

      Bloc.observer = AppBlocObserver();

      return runApp(const App());
    },
        (error, stackTrace) {
      GetIt.I<CaptureErrorUseCase>().call(
        CaptureErrorParams(error, stackTrace),
      );
      log(
        error.toString(),
        name: 'LOG',
        stackTrace: stackTrace,
      );
    },
  );
}