// import 'package:flutter/material.dart';
//
// class Lesson5 extends StatelessWidget {
//   const Lesson5({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Text(
//               'Go to next screen -> ',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             GestureDetector(
//               onTap: () => {
//                 Navigator.of(context).push();
//
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   color: Theme.of(context).colorScheme.primary,
//                 ),
//                 child: Text(
//                   'GO!',
//                   style: Theme.of(context).textTheme.bodyLarge,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
