// // // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(MaterialApp(
// // //     home: Counter(),
// // //     debugShowCheckedModeBanner: false,
// // //     theme: ThemeData(
// // //       scaffoldBackgroundColor: Color.fromARGB(255, 201, 215, 219),
// // //     ),
// // //   ));
// // // }

// // // class Counter extends StatefulWidget {
// // //   @override
// // //   State<Counter> createState() => _Counterps();
// // // }

// // // class _Counterps extends State<Counter> {
// // //   int counter = 0;
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text("CouNter"),
// // //         backgroundColor: Color.fromARGB(8, 2, 48, 52),
// // //       ),
// // //       body:
// // //       Center( child:Row(
// // //         mainAxisAlignment: MainAxisAlignment.center,
// // //         children: [
// // //           ElevatedButton(
// // //               onPressed: () {
// // //                 setState(() {
// // //                   counter += 3;
// // //                 });
// // //               },
// // //               child: Text("+")),
// // //           Text("$counter"),
// // //           ElevatedButton(
// // //               onPressed: () {
// // //                 setState(() {
// // //                   counter -= 3;
// // //                 });
// // //               },
// // //               child: Text("-"))
// // //         ],
// // //       ),),
// // //       floatingActionButton: FloatingActionButton(
// // //         onPressed: () {
// // //           setState(() {
// // //             counter += 2;
// // //           });
// // //         },
// // //         child: Text("+"),
// // //       ),
// // //     );
// // //   }
// // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:go_router/go_router.dart';

// // // void main() {
// // //   runApp(MaterialApp(home:exp(),));
// // // }

// // // class exp extends StatelessWidget {
// // //   @override
// // //   build(BuildContext context) {
// // //     return (Scaffold(
// // //       appBar: AppBar(title: Text(""),),
// // //       body:Container(
// // //   width: double.infinity,
// // //   height: 300,
// // //   decoration: BoxDecoration(

// // //     gradient: LinearGradient(
// // //       colors: [Colors.yellow, Colors.pink], // رنگ‌های مورد نظر شما
// // //       begin: Alignment.topLeft,            // شروع رنگ از بالا چپ
// // //       end: Alignment.bottomRight,          // پایان رنگ در پایین راست
// // //     ),
// // //   ),
// // //   child: Center(
// // //     child: Text("رنگ ترکیبی"),
// // //   ),
// // // )

// // //     ));
// // //   }
// // // }
// // // // class exp extends StatefulWidget {
// // // //   @override
// // // //   State<exp> createState() => _expState();
// // // // }

// // // // class _expState extends State<exp> {

// // // //   DateTime now = DateTime.now();
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(title: Text("")),
// // // //       body: Column(
// // // //         children: [
// // // //           ElevatedButton(onPressed: (){
// // // //             setState(() {

// // // //             });
// // // //           }, child:Text("date"))
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // import 'dart:async';
// // import 'package:flutter/material.dart';

// // class MyPage extends StatefulWidget {
// //   MyPage();

// //   @override
// //   State<MyPage> createState() => MyPageState();
// // }

// // class MyPageState extends State<MyPage> {

// //   int number = 60;
// //   Timer? timer;

