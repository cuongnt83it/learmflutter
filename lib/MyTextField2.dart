import 'package:flutter/material.dart';

class MyTextField2 extends StatefulWidget {

  @override
  State createState() {
    return _MyTextField2Sate();
  }
}

class _MyTextField2Sate extends State<MyTextField2> {
  final _textControler = TextEditingController();
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // Tiêu đề của ứng dụng
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.yellowAccent,
      //  Đổ bóng
        elevation: 4,
        actions: [
          IconButton(onPressed: (){print("search");}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){print("Menu");}, icon: Icon(Icons.menu)),
          IconButton(onPressed: (){print("More");}, icon: Icon(Icons.more_horiz)),

        ],

      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20),

            TextField(
              controller: _textControler,
              decoration: InputDecoration(
                labelText: "Nhập thông tin",
                hintText: "Thông tin của bạn",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textControler.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
              onChanged: (value){
                setState(() {
                  _inputText = value;
                });
              },
            ),
            SizedBox(height: 20,),
            Text("Nội dung nhập : $_inputText"),
          ],
        ),
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
