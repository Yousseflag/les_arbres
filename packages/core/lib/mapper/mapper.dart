/// Used for bidirectional transformation of data (network model to domain model / database model to domain model.. etc)
abstract interface class Mapper<E, D> {
    D mapFromEntity(E type);
    E mapToEntity(D type);
}
