// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Counter(),
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       scaffoldBackgroundColor: Color.fromARGB(255, 201, 215, 219),
//     ),
//   ));
// }

// class Counter extends StatefulWidget {
//   @override
//   State<Counter> createState() => _Counterps();
// }

// class _Counterps extends State<Counter> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("CouNter"),
//         backgroundColor: Color.fromARGB(8, 2, 48, 52),
//       ),
//       body:
//       Center( child:Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   counter += 3;
//                 });
//               },
//               child: Text("+")),
//           Text("$counter"),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   counter -= 3;
//                 });
//               },
//               child: Text("-"))
//         ],
//       ),),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             counter += 2;
//           });
//         },
//         child: Text("+"),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp(home:exp(),));
}

class exp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text(""),),
      body:Container(
  width: double.infinity, 
  height: 300,           
  decoration: BoxDecoration(

    gradient: LinearGradient(
      colors: [Colors.yellow, Colors.pink], // رنگ‌های مورد نظر شما
      begin: Alignment.topLeft,            // شروع رنگ از بالا چپ
      end: Alignment.bottomRight,          // پایان رنگ در پایین راست
    ),
  ),
  child: Center(
    child: Text("رنگ ترکیبی"),
  ),
)


    ));
  }
}
// class exp extends StatefulWidget {
//   @override
//   State<exp> createState() => _expState();
// }

// class _expState extends State<exp> {
  
//   DateTime now = DateTime.now(); 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("")),
//       body: Column(
//         children: [
//           ElevatedButton(onPressed: (){
//             setState(() {
              
              
//             });
//           }, child:Text("date"))
//         ],
//       ),
//     );
//   }
// }

