// base/base_theme.dart

import 'package:cinefinder/core/common/constants/style_constants.dart';
import 'package:flutter/material.dart';

class BaseTheme {
  static ThemeData baseTheme({
    required Color primaryColor,
    required Color backgroundColor,
    required Color backgroundSecondary,
    required bool isDarkMode,
  }) {
    final Brightness _bright = isDarkMode ? Brightness.dark : Brightness.light;
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
          brightness: _bright,
          primarySwatch: createMaterialColor(primaryColor)),
      brightness: _bright,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(shape: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.pressed)) {
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(RoundedCorner.largeRadius));
        }
        return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RoundedCorner.mediumRadius));
      }))),
      dialogBackgroundColor: backgroundColor,
      highlightColor: primaryColor.withOpacity(0.5),
      dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: primaryColor,
          ),
          menuStyle: MenuStyle(
              backgroundColor: WidgetStateProperty.all(backgroundColor))),
      timePickerTheme: _timePickerTheme(
          primaryColor: primaryColor,
          backgroundColor: backgroundSecondary,
          backgroundSecondary: backgroundColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              elevation: WidgetStateProperty.all(0),
              shape: _pressedCornerAnimation())),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              //         backgroundColor: WidgetStateProperty.resolveWith((state) {
              //   if (state.contains(WidgetState.pressed)) {
              //     return primaryColor.withValues(alpha: 0.5);
              //   }
              //   return Colors.transparent;
              // })
              shape: _pressedCornerAnimation())),
      bottomSheetTheme: BottomSheetThemeData(
          clipBehavior: Clip.antiAlias,
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(RoundedCorner.largeRadius),
                  topRight: Radius.circular(RoundedCorner.largeRadius))),
          modalBarrierColor: Colors.black.withValues(alpha: 0.5),
          backgroundColor: backgroundColor),
      cardTheme: CardThemeData(
          clipBehavior: Clip.hardEdge,
          color: backgroundSecondary,
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade200),
              borderRadius: RoundedCorner.medium)),
      datePickerTheme: _datePickerTheme(
          primaryColor: primaryColor, backgroundColor: backgroundSecondary),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),
      searchBarTheme: SearchBarThemeData(
          elevation: WidgetStateProperty.resolveWith((state) {
            if (state.contains(WidgetState.focused)) {
              return 1;
            }
            return 0;
          }),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey),
              borderRadius: RoundedCorner.medium))),
      extensions: const [],
    );
  }

  static WidgetStateProperty<OutlinedBorder?> _pressedCornerAnimation() {
    return WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.pressed)) {
        return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RoundedCorner.largeRadius));
      }
      return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RoundedCorner.mediumRadius));
    });
  }

  static TimePickerThemeData _timePickerTheme(
      {required Color primaryColor,
      required Color backgroundColor,
      required Color backgroundSecondary}) {
    return TimePickerThemeData(
      backgroundColor: backgroundColor,
      dialHandColor: primaryColor,
      dayPeriodColor: primaryColor.withOpacity(0.4),
      hourMinuteColor: backgroundSecondary,
      dialBackgroundColor: backgroundSecondary,
      hourMinuteTextColor: primaryColor,
      dayPeriodTextColor: primaryColor,
      cancelButtonStyle: _buildButtonStyle(Colors.red),
      confirmButtonStyle: _buildButtonStyle(primaryColor),
      timeSelectorSeparatorColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.red;
        }
        return backgroundSecondary;
      }),
    );
  }

  static ButtonStyle _buildButtonStyle(Color color) {
    return ButtonStyle(foregroundColor: WidgetStatePropertyAll(color));
  }

  static DatePickerThemeData _datePickerTheme(
      {required Color primaryColor, required Color backgroundColor}) {
    return DatePickerThemeData(
        headerBackgroundColor: primaryColor,
        backgroundColor: backgroundColor,
        cancelButtonStyle: _buildButtonStyle(Colors.red),
        confirmButtonStyle: _buildButtonStyle(primaryColor),
        dayBackgroundColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.transparent;
        }),
        todayBackgroundColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.transparent;
        }),
        todayForegroundColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return primaryColor;
        }));
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}
