import 'package:flutter/material.dart';


class ListStories extends StatelessWidget {
  Row topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text("استوری ها", style: TextStyle(fontWeight: FontWeight.bold)),
      new Row(
        children: [
          new Icon(Icons.play_arrow),
          new Text("مشاهده همه", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      )
    ],
  );

  final stories = new Expanded(
    child: new Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return new Stack(
                // alignment: Alignment.bottomRight, you can this also and Delete Positioned
                children: <Widget>[
                  new Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://lh3.googleusercontent.com/a-/AOh14GgfZj-1H_XbyJD8z-FyeaASX-RL_s3hJbSD-2iAGA=s96-c-rg-br100"))),
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  ),
                  index == 0
                      ? new Positioned(
                          right: 3.0,
                          bottom: 10.0,
                          child: new CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.blueAccent,
                            child: new Icon(
                              Icons.add,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ))
                      : new Container()
                ],
              );
            })),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        children: [topText, stories],
      ),
    );
  }
}
