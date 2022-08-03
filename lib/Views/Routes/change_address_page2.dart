import 'package:flutter/material.dart';

class ChangeAddressScreen extends StatelessWidget {
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Change Address"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    controller: addressController,
                    decoration: InputDecoration(
                      hintText:
                          "D Block Ram Nagar, Near Sai Petrol\nPump Ring Road Nagpur-440001.",
                      border: OutlineInputBorder(),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                    print("ban vua an nut change");
                  },
                  child: Text(
                    "CHANGE",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
