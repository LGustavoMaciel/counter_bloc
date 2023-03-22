// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Counter ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  icon: Icon(Icons.add),
                  label: Text(''),
                ),
                TextButton.icon(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrement());
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
