import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'Data/initmock_data.dart';

class CheckingUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckingUserState();
  }
}

class _CheckingUserState extends State<CheckingUser> {
  final referenceDatabase = FirebaseDatabase.instance;

  final movieName = 'Title';
  final movieController = TextEditingController();
  String defauldata = 'default';

  @override
  Widget build(BuildContext context) {
    DatabaseReference ref =
        FirebaseDatabase.instance.ref("users/" + currentUser.uid);
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
                    // await ref.set({
                    //   "name": currentUser.name,
                    //   "address": currentUser.address,
                    // });

                    var map ={"ListFarvourites": getMapOfFarvourites(),
                    "name": currentUser.name,
                      "address": currentUser.address,
                      "email" : currentUser.email


                    };

                    await ref.set(map);
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

                    DatabaseReference starCountRef = FirebaseDatabase.instance
                        .ref('users/' + currentUser.uid + "/name/innername1");
                    starCountRef.onValue.listen((DatabaseEvent event) {
                      final data = event.snapshot.value;
                      print("Data nhan duoc sau khi get: $data");
                      // print("Kieu du lieu cua data :${data.runtimeType}");

                      Map<String, dynamic> data2 = jsonDecode(jsonEncode(data));
                      // print("Lay ra name user: ${data2['name']}");
                      // print("------");
                      // print("Map cua data2");
                      // print(data2);
                      // print('');
                      // print("${data2["address"]['line1']}");
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

  Map<int, dynamic> getMapOfFarvourites() {
    var favouriteList = [];
    Map result = Map<int, int>();
    for (int i = 0; i < items.length; i++)
      if (items[i].isFavourited)
        result[items[i].id] = items[i].getNumberFavouriteSelected;
    print("ket qua cua result: $result");
    return result as Map<int, dynamic>;
  }
}
