import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ShopUiPage extends StatefulWidget {
  @override
  _ShopUiPageState createState() => _ShopUiPageState();
}

class _ShopUiPageState extends State<ShopUiPage> {
  final List<String> images = [
    'assets/images/ic_image.jpg',
    'assets/images/ic_image.jpg',
    'assets/images/ic_image.jpg',
    'assets/images/ic_image.jpg',
    'assets/images/ic_image.jpg',
    'assets/images/ic_image.jpg',
    'assets/images/ic_image.jpg',
    'assets/images/ic_image.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text("Shop UI"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orangeAccent,
              ),
              child: Center(
                child: Text("8"),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_image.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.2),
                    ],
                    begin: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 35),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Shop Now"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: images.map((e) => _itemList(e)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemList(String image) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        height: 300,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
