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
