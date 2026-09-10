import 'package:flutter/material.dart';

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({super.key});

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
            // GestureDetector - Bắt các sự kiện
            // Có thể chứa bất kỳ các thành phần nào
            GestureDetector(
              onTap: (){
                print("Nội dung được Tab");
              },
              onDoubleTap: (){
                print("Nội dung được DoubleTab");
              } ,
              onPanUpdate: (details){
                print("Kéo - di chuyển: ${details.delta}");},
              child: Container(
                width: 130,
                height: 130,
                padding: EdgeInsets.all(10),
                child: Center(child: Text("Chạm vào tôi",
                style: TextStyle(color:Colors.red,

                ),)),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
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
