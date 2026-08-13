import 'package:flutter/material.dart';

class MyScaffod extends StatelessWidget {
  const MyScaffod({super.key});

  @override
  Widget build(BuildContext context) {
    // Trả về Scaffold - Widget cung cấp b cục Material design cơ bản
    // Giống như một màn hình, đã được xây dựng sẵn
    return Scaffold(
      //Tiêu de của ứng dụng
      appBar: AppBar(
        title: Text("App 02"),
      ),

      backgroundColor: Colors.orangeAccent,

      body: Center(child: Text("Nội dung chính"),),

      floatingActionButton: FloatingActionButton(onPressed: (){print("Click me!");},
        child: const Icon(Icons.call),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Trang chủ"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Tìm kiếm"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Cá nhân"),
      ]),
    );
  }
}
