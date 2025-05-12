
import 'package:cinefinder/core/theme/app_color_extension.dart';
import 'package:cinefinder/core/theme/base_theme.dart';
import 'package:cinefinder/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTheme {
  static const primaryColor = ColorStorage.primary;
  static ThemeData light = BaseTheme.baseTheme(
          primaryColor: primaryColor,
          backgroundColor: const Color(0xFFF2F8FF),
          backgroundSecondary: const Color(0xFFFFFFFF),
          isDarkMode: false)
      .copyWith(extensions: [
    const AppColorExtension(
        backgroundPrimary: Color(0xFFF2F8FF),
        backgroundSecondary: Color(0xFFFFFFFF),
        primary: primaryColor,
        dynamicPrimary: primaryColor,
        fontPrimary: Color(0xFF2A3E4B),
        fontSecondary: Color(0xFF595959),
        fontTertiary: Color(0xFFE7E7E7),
        cardBackground: Color(0xFFFFFFFF),
        cardHeading: Color(0xffF5F5F5),
        success: Color(0xFF0BAA60),
        danger: Color(0xFFF80031),
        dividerColor: Color(0xFFD7D7D7),
        formBorder: Color(0xFFD7D7D7))
  ]);
  static ThemeData dark = BaseTheme.baseTheme(
          primaryColor: primaryColor,
          backgroundColor: const Color(0xFF18181A),
          backgroundSecondary: const Color(0xFF1D1D1F),
          isDarkMode: true)
      .copyWith(extensions: [
    const AppColorExtension(
      backgroundPrimary: Color(0xFF18181A),
      backgroundSecondary: Color(0xFF1D1D1F),
      primary: primaryColor,
      dynamicPrimary: Color(0XFF1D1D1F),
      fontPrimary: Color(0xFFF1F1F1),
      fontSecondary: Color(0xFFB6B6B6),
      fontTertiary: Color(0xFF34383D),
      cardBackground: Color(0XFF1D1D1F),
      cardHeading: Color(0xFF222224),
      success: Color(0xFF0BAA60),
      danger: Color(0xFFF80031),
      dividerColor: Color(0xFF36363D),
      formBorder: Color(0xFF36363D),
    )
  ]);

  static SystemUiOverlayStyle getLightSystemUiOverlayStyle() {
    return SystemUiOverlayStyle(
      statusBarColor: primaryColor.withOpacity(0.5),
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: const Color(0xFFF2F8FF),
      systemNavigationBarIconBrightness: Brightness.dark,
    );
  }

  static SystemUiOverlayStyle getDarkSystemUiOverlayStyle() {
    return const SystemUiOverlayStyle(
      statusBarColor: primaryColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF18181A),
      systemNavigationBarIconBrightness: Brightness.light,
    );
  }
}
