

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child:   Text(
                  "First Day at School",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ),
                ),

                Expanded(child: Text(
                  "Last Day at school",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ), )

              ],
            ),
            Row(
              children: const [
                Expanded(child:   Text(
                  "First Day at School Essay",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ),
                ),

                Expanded(child: Text(
                  "Last Day at school Essay",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ), )
              ],
            ),
            const BannerImage(),
            const BannerButton()
          ],
        )
      ),
    );
  }
}

class BannerImage extends StatelessWidget {
  const BannerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('images/34.jpg');
    Image image = Image(image: assetImage);
    return Container( child: image);
  }
}

class BannerButton extends StatelessWidget {
  const BannerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      width: 250.0,
      height: 50.0,
      child: ElevatedButton(
        child: const Text("Raised Button",
                     style: TextStyle(
                       fontSize: 25.0,
                       fontFamily: "Poppins",
                       fontWeight: FontWeight.w400,
        ),),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(6.0),
            // textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20.0),)
        ),
        onPressed: () => newTextButton(context)
      ),
    );
  }
  void  newTextButton (BuildContext context) {
      var alertDialog = const AlertDialog(
        title: Text("Available Soon"),
        content: Text("It will be available after our main launch"),
        elevation: 6.0,
      );

      showDialog(
          context: context,
          builder: (BuildContext context) => alertDialog
          );
  }
}


