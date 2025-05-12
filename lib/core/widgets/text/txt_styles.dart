part of 'txt.dart';

enum FontSize { regular, small, large }

class FontSpecifications {
  final double sizeNormal;
  final double sizeLarge;
  final double sizeSmall;
  final FontWeight fontWeight;

  FontSpecifications(
    this.sizeNormal,
    this.sizeLarge,
    this.sizeSmall,
    this.fontWeight,
  );
}

class TextStyles {
  //fontWeights
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight regular = FontWeight.w400;

  static final Map<TxtStyle, FontSpecifications> _fonts = {
    TxtStyle.bodyLRegular: FontSpecifications(14, 16, 12, regular),
    TxtStyle.bodyLSemiBold: FontSpecifications(14, 16, 12, semiBold),
    TxtStyle.bodyLBold: FontSpecifications(14, 16, 12, bold),
    TxtStyle.bodyMRegular: FontSpecifications(12, 14, 10, regular),
    TxtStyle.bodyMSemiBold: FontSpecifications(12, 14, 10, semiBold),
    TxtStyle.bodyMBold: FontSpecifications(12, 14, 10, bold),
    TxtStyle.bodySRegular: FontSpecifications(10, 12, 8, regular),
    TxtStyle.bodySSemiBold: FontSpecifications(10, 12, 8, semiBold),
    TxtStyle.bodySBold: FontSpecifications(10, 12, 8, bold),
    TxtStyle.headerXSRegular: FontSpecifications(16, 18, 14, regular),
    TxtStyle.headerXSSemiBold: FontSpecifications(16, 18, 14, semiBold),
    TxtStyle.headerXSBold: FontSpecifications(16, 18, 14, bold),
    TxtStyle.headerSRegular: FontSpecifications(20, 22, 18, regular),
    TxtStyle.headerSSemiBold: FontSpecifications(20, 22, 18, semiBold),
    TxtStyle.headerSBold: FontSpecifications(20, 22, 18, bold),
    TxtStyle.headerMRegular: FontSpecifications(22, 24, 20, regular),
    TxtStyle.headerMSemiBold: FontSpecifications(22, 24, 20, semiBold),
    TxtStyle.headerMBold: FontSpecifications(22, 24, 20, bold),
    TxtStyle.headerLRegular: FontSpecifications(34, 36, 32, regular),
    TxtStyle.headerLSemiBold: FontSpecifications(34, 36, 32, semiBold),
    TxtStyle.headerLBold: FontSpecifications(34, 36, 32, bold),
    TxtStyle.labelLRegular: FontSpecifications(10, 12, 8, regular),
    TxtStyle.labelLSemiBold: FontSpecifications(10, 12, 8, semiBold),
    TxtStyle.labelLBold: FontSpecifications(10, 12, 8, bold),
    TxtStyle.labelSRegular: FontSpecifications(8, 10, 6, regular),
    TxtStyle.labelSSemiBold: FontSpecifications(8, 10, 6, semiBold),
    TxtStyle.labelSBold: FontSpecifications(8, 10, 6, bold),
  };

  static TextStyle getTextStyle(
    BuildContext context,
    TxtStyle style, {
    double? letterSpacing,
    Color? color,
    TextOverflow? overflow,
    FontStyle? fontStyle,
  }) {
    FontSize currentFontSize = FontSize.regular;
    FontSpecifications fontSpec = _fonts[style]!;

    double adjustedFontSize = getFontSize(currentFontSize, fontSpec);

    return customTextStyle(
      fontSize: adjustedFontSize,
      fontWeight: fontSpec.fontWeight,
      letterSpacing: letterSpacing,
      color: color ?? getFontColor(fontStyle, context),
      overflow: overflow,
    );
  }

  static double getFontSize(
    FontSize currentFontSize,
    FontSpecifications fontSpec,
  ) {
    switch (currentFontSize) {
      case FontSize.regular:
        return fontSpec.sizeNormal;
      case FontSize.large:
        return fontSpec.sizeLarge;
      case FontSize.small:
        return fontSpec.sizeNormal;
      default:
        return fontSpec.sizeNormal;
    }
  }

  static Color? getFontColor(FontStyle? fontStyle, BuildContext context) {
    switch (fontStyle) {
      case FontStyle.primary:
        return context.theme.appColors.fontPrimary;
      case FontStyle.secondary:
        return context.theme.appColors.fontSecondary;
      case FontStyle.territiary:
        return context.theme.appColors.fontSecondary;
      default:
        return context.theme.appColors.fontPrimary;
    }
  }

  static TextStyle customTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    TextOverflow? overflow,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: 'opensans',
      letterSpacing: letterSpacing,
    );
  }
}
