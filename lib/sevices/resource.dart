class Resource<T> {
  Status status;
  T data;
  String message;

  Resource.loading(this.message) : status = Status.LOADING;

  Resource.completed(this.data) : status = Status.COMPLETED;

  Resource.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum Status { LOADING, COMPLETED, ERROR }
