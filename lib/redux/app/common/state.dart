class CommonState {
  List<int> request1List;
  List<int> request2List;
  String testStr;
  CommonState({this.request1List, this.request2List, this.testStr});

  factory CommonState.initial() {
    return new CommonState(
      request1List: const [],
      request2List: const [],
      testStr: '',
    );
  }

  // 创建新对象
  CommonState copy({
    List<int> request1List,
    List<int> request2List,
  }) {
    return new CommonState(
      request1List: request1List ?? this.request1List,
      request2List: request2List ?? this.request2List,
    );
  }

  // 不创建新对象
  CommonState copy2({List<int> request1ListInput, List<int> request2ListInput, String testStrInput}) {
    this.request1List = request1ListInput ?? this.request1List;
    this.request2List = request2ListInput ?? this.request2List;
    this.testStr = testStrInput ?? this.testStr;
    return this;
  }

//  @override
//  bool operator ==(Object other) =>
//      identical(this, other) ||
//      other is CommonState && runtimeType == other.runtimeType && request1List == other.request1List && request2List == other.request2List;
//
//  @override
//  int get hashCode => request1List.hashCode ^ request2List.hashCode;
}
