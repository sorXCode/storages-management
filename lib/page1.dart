import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lab3/page2.dart';
import 'package:lab3/widgets.dart';

class Page1 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            appBarRow,
            RichText(
              text: TextSpan(
                text: "Hello,\n",
                style: TextStyle(fontSize: 30, color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(
                    text: "Mr. Anthony Burke,",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Swiper(
                itemCount: 4,
                itemBuilder: (context, index) => dropboxContainer,
                viewportFraction: 0.8,
                scale: 0.75,
              ),
            ),
            SizedBox(height: 40),
            buildSubtitle("Co-owners"),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => index != 4
                    ? buildCircleAvatar()
                    : buildCircleAvatar(addButton: true),
              ),
            ),
            SizedBox(height: 40),
            buildSubtitle("Last Files"),
            SizedBox(
              height: 150,
              child: filesEntry(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => Page2())),
      ),
    );
  }
}
