import 'dart:developer';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_url.freezed.dart';

@freezed
abstract class ImageUrl with _$ImageUrl {
  const factory ImageUrl(String? url) = _ImageUrl;
  const ImageUrl._();

  static const String _baseUrl = 'https://image.tmdb.org/t/p/';

  /// Factory method to parse from JSON
  factory ImageUrl.fromJson(dynamic json) {
    if (json == null || (json is String && json.isEmpty)) {
      return ImageUrl(null);
    }
    if (json is String) {
      return ImageUrl(json);
    }
    throw FormatException('Invalid image path: $json');
  }

  /// Convert to JSON string
  dynamic toJson() => url;

  /// Get full URL with specific size
  String? withSize(String size) {
    if (url == null || url!.isEmpty) {
      return null;
    }
    return '$_baseUrl$size$url';
  }

  /// Size getters
  String? get w500 => withSize('w500');
  String? get original => withSize('original');
  String? get w200 => withSize('w200');
  String? get w780 => withSize('w780');
  String? get svg =>
      (url?.endsWith('.svg') ?? false) ? withSize('original') : '';
  bool get isSvg => url?.endsWith('.svg') ?? false;
  bool get isValid => url?.isNotEmpty ?? false;
}

class PlaceHolderImage {
  static String _getPlaceholderForSize(String size) {
    final dimensions = _getDimensionsForSize(size);
    return 'https://placehold.co/${dimensions}/png';
  }

  static String _getDimensionsForSize(String size) {
    switch (size) {
      case 'w100':
        return '100x100';
      case 'w200':
        return '200x300';
      case 'w500':
        return '500x750';
      case 'w780':
        return '780x439';
      case 'original':
        return '600x400';
      default:
        return '600x400';
    }
  }

  static String withSize(String size) {
    return _getPlaceholderForSize(size);
  }

  static String get w500 => withSize('w500');
  static String get original => withSize('original');
  static String get w200 => withSize('w200');
  static String get w100 => withSize('w100');
  static String get w780 => withSize('w780');
}
