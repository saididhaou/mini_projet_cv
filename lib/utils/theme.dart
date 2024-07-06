import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  ThemeData light() {
    return FlexThemeData.light(
      scheme: FlexScheme.flutterDash,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 20,
      appBarOpacity: 0.95,
      tooltipsMatchBackground: true,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 20,
        blendOnColors: false,
        defaultRadius: 10.0,
        popupMenuOpacity: 0.00,
        navigationRailIndicatorSchemeColor: SchemeColor.surfaceTint,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.notoSans().fontFamily,
    );
  }

  ThemeData dark() {
    return FlexThemeData.dark(
      scheme: FlexScheme.flutterDash,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 15,
      appBarStyle: FlexAppBarStyle.background,
      appBarOpacity: 0.90,
      tooltipsMatchBackground: true,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 30,
        defaultRadius: 10.0,
        popupMenuOpacity: 0.00,
        navigationRailIndicatorSchemeColor: SchemeColor.surfaceTint,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.notoSans().fontFamily,
    );
  }
}
