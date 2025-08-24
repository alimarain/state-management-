import 'package:flutter/material.dart';
import 'package:learnstacked/ui/counter/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewmodel(),
      builder: (context, model, child) {
       return Scaffold(
          backgroundColor:  Color.fromARGB(255, 197, 192, 192),
          appBar: AppBar(title: Text('Counter View')),
           body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name: ${model.name}', style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),

                Text(
                  'Singleton Service Value: ${model.getCounterValueFromCounterService()}',
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: model.addValueCounterInSingletonService,
                  child: Text('Add '),
                ),

                SizedBox(height: 16),
                Text(
                  'Separate Instance Value: ${model.getCounterValueFromCounterServicSeparate()}',
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: model.addValueCounterInWithoutSingletonService,
                  child: Text('Add'),
                ),

                SizedBox(height: 16),
                Text(
                  'Local Counter: ${model.counter}',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: model.inc,
                      child: Text('Increment Local'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: model.dec,
                      child: Text('Decrement Local'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
