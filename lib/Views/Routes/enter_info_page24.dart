import 'package:flutter/material.dart';

import '../Home Screen UI/home_page5.dart';

class EnterInfoScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    if (nameController.text.trim().length > 0 &&
                        addressController.text.trim().length > 0) {
                      Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    } else
                      print("Hay nhap chinh xac thong tin");
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
