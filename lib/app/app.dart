import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:test_apps/app/config.dart';
import 'package:test_apps/app/route.dart';
import 'package:test_apps/features/home_page.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

import '../core/core.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor:
            AppConfig.transparentStatusBar ? Colors.transparent : null,
        statusBarIconBrightness: AppConfig.defaultTheme == AppTheme.dark
            ? Brightness.light
            : Brightness.dark,
      ),
    );

    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.I<WilayahBloc>()..add(GetProvinceEvent()),
        ),
      ],
      child: const _AppWidget(),
    );
  }
}

class _AppWidget extends StatefulWidget {
  const _AppWidget({super.key});

  @override
  State<_AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<_AppWidget> {
  @override
  void initState() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ripple
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskType = EasyLoadingMaskType.black
      ..radius = 16
      ..errorWidget
      ..backgroundColor = context.theme.canvasColor
      ..indicatorColor = context.theme.primaryColor
      ..textColor = context.theme.shadowColor
      ..animationStyle = EasyLoadingAnimationStyle.offset;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationKey,
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      navigatorObservers: [routeObserver],
      onGenerateRoute: route,
      home: const HomePage(),
      builder: EasyLoading.init(),
    );
  }
}
