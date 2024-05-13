sealed class DataEvent<T> {
    const DataEvent();
}

class Success<T> extends DataEvent<T> {
  final T data;
  const Success(this.data);
}

class Failure<T> extends DataEvent<T> {
  final T? data;
  final Exception error;
  const Failure(this.error, this.data);
}
