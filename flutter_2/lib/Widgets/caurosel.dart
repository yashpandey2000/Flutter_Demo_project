import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

        /*child: Center(child: Text('Welcome To T-Learn'),),
        height: 700.0,
        width: MediaQuery.of(context).size.width - 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
            image: DecorationImage(
                image: new NetworkImage(
                    "lib/image/iam.jpg"
                ),
                fit: BoxFit.fill
            )
        ),*/
    child: const Center(
    child: Text(
    'Welcome To T-Learn',
    style: TextStyle(color: Colors.white, fontSize: 80 , fontStyle: FontStyle.italic),
    ),
    ),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: NetworkImage(
    "lib/image/iam.jpg"),
    fit: BoxFit.cover)),
      );

  }
}
