import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

CircleAvatar buildCircleAvatar({bool addButton = false}) {
  final int randomColorInt = Random().nextInt(255);
  return CircleAvatar(
      backgroundColor: Color.fromRGBO(randomColorInt, randomColorInt, 255, 0.8),
      radius: 25,
      child: addButton
          ? CircleAvatar(
              child: Icon(Icons.add),
              radius: 25,
              backgroundColor: Colors.white,
            )
          : CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-psd/modern-man-smiling_1194-11653.jpg?size=338&ext=jpg"),
              radius: 20));
}

Text buildSubtitle(String subtitle) {
  return Text(
    subtitle,
    style: TextStyle(color: Colors.grey, fontSize: 20),
  );
}

final whitetextStyle = TextStyle(color: Colors.white);

final foldersIcon = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    IconButton(icon: Icon(Icons.folder)),
    IconButton(icon: Icon(Icons.folder_open)),
    IconButton(icon: Icon(Icons.storage)),
  ],
);

var storageUsedText = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Text(
      '65GB',
      style: whitetextStyle,
    ),
    Text(
      '100GB',
      style: whitetextStyle,
    )
  ],
);
var storageUsedlinearProgressIndicator = LinearProgressIndicator(
  valueColor: AlwaysStoppedAnimation(Colors.yellow),
  value: 0.6,
);

 Widget dropboxContainer = Stack(children: [
    Positioned(
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        width: 300,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "DropBox",
              style: whitetextStyle,
            ),
            SizedBox(height: 10),
            foldersIcon,
            storageUsedText,
            storageUsedlinearProgressIndicator,
          ],
        ),
      ),
    ),
    Positioned(
      top: -25,
      left: 20,
      child: dropboxcircleAvatar,
    )
  ]);

filesEntry() => ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) => Slidable(
        child: ListTile(
          leading: Icon(Icons.note),
          isThreeLine: false,
          title: RichText(
              text: TextSpan(
                  text: "BrandBook.",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                TextSpan(text: "PDF", style: TextStyle(color: Colors.grey))
              ])),
          subtitle: Text(
            "Dropbox/Projects/EI/Brandbook",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        secondaryActions: <Widget>[
          IconSlideAction(
            iconWidget: Icon(
              Icons.file_download,
              color: Colors.blue,
            ),
          ),
          IconSlideAction(
            iconWidget: Icon(
              Icons.link,
              color: Colors.black,
            ),
          ),
          IconSlideAction(
            iconWidget: Icon(
              Icons.cancel,
              color: Colors.red,
            ),
          ),
        ],
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
      ),
    );

var dropboxcircleAvatar = CircleAvatar(
  backgroundColor: Colors.white,
  radius: 30,
  child: CircleAvatar(
    backgroundColor: Colors.white,
    backgroundImage: NetworkImage(
        "https://cfl.dropboxstatic.com/static/images/logo_catalog/twitter-card-glyph_m1%402x.png"),
    radius: 20,
  ),
);
var appBarRow = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Icon(
      Icons.menu,
    ),
    Icon(
      Icons.alarm,
    ),
  ],
);
