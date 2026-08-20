import 'package:flutter/material.dart';

class MyBotton_2 extends StatelessWidget {
  const MyBotton_2({super.key});

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
                "ElevateButton"
              ),
              style: ElevatedButton.styleFrom(
                //Màu nền
                backgroundColor: Colors.green,
                //Màu của các nội dung bên trong
                foregroundColor: Colors.white,
                //Màu của đổ bóng
                shadowColor: Colors.red,


                //Định dạng khối hình chữ nhật
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 30),
                //Độ rộng của đổ bóng
                elevation: 20,

              ),

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
