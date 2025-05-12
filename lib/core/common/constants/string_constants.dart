class AppExceptions {
  /// Thrown when data cannot be parsed correctly
  static FormatException formatException([String? details]) => FormatException(
      'Data formatting error${details != null ? ": $details" : ""}');

  /// Thrown when something required is missing
  static Exception missingField(String fieldName) =>
      Exception('Missing required field: $fieldName');

  /// Thrown when a network request fails
  static Exception networkException([String? message]) =>
      Exception('Network error${message != null ? ": $message" : ""}');

  /// Thrown when user is unauthorized
  static Exception unauthorizedException([String? message]) =>
      Exception('Unauthorized${message != null ? ": $message" : ""}');

  /// Thrown when an unknown error occurs
  static Exception unknownException([String? message]) =>
      Exception('Unknown error${message != null ? ": $message" : ""}');
}
