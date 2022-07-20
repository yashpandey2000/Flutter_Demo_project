import 'package:flutter/material.dart';
import 'package:flutter_2/Screens/contactus.dart';
import 'package:flutter_2/Screens/landing_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//NavBar
class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        color: Colors.black,
        padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Image
            Container(
              height: 50,
              child: Image.asset(
                'lib/image/coo.png',
                fit: BoxFit.fitHeight,
              ),
            ),


            //buttons
            SizedBox(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: FlatButton(
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LandingPage(),),);
                      },
                      child: const Text('Home', style: TextStyle(fontSize: 20.0),),
                    ),
                  ),


                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Training',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Blogs',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MyCustomForm(),),
                      );
                    },
                    child: const Text('Contact Us',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Career',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                  ),


                ],

              ),

            )



          ],
        )

    );
  }
}