import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_2/bloc/counter_bloc.dart';
import 'package:unit_testing_2/bloc/counter_event.dart';
import 'package:unit_testing_2/bloc/counter_state.dart';

void main() {
  group('CounterBloc', () {
  //  const mockCounter =  Counter();

    setUp(() {

    });

    CounterBloc buildBloc(){
      return CounterBloc();
    }

    //To check the Bloc is created successfully
    group("Constructor", () {
      test("works properly", () {
        expect(buildBloc, returnsNormally);
      });

      test("has correct initial state", () {
        expect(buildBloc().state, equals(const CounterState()));
      });


    });
    
    group("CounterIncrementPressed", () {
      blocTest(
        "emits [CounterState] when the user taps the increment button once",
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(const CounterIncrementEvent()),
        expect: () =>[
          const CounterState(
              status: ReportStatus.loading
          ),
          const CounterState(
            count: 6,
            status: ReportStatus.success
          )
        ]
      );

      blocTest(
          "emits [CounterState] when the user taps the increment button twice",
          build: () => CounterBloc(),
          act: (bloc) => bloc
              ..add(const CounterIncrementEvent())
              ..add(const CounterIncrementEvent()),
          skip: 1,
          expect: () =>[
            const CounterState(
                status: ReportStatus.success, count: 6
            ),
            const CounterState(
                status: ReportStatus.loading, count: 6
            ),
            const CounterState(
                count: 7,
                status: ReportStatus.success
            )


          ]
      );
    });

    group("CounterDecrementPressed", () {
      blocTest(
        "emits [CounterState] when the user taps the decrement button once",
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(const CounterDecrementEvent()),
        expect: () =>[
          const CounterState(
              status: ReportStatus.loading
          ),
          const CounterState(
            count: 4,
            status: ReportStatus.success
          )
        ]
      );

      blocTest(
          "emits [CounterState] when the user taps the decrement button twice",
          build: () => CounterBloc(),
          act: (bloc) => bloc
              ..add(CounterDecrementEvent())
              ..add(CounterDecrementEvent()),
          skip: 1,
          expect: () =>[
            const CounterState(
                status: ReportStatus.success, count: 4
            ),
            const CounterState(
                status: ReportStatus.loading, count: 4
            ),
            const CounterState(
                count: 3,
                status: ReportStatus.success
            )
          ]
      );
    });

    group("CounterRefreshPressed", () {
      blocTest(
        "emits [CounterState] when the user taps the refresh button once",
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(const RefreshEvent()),
        expect: () =>[
          const CounterState(
            status: ReportStatus.loading
          ),
          const CounterState(
              count: 0,
              status: ReportStatus.success
          )
        ]
      );

    });

  });
}
