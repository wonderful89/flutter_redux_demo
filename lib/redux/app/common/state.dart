class CommonState {
  List<int> request1List;
  List<int> request2List;
  CommonState({this.request1List, this.request2List});

  factory CommonState.initial() {
    return new CommonState(
      request1List: const [],
      request2List: const [],
    );
  }
}
