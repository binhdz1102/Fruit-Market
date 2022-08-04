import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruitmarket/Data/initmock_data.dart';
import 'package:image_picker/image_picker.dart';

import 'favourites_page.dart';
import '../Login Verifying/login_page23.dart';
import 'help_page.dart';
import 'my_order_page.dart';
import 'settings_page.dart';
import 'shopping_cart_page.dart';

class MyAccountScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAccountScreenState();
  }
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  bool onHelpScreen = false;

  @override
  Widget build(BuildContext context) {
    return onHelpScreen
        ? Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  setState(() {
                    onHelpScreen = false;
                  });
                },
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
              backgroundColor: Colors.green,
              title: Text(
                "Help",
                style: TextStyle(),
              ),
            ),
            body: HelpScreen())
        : Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  HeaderPage(),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height - 300,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(

                      shrinkWrap: true,
                      children: [
                        ListTile(
                          leading: Container(
                            padding: EdgeInsets.only(left: 4),
                            child: Image.asset(
                              'assets/images/my order.png',
                              height: 24,
                            ),
                          ),
                          title: Text("My Orders"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyOrder()),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.lightGreen.shade700,
                          ),
                          title: Text("Favourites"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FavouritesScreen()),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Colors.lightGreen.shade700,
                          ),
                          title: Text("Settings"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsScreen()),
                            );
                          },
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoppingCartScreen()),
                            );
                          },
                          leading: Icon(
                            Icons.shopping_cart,
                            color: Colors.lightGreen.shade700,
                          ),
                          title: Text("My Cart"),
                        ),
                        ListTile(
                          leading: Image.asset(
                            'assets/images/rate us.png',
                            height: 24,
                          ),
                          title: Text("Rate Us"),
                        ),
                        ListTile(
                          onTap: (){
                            ////////////////////testing checking user//////////////
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => CheckingUser()),
                            // );
                          },
                          leading: Image.asset(
                            'assets/images/refer a friend.png',
                            height: 24,
                          ),
                          title: Text("Refer a Friend"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.help,
                            color: Colors.lightGreen.shade700,
                          ),
                          title: Text("Help"),
                          onTap: () {
                            setState(() {
                              onHelpScreen = true;
                            });
                          },
                        ),
                        ListTile(
                          onTap: ()async{
                            setState(() {
                              items=[];
                            });

                            initdata();
                              await FirebaseAuth.instance.signOut();
                            //dang xuat
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          leading: Icon(
                            Icons.logout,
                            color: Colors.lightGreen.shade700,
                          ),
                          title: Text("Log Out"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}

class HeaderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HeaderPageState();
  }
}

class _HeaderPageState extends State<HeaderPage> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Khong the chon hinh anh");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
      color: Colors.green,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      child: CircleAvatar(
                        radius: 52,
                        backgroundImage: image != null
                            ? AssetImage(image!.path) as ImageProvider
                            : NetworkImage(
                                currentUser.imagePath),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      currentUser.email,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20,
                child: InkWell(
                  onTap: () {
                    pickImage();
                  },
                  child: Image.asset(
                    'assets/images/edit2.png',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
