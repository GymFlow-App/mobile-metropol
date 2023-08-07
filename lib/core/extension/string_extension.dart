extension StringExtensions on String? {
  String get getValueOrDefault {
    return this ?? "";
  }

  bool isEqualsLength(int length) {
    return getValueOrDefault.length == length;
  }
}
