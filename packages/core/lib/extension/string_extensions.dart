extension StringExtensions on String? {
  String get stringOrEmptyLabel => this ?? '-----';
  
  static String joinParams(List<String?> params) {
    return params.nonNulls.join(' ');
  }
}
