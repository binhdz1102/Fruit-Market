//
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Routes/enter_info_page24.dart';

class VerifyPhoneScreen extends StatefulWidget {
  String phoneNumber = "";
  String verificationID = "";

  VerifyPhoneScreen({required this.phoneNumber});

  @override
  State<StatefulWidget> createState() {
    return _VerifyPhoneScreenState();
  }
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  TextEditingController phoneController =
      TextEditingController(text: "+84865935408");
  var o = ["", "", "", ""];
  int pos = 0;

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationID, smsCode: "566666");

    await auth.signInWithCredential(credential).then((value) {
      print("Xac thuc thanh cong");
    });
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        widget.verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("Qua thoi gian xu li");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    loginWithPhone();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 50, 20, 25),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Enter The 4 digits code that was send to your Mobile Number",
                    textAlign: TextAlign.center,
                  ),

                  //danh sach cac o OTP hang dau tien
                  Row(
                    children: [
                      MaterialButton(
                        color: Colors.grey.shade300,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(23),
                          child: Text(
                            o[0],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.grey.shade300,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(23),
                          child: Text(
                            o[1],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.grey.shade300,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(23),
                          child: Text(
                            o[2],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.grey.shade300,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(23),
                          child: Text(
                            o[3],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                          onPressed: () {
                            print("ban vua an nut verify");
                            if (pos > 3) {
                              Navigator.pop(context);

                              verifyOTP();

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EnterInfoScreen()),
                              );
                            } else {
                              print("Hay nhap chinh xac OTP");
                            }
                          },
                          child: Text(
                            "VERIFY",
                            style: TextStyle(
                                // fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                print("Ban vua bam vao resend again");
                              },
                              child: Text("Resend Again?")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              flex: 4,
            ),

            ////////////////////////////////phan bam phim////////////////////////////////
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(45, 0, 45, 0),
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "1";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "2";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "3";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "4";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "5";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "6";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "7";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "8";
                            pos += 1;
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "9";
                            pos += 1;
                          }
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
                          if (pos <= 4 && pos > 0) {
                            pos -= 1;
                            o[pos] = "";
                          }
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
                          if (pos < 4 && pos >= 0) {
                            o[pos] = "0";
                            pos += 1;
                          }
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
            )
            ////////////////////////////////phan bam phim////////////////////////////////
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
            style: TextStyle(color: Colors.black, fontSize: 22),
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
