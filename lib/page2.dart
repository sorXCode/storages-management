import 'package:flutter/material.dart';
import 'package:lab3/widgets.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dropboxfontstyle = TextStyle(fontWeight: FontWeight.w800, fontSize: 30);
    var titleRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        dropboxcircleAvatar,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  text: "Dropbox ",
                  style: dropboxfontstyle,
                  children: [
                    TextSpan(
                        text: "Cloud",
                        style: dropboxfontstyle.apply(
                            fontWeightDelta: -3, fontSizeFactor: 0.7))
                  ]),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: storageUsedText),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: storageUsedlinearProgressIndicator),
          ],
        ),
      ],
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              color: Colors.blue,
              height: 150,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  appBarRow,
                  titleRow,
                ],
              )),
          Positioned(
              top: 250.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    buildSubtitle("Last Files: Google Disk"),
                    Expanded(child: filesEntry()),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
