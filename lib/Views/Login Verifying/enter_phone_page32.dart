import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Loader Animated/loader_animated.dart';


class EnterPhoneScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EnterPhoneScreenState();
  }
}

class _EnterPhoneScreenState extends State<StatefulWidget> {
  FirebaseAuth auth = FirebaseAuth.instance;

  String chuoiso = "";
  late String verificationID = "";
  bool lastPush = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      // TextField(
                      //   keyboardType: TextInputType.number,
                      //   controller: phoneController,
                      //   decoration: InputDecoration(
                      //     hintText: '             9823868582',
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //       borderSide: BorderSide(
                      //         width: 2,
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      //in day so phia sau
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "                 " + chuoiso,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ),

                      //in so +91 mau xam o dau
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(
                          child: Text(
                            "+91",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      onPressed: () {
                        print("ban vua an nut verify");
                        if (chuoiso.length > 9) {
                          print("So dien thoai vua nhap: ${chuoiso}");
                          Navigator.pop(context);

                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Thu(
                          //           phoneNumber: chuoiso,
                          //         )));

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoaderAnimated(
                                phoneNumber: chuoiso,
                              ),
                            ),
                          );


                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => MaterialApp(home: LoaderAnimated(
                          //       phoneNumber: chuoiso,
                          //     ),),
                          //   ),
                          // );



                        } else
                          print("Chieu dai so dien thoai khong du");
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
              flex: 4,
            ),

            ////////////////////////////////phan bam phim////////////////////////////////
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(45, 0, 45, 20),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 50,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "1";
                        });
                      },
                      child: genIconButton(1, ""),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "2";
                        });
                      },
                      child: genIconButton(2, "ABC"),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "3";
                        });
                      },
                      child: genIconButton(3, "DEF"),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "4";
                        });
                      },
                      child: genIconButton(4, "GHI"),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "5";
                        });
                      },
                      child: genIconButton(5, "JKL"),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "6";
                        });
                      },
                      child: genIconButton(6, "MNO"),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "7";
                        });
                      },
                      child: genIconButton(7, "PQRS"),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "8";
                        });
                      },
                      child: genIconButton(8, "TUV"),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "9";
                        });
                      },
                      child: genIconButton(9, "WXYZ"),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length > 0)
                            chuoiso = chuoiso.substring(0, chuoiso.length - 1);
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.backspace_rounded),
                      ),
                    ),
                    MaterialButton(
                      color: Colors.grey.shade200,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {
                        setState(() {
                          if (chuoiso.length < 13) chuoiso = chuoiso + "0";
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'OK',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget genIconButton(int number, String alphabets) {
    return Stack(
      children: [
        Positioned(
          left: 8,
          top: 13,
          child: Text(
            number.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
        Positioned(
          top: 35,
          child: Container(
            width: 30,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                alphabets,
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
