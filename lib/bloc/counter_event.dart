
import 'package:equatable/equatable.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object> get props => [];
}



final class CounterIncrementEvent extends CounterEvent {
  const CounterIncrementEvent();

  @override
  List<Object> get props => [];
}


final class CounterDecrementEvent extends CounterEvent {
  const CounterDecrementEvent();

  @override
  List<Object> get props => [];
}

final class RefreshEvent extends CounterEvent {
  const RefreshEvent();

  @override
  List<Object> get props => [];
}


