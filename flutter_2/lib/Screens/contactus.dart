import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/caurosel.dart';
import '../Widgets/nav_bar.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  TextEditingController name = TextEditingController();
  TextEditingController mob = TextEditingController();
  TextEditingController msg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              const NavBar(),
             // SizedBox(height: 30),
              const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: name,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  icon: Icon(Icons.person),
                ),
              ),
              TextFormField(
                controller: mob,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: '+91 89699-48954',
                  labelText: 'Phone',
                ),
              ),
              TextFormField(
                controller: msg,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  hintText: 'xyz@gmail.com',
                  labelText: 'Emailid',
                ),
              ),
              TextFormField(
                controller: msg,
                decoration: const InputDecoration(
                  icon: Icon(Icons.message),
                  hintText: 'Enter your message here',
                  labelText: 'Message',
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40.0, top: 40.0),
                child: RaisedButton(
                  color: Colors.blue,
                  child: const Text('Submit'),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 190),
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
                    SizedBox(height:30),
                    const Text('© 2022 All Right Reserved, Design & Devloped by Yash Pandey', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold) )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
