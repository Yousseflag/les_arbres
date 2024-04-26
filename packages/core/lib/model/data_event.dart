sealed class DataEvent<T> {
    final T? data;
    final Exception? error;
    const DataEvent({this.data, this.error});
}

class Success<T> extends DataEvent<T> {
    const Success(T data): super(data: data);
}

class Failure<T> extends DataEvent<T> {
    const Failure(Exception error, T? data): super(error: error, data: data);
}
