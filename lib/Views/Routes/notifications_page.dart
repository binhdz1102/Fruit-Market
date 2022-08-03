import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Notification"),
      ),
      body: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Today",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            ItemNotification(),
            Divider(),
            ItemNotification(),
            Divider(),
            ItemNotification(),
            SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Yesterday",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            ItemNotification(),
            Divider(),
            ItemNotification(),
            Divider(),
            ItemNotification(),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class ItemNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 120,
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          //////////////////////////cot 1//////////////////////////
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/images/images 7.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            flex: 2,
          ),

          SizedBox(
            width: 20,
          ),

          //////////////////////////cot 2//////////////////////////
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get 20% Discount",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "Get 20% discount offer on buying Peaches today",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "30 minutes ago",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                )
              ],
            ),
            flex: 3,
          ),

          //////////////////////////cot 3//////////////////////////

          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.more_vert),
            ),
            flex: 2,
          ),

          //////////////////////////end content//////////////////////////
        ],
      ),
    );
  }
}
