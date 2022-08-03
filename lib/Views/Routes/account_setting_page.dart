import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Account Setting"),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                padding: EdgeInsets.only(left: 2),
                child: Image.asset(
                  'assets/images/secure.png',
                  height: 24,
                ),
              ),
              title: Text("Sercurity"),
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/delete (3).png',
                height: 24,
              ),
              title: Text("Declative Account"),
            ),
            ListTile(
              leading: Icon(
                Icons.delete,
                color: Colors.lightGreen.shade700,
              ),
              title: Text("Delete Account"),
            ),
          ],
        ),
      ),
    );
  }
}
