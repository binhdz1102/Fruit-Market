import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationSettingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotificationSettingScreenState();
  }
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  bool _swithmode1 = false;
  bool _swithmode2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Notification Setting"),
        ),
        body: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 35,
                color: Colors.lightGreen.shade700,
              ),
              title: Text("My Account"),
              subtitle: Text("You will receive daily updates"),
              trailing: CupertinoSwitch(
                value: _swithmode1,
                onChanged: (bool value) {
                  setState(() {
                    _swithmode1 = value;
                  });
                },
              ),
              onTap: () {
                print("Ban vua bam vao my account");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 35,
                color: Colors.lightGreen.shade700,
              ),
              title: Text("Pramotional Notifications"),
              subtitle: Text("You will receive daily updates"),
              trailing: CupertinoSwitch(
                value: _swithmode2,
                onChanged: (bool value) {
                  setState(() {
                    _swithmode2 = value;
                  });
                },
              ),
              onTap: () {
                print("Ban vua bam vao my account");
              },
            ),
          ],
        ));
  }
}
