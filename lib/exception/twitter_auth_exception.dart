class TwitterAuthException implements Exception {
  TwitterAuthException(
    this.message,
  );

  final String message;

  @override
  String toString() {
    return 'Twitter auth error: $message';
  }
}
