import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตะกร้าสินค้า'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'นี่คือตะกร้าสินค้า',
            ),
            // ใส่รายการสินค้าที่เพิ่มลงในตะกร้า
          ],
        ),
      ),
    );
  }
}
