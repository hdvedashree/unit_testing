import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';


@freezed
class CounterState with _$CounterState{
  const factory CounterState({
    @Default(ReportStatus.initial)  ReportStatus status,
    @Default(5) int count
 }) = _CounterStateEvent;
}


enum ReportStatus {
  initial, loading,success,failure,noData
}