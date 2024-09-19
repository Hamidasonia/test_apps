import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

Route<dynamic> route(RouteSettings settings) {
  switch (settings.name) {
    // case LoginPage.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const LoginPage(),
    //     settings: settings,
    //   );
    // case MainPage.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const MainPage(),
    //     settings: settings,
    //   );
    // case OnBoardPage.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const OnBoardPage(),
    //     settings: settings,
    //   );
    default:
      return CupertinoPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found :('),
          ),
        );
      });
  }
}
