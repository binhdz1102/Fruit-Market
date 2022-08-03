import 'package:flutter/material.dart';

class LanguageSettingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LanguageSettingScreenState();
  }
}

class _LanguageSettingScreenState extends State<LanguageSettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Language Setting"),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Language",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("Language"),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("English "),
                        Text(
                          "(United\nStates)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                print("Ban vua bam vao language");
              },
            ),
          ],
        ));
  }
}
