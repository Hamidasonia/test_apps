import '../core/core.dart';
import 'flavor.dart';

class AppConfig {
  static const String appName = 'NIMAPPS';
  static const String fontFamily = 'Poppins';

  static const FlavorConfig<String> baseUrl = FlavorConfig<String>(
    prod: '',
    // dev: 'http://192.168.1.12:8000/api',
    dev: 'https://www.emsifa.com/api-wilayah-indonesia/api/',
  );

  static const AppTheme defaultTheme = AppTheme.light;
  static const bool autoStringifyEquatable = true;
  static const bool transparentStatusBar = true;
}

class FlavorConfig<T> {
  const FlavorConfig({
    required this.prod,
    required this.dev,
    this.fallback,
  }) : assert(
  dev == null || prod == null  ? fallback != null : true,
  '[fallback]cannot be null if there is one flavor whose value is null',
  );

  final T? prod;
  final T? dev;
  final T? fallback;

  T get value {
    switch (F.flavor) {
      case Flavor.prod:
        return prod ?? fallback!;
      case Flavor.dev:
        return dev ?? fallback!;
    }
  }
}