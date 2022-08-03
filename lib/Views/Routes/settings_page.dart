import 'package:flutter/material.dart';

import 'account_setting_page.dart';
import 'change_address_page2.dart';
import 'language_setting_page.dart';
import 'notification_setting_page.dart';

class SettingsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SettingsScreenState();
  }
}


class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Settings"),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.lightGreen.shade700,
              ),
              title: Text("Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AccountSettingsScreen()),
                );
              },
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationSettingScreen()),
                );
              },
              leading: Icon(
                Icons.notifications,
                color: Colors.lightGreen.shade700,
              ),
              title: Text("Notification"),
            ),
            ListTile(
              leading: Icon(
                Icons.language,
                color: Colors.lightGreen.shade700,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LanguageSettingScreen()),
                );
              },
              title: Text("Language"),
            ),
            ListTile(
              leading: Container(
                padding: EdgeInsets.only(left: 4),
                child: Image.asset(
                  'assets/images/change address.png',
                  height: 24,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangeAddressScreen()),
                );
              },
              title: Text("Change Address"),
            ),
          ],
        ),
      ),
    );
  }
}
