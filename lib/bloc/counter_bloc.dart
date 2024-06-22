
import 'package:bloc/bloc.dart';
import 'package:unit_testing_2/bloc/counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterIncrementEvent>(_counterIncrementEvent);
    on<CounterDecrementEvent>(_counterDecrementEvent);
    on<RefreshEvent>(_refreshEvent);
  }

  Future<void> _counterIncrementEvent(
    CounterIncrementEvent event,
    Emitter<CounterState> emit,
  ) async {
    emit(state.copyWith(status: ReportStatus.loading));

    var localCount = state.count + 1;
    emit(state.copyWith(count: localCount, status: ReportStatus.success));
  }

  Future<void> _counterDecrementEvent(
    CounterDecrementEvent event,
    Emitter<CounterState> emit,
  ) async {
    emit(state.copyWith(status: ReportStatus.loading));

    var localCount = state.count <= 0 ? 0 : state.count - 1;
    emit(state.copyWith(count: localCount, status: ReportStatus.success));
  }

  Future<void> _refreshEvent(
    RefreshEvent event,
    Emitter<CounterState> emit,
  ) async {
    emit(state.copyWith(status: ReportStatus.loading));

    emit(state.copyWith(count: 0, status: ReportStatus.success));
  }


}
