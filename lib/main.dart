import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './myProvider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class myNotifer extends StateNotifier<List<String>> {
  myNotifer() : super([]);

  void addString(String stringToAdd) {
    state = [...state, stringToAdd];
  }
}

final myProvider = StateNotifierProvider((ref) => myNotifer());

class MyApp extends ConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  final int number = 1;
  Random rand = Random();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listOfStrings = ref.watch(myProvider) as List;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => {
                ref
                    .read(myProvider.notifier)
                    .addString("Mike ${rand.nextInt(100)}")
              },
            )
          ],
        ),
        body: Center(
            child: Column(
          children: [...listOfStrings.map((string) => Text(string))],
        )),
      ),
    );
  }
}


// https://www.youtube.com/watch?v=c5zEXOsbhtU&list=PLzaGtnxLcM7HYt-MhMZ-j0Bmeo4RqPHoS&index=6