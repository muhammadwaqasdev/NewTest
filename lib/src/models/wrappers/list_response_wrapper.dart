class ListResponseWrapper<T> {
  final List<T> data;
  final int total;

  ListResponseWrapper(this.data, this.total);
}
