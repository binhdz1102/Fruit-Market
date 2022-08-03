import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RealtimeDB extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _RealtimeDBState();
  }
}

class _RealtimeDBState extends State<RealtimeDB> {
  final referenceDatabase = FirebaseDatabase.instance;

  // final databaseReference = FirebaseDatabase.instance.reference();
  final movieName = 'Title';
  final movieController = TextEditingController();
  String defauldata = 'default';

  @override
  Widget build(BuildContext context) {
    // final ref = referenceDatabase.reference();
    DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(movieName),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: movieController,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    print('ban vua push du lieu--------------');
                    await ref.set({
                      "name": "John",
                      "age": 18,
                      "address": {"line1": "100 Mountain View"}
                    });
                  },
                  child: Text('Push'),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    print('ban vua update du lieu-------------');
                    await ref.update({
                      "age": 19,
                    });
                  },
                  child: Text('Update'),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(defauldata),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    print('ban vua get du lieu-----------------');


                    DatabaseReference starCountRef =
                    FirebaseDatabase.instance.ref('users/123');
                    starCountRef.onValue.listen((DatabaseEvent event) {
                      final data = event.snapshot.value;
                      print("Data nhan duoc sau khi get: $data");
                      print("Kieu du lieu cua data :${data.runtimeType}");

                      Map<String, dynamic> data2 = jsonDecode(jsonEncode(data));
                      print("------");
                      print("Map cua data2");
                      print(data2);
                      print('');
                      print("${data2["address"]['line1']}");

                    });



                  },
                  child: Text('Get'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Users {
  late String address;
  late int age;
  late String name;

  Users({required this.name,required this.age,required this.address});


}