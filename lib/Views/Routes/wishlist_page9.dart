import 'package:flutter/material.dart';

import 'add_your_card_page4.dart';
import '../Loader Animated/loader_animated2.dart';

class WishListScreen extends StatelessWidget {
  late int billNumber;

  WishListScreen({required this.billNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    leading: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    title: Text(
                      "Total Bill: Rs " + billNumber.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),

                  /////begin fixing
                  HeaderWishListPage(),
                  /////////////////////end fixing//////////////

                  //phan chua Creditcard/Debit card///////////////
                  Divider(),
                  ListTile(
                    title: Text(
                      "Credit/Debit Cards",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    trailing: TextButton(
                      onPressed: () {
                        print("ban vua bam vao add new cards");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddYourCardScreen()),
                        );
                      },
                      child: Text(
                        "ADD NEW CARD",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.fromLTRB(0, 16, 8, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            size: 40,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text("***********5356\nManish Chutake"),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //////////save and pay via cards/////////////////////////
                  Divider(),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Save and Pay via cards",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 32),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/mastercard (1).png',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/mastercard (2).png',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/mastercard (3).png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  /////wallet method//////////////////////////
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Text(
                        "Wallet Method",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/phone-pe-1024x1024.png',
                    ),
                    title: Text(
                      "Phone Pay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      print("Ban vua an vao Phone Pay");
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/Google-Pay-Logo-Icon-PNG-1024x1024.png',
                    ),
                    title: Text(
                      "Google Pay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      print("Ban vua an vao Goolge Pay");
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/paypal.png',
                    ),
                    title: Text(
                      "Pay pal",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      print("Ban vua an vao Pay pal");
                    },
                  ),

                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),

          //////////////////////////////endding////////////
          Positioned(
            bottom: 16,
            left: 16,
            child: Container(
              width: MediaQuery.of(context).size.width - 32,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  print("ban vua an nut PAY NOW");
                  Navigator.pop(context);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoaderAnimated()),
                  );

                },
                child: Text(
                  "PAY NOW",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWishListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(),
      // ),
      height: 120,
      width: MediaQuery.of(context).size.width,
      // padding: EdgeInsets.all(16),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 16,
            child: Image.asset(
              'assets/images/Line 53.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            child: Icon(Icons.location_on_outlined),
            top: 58,
            left: 16,
          ),
          Positioned(
            left: 40,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Organic Fruit Shop",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "2 items: Delivery Time 30 Min",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Home Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "D Block Ram Nagar, Near Sai Petrol\nPump Ring Road Nagpur-440001",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
