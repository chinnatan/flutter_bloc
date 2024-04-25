part of 'counter_a_bloc.dart';

sealed class CounterAEvent extends Equatable {
  const CounterAEvent();

  @override
  List<Object> get props => [];
}

class IncrementCounterA extends CounterAEvent {
  const IncrementCounterA();
}

class ResetCounterA extends CounterAEvent {
  const ResetCounterA();
}
