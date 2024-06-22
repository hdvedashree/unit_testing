import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_2/bloc/counter_event.dart';

void main() {
  group('CounterEvent Tests', () {
    test('CounterIncrementEvent test', () {
      // Arrange
      final event = CounterIncrementEvent();

      // Assert
      expect(event, isA<CounterEvent>());
      expect(event, isA<CounterIncrementEvent>());
    });

    test('CounterDecrementEvent test', () {
      // Arrange
      final event = CounterDecrementEvent();

      // Assert
      expect(event, isA<CounterEvent>());
      expect(event, isA<CounterDecrementEvent>());
    });

    test('RefreshEvent test', () {
      // Arrange
      final event = RefreshEvent();

      // Assert
      expect(event, isA<RefreshEvent>());
      expect(event, isA<CounterEvent>());
    });

    test('Equality test', () {
      // Arrange
      final event1 = CounterIncrementEvent();
      final event2 = CounterIncrementEvent();
      final event3 = RefreshEvent();

      // Assert
      expect(event1 == event2, isTrue); // Ensure equality of two identical events
      expect(event1 == event3, isFalse); // Ensure inequality of two different events
    });
  });
}
