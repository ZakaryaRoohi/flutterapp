import 'package:flutter/material.dart';
import 'package:myapp/my_home_page.dart';


class ListStories extends StatelessWidget {


Row topText = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    new Text("stories",style: TextStyle(fontWeight: FontWeight.bold)),
    new Row(
      children: [new Icon(Icons.play_arrow),
        new Text("Watch all",style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    )
  ],
);
final stories = new Expanded(
    child: new Text("insta")
);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(16.0),
      child: new Column(
        children: [
          topText,
          // stories
        ],
      ),
    );
  }

}
