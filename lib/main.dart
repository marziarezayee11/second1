import 'package:flutter/material.dart';
import 'package:second1/BookREP/Bookrep.dart';
import 'package:second1/models/book.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // حذف نوار تست برای تمیزی ظاهر
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      scaffoldBackgroundColor: const Color(0xFFF8F9FA), // پس‌زمینه لایت و شیک
    ),
    home: HomePage(),
  ));
}

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
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: Text(
            "BoOkStOrE",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              letterSpacing: 1.5,
              color: const Color(0xFF2D3142),
            ),
          ),
          centerTitle: true,
          leading: Icon(Icons.menu, color: const Color(0xFF2D3142)),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.search, color: const Color(0xFF2D3142))
            )
          ],
          bottom: TabBar(
              labelColor: const Color.fromARGB(255, 126, 97, 206),
              unselectedLabelColor: const Color.fromARGB(255, 160, 160, 160),
              indicatorColor: const Color.fromARGB(255, 126, 97, 206),
              indicatorWeight: 3,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              tabs: [
                Tab(text: "Novel"),
                Tab(text: "History"),
                Tab(text: "Science"),
              ]),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(), // اسکرول نرم و روان
          child: Column(
            children: [
              Booktile("Novel", 0),
              BookList(BookREP.novels),
              Booktile("Hestory", 1),
              BookList(BookREP.history),
              Booktile("Science", 2),
              BookList(BookREP.science),
              SizedBox(height: 20), // فاصله خالی پایینی صفحه
            ],
          ),
        ),
      ),
    ));
  }
}

Widget Booktile(String title, int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title, // نمایش داینامیک نام دسته‌بندی شما
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.w800,
                color: const Color(0xFF2D3142)
              ),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                ),
                child: Text(
                  "See More",
                  style: TextStyle(
                    color: Colors.indigoAccent, 
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  ),
                ))
          ],
        )),
      ),
    ],
  );
}

Widget SBookL(Book book) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    child: Card(
      elevation: 3, // ایجاد سایه ملایم برای کارت
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)), // حاشیه گرد کارت
      child: Container(
        height: 160,
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            // بخش عکس کتاب با گوشه‌های گرد شده
            Expanded(
              flex: 2, 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  book.image, 
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: Icon(Icons.book, color: Colors.grey[600]),
                    );
                  },
                ),
              )
            ),
            SizedBox(width: 14), // فاصله بین عکس و اطلاعات
            // بخش اطلاعات متنی کتاب
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // چیدمان عالی محتوا
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis, // جلوگیری از خرابی متن‌های بلند
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2D3142)
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        book.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13, 
                          color: Colors.grey[600],
                          height: 1.3
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${book.price.toStringAsFixed(0)} AFG", // نمایش تمیز قیمت
                        style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 126, 97, 206)
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1EFFB),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          constraints: BoxConstraints(), // فشرده‌سازی اندازه دکمه
                          padding: EdgeInsets.all(6),
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios, // آیکون زیباتر برای ناوبری
                            size: 14, 
                            color: const Color.fromARGB(255, 126, 97, 206)
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget BookList(List<Book> Books) {
  return Column(
    children: [
      ...Books.map((book) => SBookL(book)).toList(),
    ]
  );
}
