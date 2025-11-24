import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.red[900]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.red,

                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/en/5/5f/Original_Doge_meme.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  Text("kaittisak.chaychoophon"),
                  SizedBox(height: 5),
                  Text("kaitisak.chaychoopho@e-tecch.ac.th"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ข้อมูลส่วนตัว'),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์โทร"), Text("093-5587-149")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.cake, color: Colors.red),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("วันเกิด"), Text("19/07/2549")],
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.pin_drop, color: Colors.orange),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("ที่อยู่"), Text("ชลบุรี")],
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("การศึกษา"),
                          Text("เทคโนโลยีภาคตะวันออก(อีเทค)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(2000, 40),
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Go to second"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: ClipOval(
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/en/5/5f/Original_Doge_meme.jpg",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("5"), Text("กำลังติดตาม")]),
                      SizedBox(width: 15),
                      Container(
                        width: 1.5,
                        height: 40,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("3k"), Text("ผู้ติดตาม")]),
                      SizedBox(width: 15),
                      Container(
                        width: 1.5,
                        height: 40,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("300"), Text("ถูกใจและบันทึก")]),
                    ],
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kaittisak Chaychoophon",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                  SizedBox(width: 20, height: 5),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.tiktok, color: Colors.grey),
                        Text(
                          "Kaittisak",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_drop_down, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(width: 10, height: 10),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 0),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/second'),
                          child: Text(
                            "ติดตาม",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(300, 40),
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(width: 50, height: 13),
                              Icon(Icons.share, color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 0, bottom: 10, left: 12),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        SizedBox(width: 10),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSEcJnrFtqDth4q7449H9SOHrwRN5FJR7WMg&s",
                          width: 165,
                          height: 320,
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          "https://i.pinimg.com/236x/40/85/1a/40851ac35f45d283b8f6acd3a0bae99c.jpg",
                          width: 170,
                          height: 320,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
