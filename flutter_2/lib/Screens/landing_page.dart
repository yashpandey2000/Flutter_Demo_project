
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2/Widgets/caurosel.dart';
import 'package:flutter_2/Widgets/nav_bar.dart';
import 'package:flutter_2/Widgets/our_services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//creating First Page: Landing Page
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Nav Bar
            const NavBar(),
            const Carousel(),
            const SizedBox(height: 20),
            const OurServices(),
            Container(
              padding: const EdgeInsets.fromLTRB(150, 30, 150, 30),
              child: Column(children: [
                const Text(
                  'Testimonials',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          elevation: 24.0,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: const [
                                  CircleAvatar(
                                    radius: 64,
                                    child: Icon(
                                      Icons.book_rounded,
                                      size: 64,
                                    ),
                                  ),
                                  Text(
                                      'An Excellent Place to Learn FLutter, Python Robotics & IoT',
                                      style: TextStyle(fontSize: 20))

                                ],

                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),
                )

              ]),
            ),

            SizedBox(height: 60),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
              color: Colors.black,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            child: Image.asset(
                              'lib/image/coo.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          // const Text(
                          //   '"Platforuma, is an ed-tech start-up dedicated in providing the option to learn new skills and developing oneself. We believe in developing the platform for everyone to come up with new ideas, learn new and exciting things and develop. We currently provide Robotics Training in Indore, Arduino Training, Python Training and IoT Training in Indore."',
                          //   style: TextStyle(color: Colors.white),
                          // )
                        ],
                      ),

                      TextButton.icon(
                        icon: Icon(FontAwesomeIcons.facebookSquare),
                        label: Text(''),
                        onPressed: ()async{
                          if(!await launch("https://www.facebook.com")){
                            throw "can't open FACEBOOK";
                          }
                        },
                      ),

                      TextButton.icon(
                        icon: Icon(FontAwesomeIcons.instagramSquare),
                        label: Text(''),
                        onPressed: ()async{
                          if(!await launch("https://www.instagram.com/yashh__pandey/")){
                            throw "cant open INSTAGRAM";
                          }
                        },
                      ),

                      TextButton.icon(
                        icon: Icon(FontAwesomeIcons.linkedin),
                        label: Text(''),
                        onPressed: ()async{
                          if(!await launch("https://www.linkedin.com/in/yash-pandey-4a35b31b4/")){
                            throw "cant open LINKEDIN";
                          }
                        },
                      ),

                      TextButton.icon(
                        label: Text(''),
                        icon: Icon(FontAwesomeIcons.githubSquare),
                        onPressed: ()async{
                          if(!await launch("https://github.com/yashpandey2000")){
                            throw "cant open GITHUB";
                          }

                        },
                      ),

                      TextButton.icon(
                        label: Text(''),
                        icon: Icon(FontAwesomeIcons.youtubeSquare),
                        onPressed: ()async{
                          if(!await launch("https://www.youtube.com/")){
                          throw "cant open YOUTUBE";
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  const Text('© 2022 All Right Reserved, Design & Devloped by Yash Pandey', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold) )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
