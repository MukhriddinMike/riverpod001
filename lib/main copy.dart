// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import './myProvider.dart';

// void main() {
//   runApp(ProviderScope(child: MyApp()));
// }

// final myProvider = Provider((ref) => 20);
// final myProviderSate = StateProvider((ref) => 100);

// class MyApp extends ConsumerWidget {
//   const MyApp({Key? key}) : super(key: key);

//   final int number = 1;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     int myNumber = ref.watch(myProvider);
//     int myNumber2 = ref.watch(thirdProvider);
//     int myNumberState = ref.watch(myProviderSate);
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.add),
//               onPressed: () => {
//                 ref.read(myProviderSate.state).state++,
//                 print("added "),
//               },
//             )
//           ],
//         ),
//         body: Center(child: Text("some number $myNumberState")),
//       ),
//     );
//   }
// }


// // https://www.youtube.com/watch?v=c5zEXOsbhtU&list=PLzaGtnxLcM7HYt-MhMZ-j0Bmeo4RqPHoS&index=6