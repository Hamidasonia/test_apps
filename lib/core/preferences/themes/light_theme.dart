import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_apps/app/config.dart';
import 'package:test_apps/core/core.dart';

class LightTheme {
  LightTheme(this.primaryColor);

  // final color primary menyesuaikan color hex nya
  final Color primaryColor;
  static Color disabledTextColor = AppColors.grey[700]!;
  static Color secondaryColor = AppColors.blueGrey[300]!;
  static Color disabledColor = AppColors.grey[700]!;
  static Color textSolidColor = AppColors.grey[900]!;
  static Color errorColor = AppColors.red;
  static Color dividerColor = AppColors.blue[100]!;
  static Color inputBackgroundColor = Colors.white;
  static Color scaffoldColor = Colors.white;
  static Color cardColor = AppColors.blue[100]!;
  static Color appBarColor = Colors.white;
  static Color colorPrimary = HexColor('#022695');
  static Color colorSekunder = HexColor('#0E78E5');
  static Color colorBlueButton = HexColor('#23A0EA');
  static Color black = HexColor('#000000');
  static Color white = HexColor('#fffff');

  ColorScheme get scheme => ColorScheme.light(
    primary: primaryColor,
    surface: primaryColor,
    secondary: primaryColor,
  );

  // ButtonThemeData get button => ButtonThemeData(
  //   buttonColor: primaryColor,
  //   disabledColor: disabledTextColor,
  //   padding: const EdgeInsets.symmetric(
  //     vertical: Dimens.dp8,
  //     horizontal: Dimens.dp24,
  //   ),
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(Dimens.dp8),
  //   ),
  // );

