import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../Data/initmock_data.dart';
import '../../Models/User/user_information.dart';
import 'enter_phone_page32.dart';
import '../Home Screen UI/home_page5.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

/////////////////////////////////////////
/////////////////////////////////////////

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  GoogleSignInAccount? _currentUser;
  String _contactText = '';

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  //////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(25, 30, 25, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/PngItem_2746375.png',
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Fruit Market",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.green),
                )
              ],
            ),

            //thay text field thanh textbutton
            // TextField(
            //   keyboardType: TextInputType.number,
            //   decoration: InputDecoration(
            //     hintText: 'Enter Your Mobile Number',
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(15),
            //       borderSide: BorderSide(
            //         width: 1,
            //       ),
            //     ),
            //   ),
            // ),

            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: TextButton(
                onPressed: () {
                  print("Ban vua an chuyen sang man hinh enter phone");
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnterPhoneScreen()));
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enter Your Mobile Number",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),

            Text(
              "OR",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextButton.icon(
                      onPressed: () {
                        print("ban vua an dang nhap bang google");

                        User? auser = FirebaseAuth.instance.currentUser;

                        if (auser != null) {
                          currentUser = UserInformation(
                              name: "Manish Chutake",
                              imagePath:
                              "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/mock%20images%2Favata.jpg?alt=media&token=9d9a6451-f34b-42a4-aa87-19c6d067cb07",
                              address: '440001 Nagpur, Maharastra',
                              email: 'manishuxuid@gmail.com',
                              uid: 'fakeUID0001');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                          print("Email da dang nhap: ${auser.email}");
                        } else
                          _handleSignIn();
                      },
                      label: Text(
                        "Log in with",
                        style: TextStyle(color: Colors.black),
                      ),
                      icon: Image.asset(
                        'assets/images/icon_google.png',
                      ),
                      style: TextButton.styleFrom(
                          primary:
                              Colors.white //elevated btton background color
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextButton.icon(
                      onPressed: () {
                        print("ban vua an dang nhap bang facebook");

                        currentUser = UserInformation(
                            name: "Manish Chutake",
                            imagePath:
                                "https://firebasestorage.googleapis.com/v0/b/marketfruits-de66d.appspot.com/o/mock%20images%2Favata.jpg?alt=media&token=9d9a6451-f34b-42a4-aa87-19c6d067cb07",
                            address: '440001 Nagpur, Maharastra',
                            email: 'manishuxuid@gmail.com',
                            uid: 'fakeUID0001');
                        Navigator.pop(context);

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      label: Text(
                        "Log in with",
                        style: TextStyle(color: Colors.black),
                      ),
                      icon: Icon(
                        Icons.facebook_outlined,
                        color: Colors.blue,
                        size: 35,
                      ),
                      style: TextButton.styleFrom(
                          primary:
                              Colors.white //elevated btton background color
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
