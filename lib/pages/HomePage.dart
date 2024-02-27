import 'package:flutter/material.dart';
import 'package:indy_bar/pages/LoginPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME'),
      ),
      body: Container(
        // ใช้ DecorationImage เพื่อกำหนดภาพพื้นหลัง
        decoration: BoxDecoration(
          image: DecorationImage(
            // กำหนดภาพที่จะใช้เป็นพื้นหลัง
            image: AssetImage('assets/whiskey.jpg'),
            // ปรับขนาดภาพให้เต็มจอ
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      20.0), // กำหนดรูปร่างของกรอบให้เป็นโค้ง
                  color: Color.fromARGB(199, 238, 238, 238), // สีของกรอบ
                ),
                padding:
                    EdgeInsets.all(10.0), // กำหนดระยะห่างของข้อความภายในกรอบ
                child: Text(
                  'Welcome to InDyBar!',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomePage(),
    );
  }
}
