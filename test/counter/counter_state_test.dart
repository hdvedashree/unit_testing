import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_2/bloc/counter_state.dart';

void main() {
  group('CounterState Tests', () {
    test('Initial state test', () {
      // Arrange
      const initialState = CounterState();

      // Assert
      expect(initialState.status, ReportStatus.initial);
      expect(initialState.count, 5);
    });

    test('Custom state test', () {
      // Arrange
      const customState = CounterState(status: ReportStatus.loading, count: 10);

      // Assert
      expect(customState.status, ReportStatus.loading);
      expect(customState.count, 10);
    });

    test('Equality test', () {
      // Arrange
      const state1 = CounterState();
      const state2 = CounterState();
      const state3 = CounterState(status: ReportStatus.success, count: 5);

      // Assert
      expect(state1, equals(state2)); // Ensure equality of two identical states
      expect(state1 == state3, isFalse); // Ensure inequality of two different states
    });

    test('CopyWith test', () {
      // Arrange
      const initialState = CounterState();
      final modifiedState = initialState.copyWith(status: ReportStatus.success);

      // Assert
      expect(modifiedState.status, ReportStatus.success);
      expect(modifiedState.count, 5); // Ensure other fields remain unchanged
    });
  });
}