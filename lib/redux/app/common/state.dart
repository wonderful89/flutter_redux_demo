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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommonState && runtimeType == other.runtimeType && request1List == other.request1List && request2List == other.request2List;

  @override
  int get hashCode => request1List.hashCode ^ request2List.hashCode;
}
