import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

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

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              /*
              TextFile là 1 widget cho  phép người dùng nhập văn bản
              Đây là 1 phần thiết yếu, quan trọng trong hầu hết các ứng dụng phức tạp
              */
              TextField(
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập vào họ tên của mình",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Example@gamil.com",
                  helperText: "Nhập vào địa chỉ email cá nhân!",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.pinkAccent,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Phone",
                  hintText: "Nhập số điện thoại",
                  helperText: "Nhập số của bạn",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Ngày sinh",
                  hintText: "dd/mm/yyy",
                  helperText: "Nhập vào ngày sinh của bạn",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Mật khâu",
                  border: OutlineInputBorder(),
                ),
               obscureText: true,
                obscuringCharacter: "*",
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) { print("Đang nhập: $value");},
                decoration: InputDecoration(
                  labelText: "Câu hỏi bí mật",
                  border: OutlineInputBorder(),
                ),

              ),
            ],
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
