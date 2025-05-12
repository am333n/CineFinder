// Flutter imports:

import 'package:cinefinder/core/theme/app_color_extension.dart';
import 'package:cinefinder/core/theme/color%20themes/default_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:

enum AppThemeType { defaultTheme, purpleTheme, greenTheme, blueTheme }

class AppTheme {
  static final Map<AppThemeType, ThemeData> _lightThemes = {
    AppThemeType.defaultTheme: DefaultTheme.light,
  };
  static final Map<AppThemeType, ThemeData> _darkThemes = {
    AppThemeType.defaultTheme: DefaultTheme.dark,
  };

  static final Map<AppThemeType, SystemUiOverlayStyle> _systemUiStylesLight = {
    AppThemeType.defaultTheme: DefaultTheme.getLightSystemUiOverlayStyle(),
  };
  static final Map<AppThemeType, SystemUiOverlayStyle> _systemUiStylesDark = {
    AppThemeType.defaultTheme: DefaultTheme.getDarkSystemUiOverlayStyle(),
  };

  static ThemeData getThemeData(AppThemeType themeType, bool isDarkMode) {
    ThemeData themeData =
        isDarkMode
            ? _darkThemes[themeType] ?? _darkThemes[AppThemeType.defaultTheme]!
            : _lightThemes[themeType] ??
                _lightThemes[AppThemeType.defaultTheme]!;

    SystemUiOverlayStyle systemUiStyle =
        isDarkMode
            ? _systemUiStylesDark[themeType] ??
                _systemUiStylesDark[AppThemeType.defaultTheme]!
            : _systemUiStylesLight[themeType] ??
                _systemUiStylesLight[AppThemeType.defaultTheme]!;

    SystemChrome.setSystemUIOverlayStyle(systemUiStyle);

    return themeData;
  }
}

extension AppThemeExtension on ThemeData {
  /// Usage example: Theme.of(context).appColors;
  AppColorExtension get appColors {
    final AppColorExtension? currentExtension = extension<AppColorExtension>();

    // Return the found extension or the default one from DefaultTheme
    return currentExtension ??
        DefaultTheme.light.extension<AppColorExtension>()!;
  }
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}
