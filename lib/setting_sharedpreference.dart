import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingSharedPreferences extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingSharedPreferencesState();
  }
}

class _SettingSharedPreferencesState extends State<SettingSharedPreferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing shared preferences"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Test"),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      saveData();
                      print("Da save!");
                    },
                    child: Text("Save")),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Dang get du lieu!");

                      getData();
                    },
                    child: Text("Get")),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Dang delete du lieu!");

                      deleteData();
                    },
                    child: Text("Delete")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('binh', 'binh binh binh');
  }

  void getData() async {
    final prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString('binh');
    print("Du lieu get duoc: ${action}");
  }

  void deleteData() async {
    final prefs = await SharedPreferences.getInstance();
    final success = await prefs.remove('binh');
    print("Da xoa");
  }
}