// //   @override
// //   void initState() {
// //     timer = Timer.periodic(
// //       Duration(seconds: 1),
// //       (timer) {
// //         setState(() {
// //           if (number > 0) {
// //             number--;
// //           } else {
// //             timer.cancel();
// //           }
// //         });
// //       },
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     timer?.cancel();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: Text(
// //           "$number",
// //           style: TextStyle(fontSize: 50),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   // حذف super.key و تغییر به سازنده ساده
//   const MyApp();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: const [
//         DefaultMaterialLocalizations.delegate,
//         DefaultWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: const [Locale('fa', 'IR')],
//       locale: const Locale('fa', 'IR'),
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const BookStoreScreen(),
//     );
//   }
// }

// class BookStoreScreen extends StatefulWidget {
//   // حذف super.key و تغییر به سازنده ساده
//   const BookStoreScreen();

//   @override
//   State<BookStoreScreen> createState() => _BookStoreScreenState();
// }

// class _BookStoreScreenState extends State<BookStoreScreen> {
//   int _selectedIndex = 0;

//   // لیست کتاب‌ها
//   final List<String> _romanBooks = ['بینوایان', 'صد سال تنهایی', 'شازده کوچولو', 'جنایت و مکافات'];
//   final List<String> _physicsBooks = ['فیزیک هالیدی', 'تاریخچه زمان (هاوکینگ)', 'فیزیک کوانتوم', 'نسبیت انشتین'];
//   final List<String> _psychologyBooks = ['انسان در جستجوی معنا', 'اثر مرکب', 'تختت را مرتب کن', 'تفکر سریع و کند'];

//   // ویجت سازنده لیست کتاب‌ها
//   Widget _buildBookList(List<String> books, Color themeColor) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemCount: books.length,
//       itemBuilder: (context, index) {
//         return Card(
//           elevation: 4,
//           margin: const EdgeInsets.symmetric(vertical: 8),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           child: ListTile(
//             leading: CircleAvatar(
//               backgroundColor: themeColor.withOpacity(0.2),
//               child: Icon(Icons.book, color: themeColor),
//             ),
//             title: Text(
//               books[index],
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             subtitle: const Text('نویسنده: نام نویسنده کتاب'),
//             trailing: Icon(Icons.arrow_forward_ios, size: 16, color: themeColor),
//             onTap: () {},
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> pages = [
//       _buildBookList(_romanBooks, Colors.pink),
//       _buildBookList(_physicsBooks, Colors.blue),
//       _buildBookList(_psychologyBooks, Colors.green),
//     ];

//     final List<String> titles = ['کتاب‌های رمان', 'کتاب‌های فیزیک', 'کتاب‌های روان‌شناسی'];
//     final List<Color> activeColors = [Colors.pink, Colors.blue, Colors.green];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text(titles[_selectedIndex], style: const TextStyle(fontWeight: FontWeight.bold)),
//         backgroundColor: activeColors[_selectedIndex],
//         foregroundColor: Colors.white,
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: pages[_selectedIndex],
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
//           ],
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//             child: GNav(
//               gap: 8,
//               activeColor: activeColors[_selectedIndex],
//               iconSize: 24,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               duration: const Duration(milliseconds: 300),
//               tabBackgroundColor: activeColors[_selectedIndex].withOpacity(0.1),
//               color: Colors.black54,
//               selectedIndex: _selectedIndex,
//               onTabChange: (index) {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               },
//               tabs: const [
//                 GButton(
//                   icon: Icons.auto_stories,
//                   text: 'رمان',
//                 ),
//                 GButton(
//                   icon: Icons.science,
//                   text: 'فیزیک',
//                 ),
//                 GButton(
//                   icon: Icons.psychology,
//                   text: 'روان‌شناسی',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text("BoOkStOrE"),
            ],
          ),
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          bottom: TabBar(
              labelColor: const Color.fromARGB(255, 126, 97, 206),
              unselectedLabelColor: const Color.fromARGB(255, 100, 99, 99),
              indicatorColor: Color.fromARGB(252, 98, 113, 114),
              tabs: [
                Tab(text: "Novel"),
                Tab(text: "Hestory"),
                Tab(text: "Science"),
              ]),
        ),
        body: Column(
          children: [
            Booktile("Novel", 0),
            Booktile("Hestory", 1),
            Booktile("Science", 2),
          ],
        ),
      ),
    ));
  }
}

Widget Booktile(String title, int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Padding(padding: EdgeInsets.all(8),child:(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("title"),
          TextButton(onPressed: () {}, child: Text("SeeMore",style: TextStyle(color: Colors.indigoAccent),))
        ],
     )
     ),),
     Divider(),
  
    ],
  );
}
