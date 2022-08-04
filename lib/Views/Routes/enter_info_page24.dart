import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/Models/User/user_information.dart';

import '../../Data/initmock_data.dart';
import '../Home Screen UI/home_page5.dart';

class EnterInfoScreen extends StatelessWidget {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final nameController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ////////////testing///////////
    final User? user = firebaseAuth.currentUser;
    var uid = user?.uid;

    print("UID: $uid");

    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 50, 20, 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //enter your phone

              Align(
                child: Text("Enter Your Name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.multiline,
                maxLines: 1,
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Manish Chutake",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Align(
                child: Text("Add Address",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                controller: addressController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              //button verify
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                    print("ban vua an nut verify");
                    if (nameController.text.trim().length > 0 ) {
                      //set user
                      currentUser = UserInformation(
                          name: nameController.text,
                          uid: uid.toString(),
                          email: "manishuxuid@gmail.com",
                          imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTiXjldHhFIVdvZDCeoq6sSzSzxg95OvLCxQ&usqp=CAU",
                        address: addressController.text.trim().length >0 ? addressController.text : "440001 Nagpur, Maharastra"
                      ) ;

                      Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    } else
                      currentUser = UserInformation(
                          name: "Manish Chutake",
                          uid: uid.toString(),
                          email: "manishuxuid@gmail.com",
                          imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTiXjldHhFIVdvZDCeoq6sSzSzxg95OvLCxQ&usqp=CAU",
                          address: addressController.text.trim().length >0 ? addressController.text : "440001 Nagpur, Maharastra"
                      ) ;

                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    "VERIFY",
                    style: TextStyle(
                        // fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
