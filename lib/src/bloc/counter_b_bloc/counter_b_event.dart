part of 'counter_b_bloc.dart';

sealed class CounterBEvent extends Equatable {
  const CounterBEvent();

  @override
  get props => [];
}

class IncrementCounterB extends CounterBEvent {
  const IncrementCounterB();
}

class ResetCounterB extends CounterBEvent {
  const ResetCounterB();
}
