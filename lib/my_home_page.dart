import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unit_testing_2/bloc/counter_bloc.dart';
import 'package:unit_testing_2/bloc/counter_event.dart';
import 'package:unit_testing_2/bloc/counter_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterBloc(),
        child: const _MainLayout()
       );
  }
}

class _MainLayout extends StatelessWidget {
  const _MainLayout();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return   Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text(""),
            ),
            body: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${state.count}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    context.read<CounterBloc>().add(const CounterIncrementEvent());

                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                SizedBox(height: 30,),

                FloatingActionButton(
                  onPressed: (){
                    context.read<CounterBloc>().add(const CounterDecrementEvent());
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.minimize_outlined),
                ),
                SizedBox(height: 30,),

                FloatingActionButton(
                  onPressed: (){
                    context.read<CounterBloc>().add(const RefreshEvent());
                  },
                  tooltip: 'Refresh',
                  child: const Icon(Icons.refresh),
                ),
              ],
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        });
  }
}
