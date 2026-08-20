import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  const MyBotton({super.key});

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
        child: Column(
          children: [
            SizedBox(height: 50),
            // ElevateButton là một button nối với một hiệu ứng đổ bóng
            // thường được dùng cho các hành động chính trong ứng dụng
            ElevatedButton(
              onPressed: () {
                print("ElevateButton");
              },
              child: Text(
                "ElevateButton",
                style: TextStyle(color: Colors.black54, fontSize: 24),
              ),
            ),
            //   Textbutton là một nút bấm phẳng không có đổ bóng
            //   Thường dùng cho các hành động thứ yếu
            //   Hoặc trong các thành phần như Dailog, Card
            TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: Text(
                "TextButton",
                style: TextStyle(color: Colors.black54, fontSize: 24),
              ),
            ),
            // OutlineButton là button có viền bao quanh
            // không có màu nền
            // Phù hợp cho các hành động thay thế
            OutlinedButton(onPressed:  () {
              print("OutlineButton");
            }, child: Text(
              "OutlineButton",
              style: TextStyle(color: Colors.black54, fontSize: 24),
            ),
            ),
            //IconButton là button chỉ có Icon
            //Không có văn bản, thờng dùng trong AppBar, ToolBar
            IconButton(
                onPressed: () {
                  print("IconButton");
                },
                icon: Icon(Icons.favorite)),
          //   FloatActionButton là button floating hình tròn
            // nổi trên giao diện
            // Thường dùng cho các hành động chính trong ứng dụng
            FloatingActionButton(
              onPressed: () {
                print("FloatingActionButton");
              },
              child: Icon(Icons.add),
            ),
          ],
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
