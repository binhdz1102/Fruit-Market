import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationSettingScreen extends StatefulWidget {
  late bool sw1;
  late bool sw2;
  NotificationSettingScreen({required this.sw1,required this.sw2});

  @override
  State<StatefulWidget> createState() {
    return _NotificationSettingScreenState();
  }
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {

   @override
   void initState() {
     super.initState();
   }

void saveSetting ()async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool("sw1", widget.sw1);
  prefs.setBool("sw2", widget.sw2);
  print("Da save ${prefs.getBool("sw1")} and ${prefs.getBool("sw2")}");
}

   void dispose(){
     saveSetting();
     super.dispose();
   }

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
                value: widget.sw1,
                onChanged: (bool value) {
                  setState(() {
                    widget.sw1 = value;
                  });
                },
              ),
              onTap: ()  {
                
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
                value: widget.sw2,
                onChanged: (bool value) {
                  setState(() {
                    widget.sw2 = value;
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
