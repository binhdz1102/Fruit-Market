import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Home Screen UI/home_page5.dart';
import '../Login Verifying/login_page23.dart';

class SplashsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThuState();
  }
}

final pageController = PageController();
bool isLastPage = false;

class _ThuState extends State<SplashsScreen> {
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 200),
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  if (index == 2) {
                    isLastPage = true;
                    print("Ban da toi trang cuoi");
                  } else {
                    print("Ban dang o trang ${index}");
                    isLastPage = false;
                  }
                });
              },
              controller: pageController,
              children: [
                //man 1
                Container(
                  color: Colors.white,
                  child: SplashScreen(
                    isButtonVisible: true,
                    pathImage: "assets/images/Path 114.png",
                    title1: "E Shopping",
                    title2: "Explore top organic fruit & grab them",
                  ),
                ),
                //man 2
                Container(
                  color: Colors.white,
                  child: SplashScreen(
                    isButtonVisible: true,
                    pathImage: "assets/images/Path 21.png",
                    title1: "Delivery on the way",
                    title2: "Get your order by speed delivery",
                  ),
                ),

                //man 3
                Container(
                  color: Colors.white,
                  child: SplashScreen(
                    isButtonVisible: false,
                    pathImage: "assets/images/Path 53.png",
                    title1: "Delivery Arrived",
                    title2: "Order is arrived at your place",
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 500,
            left: MediaQuery.of(context).size.width / 2 - 65,
            child: Column(
              children: [
                /////////////////////////////////
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: WormEffect(
                    dotColor: Colors.black12,
                    activeDotColor: Colors.green,
                  ),
                ),

                /////////////////////////////////
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 130,
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      print("ban vua an nut chuyen trang");
                      if (!isLastPage) {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      } else {
                        //chuyen sang man hinh HomeScreen()
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                        //chuyen sang man Dang nhap
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      }
                    },
                    child: isLastPage
                        ? Text(
                            "Get Started",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        : Text(
                            "Next",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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

class SplashScreen extends StatelessWidget {
  String pathImage;

  String title1;

  String title2;

  bool isButtonVisible = true;

  SplashScreen(
      {required this.pathImage,
      required this.title1,
      required this.title2,
      required this.isButtonVisible});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //nut skip////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isButtonVisible
                  ? Container(
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          print("ban vua bam nut skip");
                        },
                        child: TextButton(
                          onPressed: () {
                            pageController.jumpToPage(2);
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 50,
                      width: 80,
                    ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          //hinh anh ////////////////////
          Image.asset(
            pathImage,
            height: 200,
          ),
          SizedBox(
            height: 30,
          ),
          //dong chu ///////////////////
          Text(
            title1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Text(title2),
        ],
      ),
    );
  }
}
