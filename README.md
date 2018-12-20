a flutter redux test demo.

### redux 中间件执行顺序
```dart
List<NextDispatcher> _createDispatchers(
    List<Middleware<State>> middleware,
    NextDispatcher reduceAndNotify,
  ) {
    final dispatchers = <NextDispatcher>[]..add(reduceAndNotify);

    // Convert each [Middleware] into a [NextDispatcher]
    for (var nextMiddleware in middleware.reversed) {
      final next = dispatchers.last;
      
      dispatchers.add(
        (dynamic action) => nextMiddleware(this, action, next),
      );
    }

    return dispatchers.reversed.toList();
  }
```

![](https://github.com/wonderful89/flutter_redux_demo/blob/master/middles_1.png)
![](https://github.com/wonderful89/flutter_redux_demo/blob/master/middles_2.png)

### 经过测试

* state reduce函数中必须创建新的对象。如果不创建，始终不会受到更新的通知（即使有相关的==重载）
* 换句话说，创建新对象后，**不需要重载==**，就可以达到通知变更的信息。
