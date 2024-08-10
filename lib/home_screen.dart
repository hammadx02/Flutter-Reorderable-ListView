// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// final List<String> _products = [
//   'Apple 🍎',
//   'Mango 🥭',
//   'Orange 🍊',
//   'Banana 🍌',
//   'Strawbery 🍓',
//   'Cherry 🍒'
// ];

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Reorderable ListView',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.deepOrangeAccent,
//       ),
//       body: ReorderableListView.builder(
//         padding: EdgeInsets.all(10),
//         physics: BouncingScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Container(
//               key: ValueKey(_products[index]),
//               height: 100,
//               width: double.maxFinite,
//               decoration: BoxDecoration(
//                 color: Colors.deepOrangeAccent,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Center(
//                 child: Text(
//                   _products[index],
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             );
//           },
//           itemCount: _products.length,
//           onReorder: (oldIndex, newIndex) {
//             setState(() {
//               if (newIndex > oldIndex) {
//                 newIndex = newIndex - 1;
//               }
//               final element = _products.removeAt(oldIndex);
//               _products.insert(newIndex, element);
//             });
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> _products = [
  'Apple 🍎',
  'Mango 🥭',
  'Orange 🍊',
  'Banana 🍌',
  'Strawberry 🍓',
  'Cherry 🍒',
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reorderable ListView',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ReorderableListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            key: ValueKey(_products[index]),
            padding: const EdgeInsets.all( 10.0),
            child: Container(
              height: 80,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  _products[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: _products.length,
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex = newIndex - 1;
            }
            final element = _products.removeAt(oldIndex);
            _products.insert(newIndex, element);
          });
        },
      ),
    );
  }
}
