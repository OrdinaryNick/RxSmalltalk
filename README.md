# RxSmalltalk
Simple implementation of [ReactiveX](http://reactivex.io/) in Smalltalk (Pharo).

## Actual state
- Supports few creations methods for Observable: fromArray, just, empty, never, raise, ...
- Observable transformation functions: map, window, buffer, scan

## Some examples
Some of creation methods.

``` smalltalk
Observable array: { 'Nice' . 5 . 'Ok' }.
Observable empty.
Observable just: 1.
Observable never.
Observable raise: Error.
```

Some of transformation functions.

``` smalltalk
observable := Observable range: 1 to: 12.
(observable window: 2 skip: 3) subscribe: observer.
(observable map: [ :x | x - 1 ]) subscribe: observer
```

Some complex example

``` smalltalk
| observer observable |
observer := TranscriptObserver new.
observable := Observable range: 1 to: 10.
((((observable map: [ :x | x - 1 ]) map: [ :x | x asString , ' ']) scan: [:x :y | x == 0 ifTrue: [y] ifFalse: [x , y].])  buffer: 2 skip: 4) subscribe: observer.
```

## Posts about implementation
- [RxSmalltalk - implementation - part 1](https://www.reactiveworld.net/2018/03/11/RxSmalltalk-part01.html) - implementation of base of Observable type
- [RxSmalltalk - implementation - part 2](https://www.reactiveworld.net/2018/04/08/RxSmalltalk-part02.html) - Implementing other simple Observable types (Will be posted)

## Roadmap
- Add Disposable
- Add cancelability
- Add filter functions
- Add other Observable functions
