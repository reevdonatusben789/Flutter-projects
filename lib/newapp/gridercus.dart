// import 'package:flutter/material.dart';

// class gridcus extends StatefulWidget {
//   const gridcus({super.key});

//   @override
//   State<gridcus> createState() => _gridcusState();
// }

// class _gridcusState extends State<gridcus> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:1), childrenDelegate: SliverChildBuilderDelegate((contex,index){
//         return 
//         ListTile(
//           leading: Icon(Icons.contact_emergency),
//           title: Text('Emergency'),
//           trailing: Icon(Icons.call),
//         );
//       })),
//     );
//   }
// }
import 'package:flutter/material.dart';

class gridcus extends StatefulWidget {
  const gridcus({super.key});

  @override
  State<gridcus> createState() => _gridcusState();
}

class _gridcusState extends State<gridcus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
  return
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 300,
      color: Colors.amber,
    ),
  );
}
)
));
  }}
