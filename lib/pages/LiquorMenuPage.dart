import 'package:flutter/material.dart';

class LiquorMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MENU'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/whiskey.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  'InDyBarMenu',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: liquors.length,
                  itemBuilder: (BuildContext context, int index) {
                    final liquor = liquors[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                LiquorDetailPage(liquor: liquor),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              liquor.imagePath,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            Text(
                              liquor.name,
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Liquor {
  final String name;
  final double price;
  final String description;
  final String imagePath; // Add imagePath property

  Liquor({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath, // Require imagePath when creating Liquor
  });
}

List<Liquor> liquors = [
  Liquor(
    name: 'ICE',
    price: 50,
    description: 'น้ำแข็งสำหรับใส่เครื่องดื่ม',
    imagePath: 'assets/ice.jpg', // Provide image path
  ),
  Liquor(
    name: 'WINE',
    price: 200,
    description: 'ไวน์ที่ผลิตจากองุ่นอันหอมหวาน',
    imagePath: 'assets/wine.jpg',
  ),
  Liquor(
    name: 'HONGTHONG1',
    price: 200,
    description: 'เหล้าหงส์ทองรูปแบบแบน',
    imagePath: 'assets/hongthong1.jpg',
  ),
  Liquor(
    name: 'HONGTHONG2',
    price: 200,
    description: 'เหล้าหงส์ทองรูปแบบกรม',
    imagePath: 'assets/hongthong2.jpg',
  ),
  // Add more liquors with their respective image paths
];

class LiquorDetailPage extends StatelessWidget {
  final Liquor liquor;

  LiquorDetailPage({required this.liquor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(liquor.name),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/alcohol1.jpg'), // เปลี่ยนเป็นภาพที่ต้องการ
            fit: BoxFit.cover, // ให้ภาพทำการขยายเต็มพื้นที่ของ Container
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  liquor.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'ราคา: ${liquor.price.toString()} บาท',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  liquor.description ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // แสดงข้อความเมื่อกดปุ่ม "สั่ง"
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('สั่งเรียบร้อยแล้ว'),
                        content: Text('โปรดรอพนักงานไปส่งที่โต๊ะครับ'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('ตกลง'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('สั่ง', style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
