import 'package:func/func.dart';
import 'package:sealed_unions/union_4.dart';

class Union4Second<A, B, C, D> implements Union4<A, B, C, D> {
  final B _value;

  Union4Second(this._value);

  @override
  void continued(
    VoidFunc1<A> continuationFirst,
    VoidFunc1<B> continuationSecond,
    VoidFunc1<C> continuationThird,
    VoidFunc1<D> continuationFourth,
  ) {
    continuationSecond(_value);
  }

  @override
  R join<R>(
    Func1<A, R> mapFirst,
    Func1<B, R> mapSecond,
    Func1<C, R> mapThird,
    Func1<D, R> mapFourth,
  ) {
    return mapSecond(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union4Second &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
