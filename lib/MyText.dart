import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

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
          IconButton(onPressed: () => (print("b3")), icon: Icon(Icons.more_horiz )),
        ],
      ),

      body: Center(
          child: Column(
            children: [
             const SizedBox(height: 30,),
              const Text("Xin chào!"),
              const SizedBox(height: 20,),
              const Text("Xin chào! các bạn đang lập trình flutter",
              textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  color: Colors.green,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Thay vì viết trực tiếp hàm gọi API và hàm useQuery vào bên trong giao diện (Component), chúng ta sẽ gom toàn bộ logic gọi dữ liệu vào một file riêng gọi là Custom Hook. Cách làm này giúp giao diện của bạn cực kỳ sạch sẽ, dễ bảo trì và có thể tái sử dụng logic này ở bất kỳ đâu trong dự án.",
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          )
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
