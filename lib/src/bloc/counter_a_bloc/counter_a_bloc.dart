import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_a_event.dart';

part 'counter_a_state.dart';

class CounterABloc extends Bloc<CounterAEvent, CounterAState> {
  CounterABloc() : super(const CounterAState(count: 0)) {
    on<IncrementCounterA>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });

    on<ResetCounterA>((event, emit) {
      emit(state.copyWith(count: 0));
    });
  }
}
