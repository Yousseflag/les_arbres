final class HttpParams {
  final String baseURL;
  final int receiveTimeout;
  final int connectionTimeout;

  HttpParams({required this.baseURL, this.receiveTimeout = 5000, this.connectionTimeout = 3000});
}
