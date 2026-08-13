import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Trả về Scaffold - Widget cung cấp b cục Material design cơ bản
    // Giống như một màn hình, đã được xây dựng sẵn
    return Scaffold(
      //Tiêu de của ứng dụng
      appBar: AppBar(
        // Tiêu đề
        title: Text("App 02"),
        // Mầu nền
        backgroundColor: Colors.blue,
        //Đổ bóng
        elevation: 4,
        actions: [
          IconButton(onPressed: () => (print("b1")), icon: Icon(Icons.search)),
          IconButton(onPressed: () => (print("b2")), icon: Icon(Icons.abc)),
          IconButton(
            onPressed: () => (print("b3")),
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),

      body: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow:[
              BoxShadow(
                color: Colors.grey,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),

            ]
          ),
          child: Align(
            alignment: Alignment.center,
            child: const Text(
              "Xin chào",
              style: TextStyle(color: Colors.yellowAccent, fontSize: 30),
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Click me!");
        },
        child: const Icon(Icons.call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}
