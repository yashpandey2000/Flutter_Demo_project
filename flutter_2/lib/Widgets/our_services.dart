import 'package:flutter/material.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(150, 30, 150, 30),
      child: Column(

        children:  [

        const Text(
        'Our Services',
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
        ),
      ),

           SizedBox(
             height: MediaQuery.of(context).size.width / 2.5,
             width: MediaQuery.of(context).size.width / 1.5,
             child: GridView.count(crossAxisCount: 3,
          children: [
          Container(
                child:  Card(
                 elevation: 10.0,
                  margin: EdgeInsets.all(8.0),
                  child:  Column(
                    children: [
                       Image.network("lib/image/img.jpg",
                       height:200.0,
                      width:200,
                      fit:BoxFit.cover,
                       ),
                     const SizedBox(height: 5.0,),
                      const Padding(padding: EdgeInsets.all(8.0),
                      child: Text("Mega",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurple
                      ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),

            Container(
              child:  Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child:  Column(
                  children: [
                    Image.network("lib/image/bootstrap.png",
                      height:200.0,
                      width:250,
                      fit:BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(padding: EdgeInsets.all(8.0),
                      child: Text("Bootstrap",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              child:  Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child:  Column(
                  children: [
                    Image.network("lib/image/native.png",
                      height:200.0,
                      width:200,
                      fit:BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(padding: EdgeInsets.all(8.0),
                      child: Text("Native",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Container(
              child:  Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child:  Column(
                  children: [
                    Image.network("lib/image/javascript.png",
                      height:200.0,
                      width:200,
                      fit:BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(padding: EdgeInsets.all(8.0),
                      child: Text("JavaScript",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Container(
              child:  Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child:  Column(
                  children: [
                    Image.network("lib/image/html.png",
                      height:200.0,
                      width:200,
                      fit:BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(padding: EdgeInsets.all(8.0),
                      child: Text("Html",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              child:  Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child:  Column(
                  children: [
                    Image.network("lib/image/figma.png",
                      height:200.0,
                      width:200,
                      fit:BoxFit.cover,
                    ),
                    const SizedBox(height: 5.0,),
                    const Padding(padding: EdgeInsets.all(8.0),
                      child: Text("Figma",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple
                        ),
                      ),
                    ),
                  ],
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