  // New Theme Color
  ButtonThemeData get button => ButtonThemeData(
    buttonColor: HexColor('23A0EA'),
    disabledColor: black,
    padding: const EdgeInsets.symmetric(
      vertical: Dimens.dp8,
      horizontal: Dimens.dp24,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.dp8),
    ),
  );

  // OutlinedButtonThemeData get outlineButton => OutlinedButtonThemeData(
  //   style: OutlinedButton.styleFrom(
  //     foregroundColor: primaryColor,
  //     side: BorderSide(color: primaryColor),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(Dimens.dp12),
  //     ),
  //     padding: const EdgeInsets.symmetric(
  //       vertical: Dimens.dp14,
  //       horizontal: Dimens.dp16,
  //     ),
  //     textStyle: text.labelLarge?.copyWith(color: primaryColor),
  //   ),
  // );

  // New Theme
  OutlinedButtonThemeData get outlineButton => OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: primaryColor,
      side: BorderSide(color: primaryColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.dp12),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.dp14,
        horizontal: Dimens.dp16,
      ),
      textStyle: text.labelLarge?.copyWith(color: primaryColor),
    ),
  );

  // ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     foregroundColor: scaffoldColor,
  //     backgroundColor: primaryColor,
  //     disabledBackgroundColor: dividerColor,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(Dimens.dp12),
  //     ),
  //     shadowColor: Colors.transparent,
  //     padding: const EdgeInsets.symmetric(
  //       vertical: Dimens.dp14,
  //       horizontal: Dimens.dp16,
  //     ),
  //     textStyle: text.labelLarge,
  //   ),
  // );

  // New Theme
  ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: scaffoldColor,
      backgroundColor: HexColor('23A0EA'),
      disabledBackgroundColor: dividerColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.dp12),
      ),
      shadowColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.dp14,
        horizontal: Dimens.dp16,
      ),
      textStyle: text.labelLarge,
    ),
  );

  // TextButtonThemeData get textButton => TextButtonThemeData(
  //   style: TextButton.styleFrom(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(Dimens.dp12),
  //     ),
  //   ),
  // );

  // New Theme
  TextButtonThemeData get textButton => TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.dp12),
      ),
    ),
  );

  // CardTheme get card => CardTheme(
  //   elevation: 0,
  //   margin: EdgeInsets.zero,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(Dimens.dp8),
  //     side: BorderSide(
  //       color: dividerColor.withOpacity(.3),
  //     ),
  //   ),
  //   color: cardColor,
  // );

  // New Theme
  CardTheme get card => CardTheme(
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.dp8),
      side: BorderSide(
        color: dividerColor.withOpacity(.3),
      ),
    ),
    color: cardColor,
  );

  // AppBarTheme get appBar => AppBarTheme(
  //   color: scaffoldColor,
  //   centerTitle: true,
  //   titleTextStyle: text.titleLarge?.copyWith(
  //     fontFamily: AppConfig.fontFamily,
  //     color: textSolidColor,
  //     fontWeight: FontWeight.w500,
  //     fontSize: Dimens.dp18,
  //   ),
  //   toolbarTextStyle: text.titleLarge?.copyWith(
  //     color: textSolidColor,
  //     fontFamily: AppConfig.fontFamily,
  //     fontWeight: FontWeight.w600,
  //     fontSize: 16,
  //   ),
  //   surfaceTintColor: appBarColor,
  //   elevation: 0,
  //   scrolledUnderElevation: .15,
  //   shadowColor: dividerColor.withOpacity(0.5),
  //   iconTheme: IconThemeData(
  //     color: textSolidColor,
  //     size: Dimens.dp24,
  //   ),
  //   actionsIconTheme: IconThemeData(
  //     color: textSolidColor,
  //     size: Dimens.dp24,
  //   ),
  // );

  // New Theme
  AppBarTheme get appBar => AppBarTheme(
    color: scaffoldColor,
    centerTitle: true,
    titleTextStyle: text.titleLarge?.copyWith(
      fontFamily: AppConfig.fontFamily,
      color: textSolidColor,
      fontWeight: FontWeight.w500,
      fontSize: Dimens.dp18,
    ),
    toolbarTextStyle: text.titleLarge?.copyWith(
      color: textSolidColor,
      fontFamily: AppConfig.fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    surfaceTintColor: appBarColor,
    elevation: 0,
    scrolledUnderElevation: .15,
    shadowColor: dividerColor.withOpacity(0.5),
    iconTheme: IconThemeData(
      color: textSolidColor,
      size: Dimens.dp24,
    ),
    actionsIconTheme: IconThemeData(
      color: textSolidColor,
      size: Dimens.dp24,
    ),
  );

  InputDecorationTheme get inputDecoration => InputDecorationTheme(
    filled: true,
    fillColor: inputBackgroundColor,
    contentPadding: const EdgeInsets.symmetric(
      vertical: Dimens.dp14,
      horizontal: Dimens.dp16,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: dividerColor,
      ),
      borderRadius: BorderRadius.circular(Dimens.dp12),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: dividerColor,
      ),
      borderRadius: BorderRadius.circular(Dimens.dp12),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: dividerColor,
      ),
      borderRadius: BorderRadius.circular(Dimens.dp12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor('23A0EA'),
      ),
      borderRadius: BorderRadius.circular(Dimens.dp12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: errorColor,
      ),
      borderRadius: BorderRadius.circular(Dimens.dp12),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: errorColor,
      ),
      borderRadius: BorderRadius.circular(Dimens.dp12),
    ),
  );

  // BottomNavigationBarThemeData get bottomNav => BottomNavigationBarThemeData(
  //   backgroundColor: scaffoldColor,
  //   elevation: 8,
  //   type: BottomNavigationBarType.fixed,
  //   unselectedItemColor: secondaryColor,
  //   selectedLabelStyle: const TextStyle(
  //     fontSize: Dimens.dp12,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //   unselectedLabelStyle: const TextStyle(
  //     fontSize: Dimens.dp12,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  // );

  // New Theme
  BottomNavigationBarThemeData get bottomNav => BottomNavigationBarThemeData(
    backgroundColor: scaffoldColor,
    elevation: 8,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: secondaryColor,
    selectedLabelStyle: const TextStyle(
      fontSize: Dimens.dp12,
      fontFamily: AppConfig.fontFamily,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: Dimens.dp12,
      fontFamily: AppConfig.fontFamily,
    ),
  );

  // TabBarTheme get tabBar => TabBarTheme(
  //   indicator: UnderlineTabIndicator(
  //     borderSide: BorderSide(
  //       color: primaryColor,
  //       width: Dimens.dp2,
  //     ),
  //   ),
  //   indicatorSize: TabBarIndicatorSize.tab,
  //   labelColor: primaryColor,
  //   unselectedLabelColor: disabledTextColor,
  //   labelStyle: const TextStyle(
  //     fontWeight: FontWeight.w600,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //   unselectedLabelStyle: const TextStyle(
  //     fontWeight: FontWeight.w600,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  // );

  // New Theme Color
  TabBarTheme get tabBar => TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: primaryColor,
        width: Dimens.dp2,
      ),
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: primaryColor,
    unselectedLabelColor: disabledTextColor,
    labelStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: AppConfig.fontFamily,
    ),
    unselectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: AppConfig.fontFamily,
    ),
  );

  // TextTheme get text => TextTheme(
  //   bodyLarge: TextStyle(
  //     color: textSolidColor,
  //     fontSize: Dimens.dp16,
  //     fontWeight: FontWeight.normal,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //   // Use for regular text
  //   bodyMedium: TextStyle(
  //     color: disabledTextColor,
  //     fontSize: Dimens.dp14,
  //     fontWeight: FontWeight.normal,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //   // Use for heading text
  //   headlineSmall: TextStyle(
  //     color: textSolidColor,
  //     fontWeight: FontWeight.w600,
  //     fontSize: Dimens.dp24,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //   // Use for title text, AppBar
  //   titleLarge: TextStyle(
  //     color: textSolidColor,
  //     fontWeight: FontWeight.w700,
  //     fontSize: Dimens.dp16,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //   // Use for sub title text
  //   titleMedium: TextStyle(
  //     color: textSolidColor,
  //     fontWeight: FontWeight.w600,
  //     fontSize: Dimens.dp16,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //
  //   labelLarge: const TextStyle(
  //     fontSize: Dimens.dp14,
  //     fontWeight: FontWeight.w500,
  //     fontFamily: AppConfig.fontFamily,
  //   ),
  //   // Use for caption
  //   bodySmall: TextStyle(
  //     fontSize: Dimens.dp10,
  //     fontFamily: AppConfig.fontFamily,
  //     color: disabledTextColor,
  //   ),
  // );

  // New Theme
  TextTheme get text => TextTheme(
    bodyLarge: TextStyle(
      color: textSolidColor,
      fontSize: Dimens.dp16,
      fontWeight: FontWeight.normal,
      fontFamily: AppConfig.fontFamily,
    ),
    // Use for regular text
    bodyMedium: TextStyle(
      color: disabledTextColor,
      fontSize: Dimens.dp14,
      fontWeight: FontWeight.normal,
      fontFamily: AppConfig.fontFamily,
    ),
    // Use for heading text
    headlineSmall: TextStyle(
      color: textSolidColor,
      fontWeight: FontWeight.w600,
      fontSize: Dimens.dp24,
      fontFamily: AppConfig.fontFamily,
    ),
    // Use for title text, AppBar
    titleLarge: TextStyle(
      color: textSolidColor,
      fontWeight: FontWeight.w700,
      fontSize: Dimens.dp16,
      fontFamily: AppConfig.fontFamily,
    ),
    // Use for sub title text
    titleMedium: TextStyle(
      color: textSolidColor,
      fontWeight: FontWeight.w600,
      fontSize: Dimens.dp16,
      fontFamily: AppConfig.fontFamily,
    ),

    labelLarge: const TextStyle(
      fontSize: Dimens.dp14,
      fontWeight: FontWeight.w500,
      fontFamily: AppConfig.fontFamily,
    ),
    // Use for caption
    bodySmall: TextStyle(
      fontSize: Dimens.dp10,
      fontFamily: AppConfig.fontFamily,
      color: disabledTextColor,
    ),
  );

  // FloatingActionButtonThemeData get floatingButton =>
  //     FloatingActionButtonThemeData(
  //       backgroundColor: primaryColor,
  //       elevation: 2,
  //       foregroundColor: Colors.white,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(Dimens.dp100),
  //       ),
  //     );

  // New Theme
  FloatingActionButtonThemeData get floatingButton =>
      FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        elevation: 2,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp100),
        ),
      );

  // BottomSheetThemeData get bottomSheet => BottomSheetThemeData(
  //   backgroundColor: scaffoldColor,
  //   surfaceTintColor: scaffoldColor,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.vertical(
  //       top: Radius.circular(Dimens.dp20),
  //     ),
  //   ),
  // );

  // New Theme
  BottomSheetThemeData get bottomSheet => BottomSheetThemeData(
    backgroundColor: scaffoldColor,
    surfaceTintColor: scaffoldColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(Dimens.dp20),
      ),
    ),
  );

  // DividerThemeData get divider => DividerThemeData(
  //   color: dividerColor.withOpacity(.2),
  // );

  // New Theme
  DividerThemeData get divider => DividerThemeData(
    color: dividerColor.withOpacity(.2),
  );

  // BottomAppBarTheme get bottomAppBarTheme => BottomAppBarTheme(
  //   color: scaffoldColor,
  //   padding: EdgeInsets.zero,
  //   shape: const CircularNotchedRectangle(),
  // );

  // New Theme
  BottomAppBarTheme get bottomAppBarTheme => BottomAppBarTheme(
    color: scaffoldColor,
    padding: EdgeInsets.zero,
    shape: const CircularNotchedRectangle(),
  );

  // ListTileThemeData get listTileTheme => const ListTileThemeData(
  //   contentPadding: EdgeInsets.zero,
  // );

  // New Theme
  ListTileThemeData get listTileTheme => const ListTileThemeData(
    contentPadding: EdgeInsets.zero,
  );

  // ThemeData get toTheme {
  //   return ThemeData(
  //     useMaterial3: true,
  //     fontFamily: AppConfig.fontFamily,
  //     bottomAppBarTheme: bottomAppBarTheme,
  //     primaryColor: primaryColor,
  //     scaffoldBackgroundColor: scaffoldColor,
  //     canvasColor: scaffoldColor,
  //     disabledColor: disabledColor,
  //     textTheme: text,
  //     cardTheme: card,
  //     appBarTheme: appBar,
  //     dividerColor: dividerColor,
  //     unselectedWidgetColor: disabledColor,
  //     buttonTheme: button,
  //     inputDecorationTheme: inputDecoration,
  //     visualDensity: VisualDensity.adaptivePlatformDensity,
  //     outlinedButtonTheme: outlineButton,
  //     elevatedButtonTheme: elevatedButton,
  //     textButtonTheme: textButton,
  //     listTileTheme: listTileTheme,
  //     bottomNavigationBarTheme: bottomNav,
  //     tabBarTheme: tabBar,
  //     floatingActionButtonTheme: floatingButton,
  //     bottomSheetTheme: bottomSheet,
  //     dividerTheme: divider,
  //     cardColor: cardColor,
  //     colorScheme: scheme.copyWith(error: errorColor),
  //   );
  // }

  // New Theme
  ThemeData get toTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppConfig.fontFamily,
      bottomAppBarTheme: bottomAppBarTheme,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldColor,
      canvasColor: scaffoldColor,
      disabledColor: disabledColor,
      textTheme: GoogleFonts.poppinsTextTheme(),
      cardTheme: card,
      appBarTheme: appBar,
      dividerColor: dividerColor,
      unselectedWidgetColor: disabledColor,
      buttonTheme: button,
      inputDecorationTheme: inputDecoration,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      outlinedButtonTheme: outlineButton,
      elevatedButtonTheme: elevatedButton,
      textButtonTheme: textButton,
      listTileTheme: listTileTheme,
      bottomNavigationBarTheme: bottomNav,
      tabBarTheme: tabBar,
      floatingActionButtonTheme: floatingButton,
      bottomSheetTheme: bottomSheet,
      dividerTheme: divider,
      cardColor: cardColor,
      colorScheme: scheme.copyWith(error: errorColor),
    );
  }
}
