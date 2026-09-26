// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainScrollScreen(), // صفحه اصلی که قابلیت اسکرول دارد
//     );
//   }
// }

// // این ویجت وظیفه مدیریت اسکرول بین صفحات را دارد
// class MainScrollScreen extends StatefulWidget {
//   @override
//   _MainScrollScreenState createState() => _MainScrollScreenState();
// }

// class _MainScrollScreenState extends State<MainScrollScreen> {
//   // کنترلر برای اینکه بتونیم با دکمه هم صفحات رو جابه‌جا کنیم
//   final PageController _pageController = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // اصل کار اینجاست: PageView به شما اجازه اسکرول می‌دهد
//       body: PageView(
//         controller: _pageController,
//         // جهت اسکرول: افقی (راست و چپ) -> می‌توانید به vertical (بالا و پایین) هم تغییر دهید
//         scrollDirection: Axis.horizontal, 
//         children: [
//           Page1(controller: _pageController),
//           Page2(controller: _pageController),
//           Page3(controller: _pageController),
//         ],
//       ),
//     );
//   }
// }

// // صفحه اول
// class Page1 extends StatelessWidget {
//   final PageController controller;
//   Page1({required this.controller}); // گرفتن کنترلر برای کار با دکمه

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 185, 203, 216),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
           
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // انیمیشن رفتن به صفحه بعدی (صفحه شماره ۱ چون شمارش از ۰ شروع میشه)
//                 controller.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
//               },
//               child: Text('contact'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // صفحه دوم
// class Page2 extends StatelessWidget {
//   final PageController controller;
//   Page2({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 200, 241, 203), 
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
           
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // رفتن به صفحه سوم (شماره ۲)
//                 controller.animateToPage(2, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
//               },
//               child: Text('Home'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // صفحه سوم
// class Page3 extends StatelessWidget {
//   final PageController controller;
//   Page3({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 242, 207, 151),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
           
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // برگشت به صفحه اول (شماره ۰)
//                 controller.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
//               },
//               child: Text('About'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

// تنظیمات آدرس صفحات (بسیار ساده)
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    // صفحه اول
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    // صفحه دوم (name: آخر آدرس یعنی اینجا نام را تحویل می‌گیریم)
    GoRoute(
      path: '/details/:name',
      builder: (context, state) {
        // نام را از آدرس بیرون می‌کشیم
        String userSelectedName = state.pathParameters['name']!;
        // نام را به صفحه دوم می‌فرستیم
        return DetailsScreen(userSelectedName);
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router, // معرفی به برنامه
    );
  }
}

// --- صفحه اول ---
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('صفحه اول')),
      body: Center(
        child: ElevatedButton(
          child: Text('فرستادن نام "احمد" به صفحه بعد'),
          onPressed: () {
            // رفتن به صفحه بعد و گذاشتن نام احمد در آدرس
            context.go('/details/Ahmad');
          },
        ),
      ),
    );
  }
}

// --- صفحه دوم ---
class DetailsScreen extends StatelessWidget {
  // یک متغیر ساده برای ذخیره نام
  final String incomingName;

  // سازنده (Constructor) بسیار ساده بدون کلمات پیچیده
  DetailsScreen(this.incomingName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('صفحه دوم')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // نشان دادن نامی که از صفحه قبل آمده
            Text(
              'نام فرستاده شده: $incomingName',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('برگشت'),
              onPressed: () {
                context.go('/'); // برگشت به صفحه اول
              },
            ),
          ],
        ),
      ),
    );
  }
}

