import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/page/list_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  final instaPost = new Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      new Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                children: [
                  new Container(
                    margin: EdgeInsets.only(right: 10.0),
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            image: new NetworkImage(
                                "https://lh3.googleusercontent.com/a-/AOh14GgfZj-1H_XbyJD8z-FyeaASX-RL_s3hJbSD-2iAGA=s96-c-rg-br100"))),
                  ),
                  new Text(
                    "Zakarya Roohi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              new IconButton(onPressed: null, icon: new Icon(Icons.more_vert))
            ],
          )),
      new Row(
        children: [
          new Expanded(
              child: Image.network(
            "https://zakarya-roohi.ir/wp-content/uploads/2019/09/2-768x512.jpg",
            fit: BoxFit.cover,
          ))
        ],
      ),
      new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Row(
              children: [
                new IconButton(onPressed: null, icon: new Icon(FontAwesomeIcons.heart ,color: Colors.black,)),
                new IconButton(
                    onPressed: null, icon: new Icon(FontAwesomeIcons.comment,color: Colors.black)),
                new IconButton(onPressed: null, icon: new Icon(FontAwesomeIcons.paperPlane,color: Colors.black))
              ],
            ),
            new IconButton(
                onPressed: null, icon: new Icon(FontAwesomeIcons.bookmark,color: Colors.black))
          ],
        ),
      ),
      new Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: new Text(
          "محمد و علی و 5000 نفر دیگر این پست را لایک کرده اند",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      new Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            new Container(
              width: 40.0,
              height: 40.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/a-/AOh14GgfZj-1H_XbyJD8z-FyeaASX-RL_s3hJbSD-2iAGA=s96-c-rg-br100"))),
              margin: const EdgeInsets.only(left: 5.0, right: 12.0),
            ),
            new Expanded(
                child: new TextField(
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "اضافه کردن یک نظر...",
                        hintStyle: TextStyle(fontWeight: FontWeight.w500))))
          ],
        ),
      ),
      new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,),
        child: new Text("1 روز قبل", style: TextStyle(color: Colors.grey)),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return index == 0
              ? new SizedBox(
                  child: new ListStories(),
                  height: deviceSize.height * 0.15,
                )
              : instaPost;
        });
  }
}
