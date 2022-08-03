import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("My Orders"),
      ),
      body: Container(
        color: Colors.transparent,
        child: ListView(
          children: [
            ItemOrder(),
            Divider(),
            ItemOrder(),
            Divider(),
            ItemOrder(),
            Divider(),
            ItemOrder(),
            Divider(),
            ItemOrder(),
            Divider(),
            ItemOrder(),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class ItemOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              //cot 1
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "assets/images/images 7.png",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              //cot 2
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Broccoli",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Text(
                    "Rate this product",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text("Delivered on 24 Feb 2021."),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          child: Icon(Icons.arrow_forward_ios_outlined),
          right: 20,
          top: 20,
        ),
      ],
    );
  }
}
