import 'package:flutter/material.dart';
import 'package:myapp/page/favorite_page.dart';
import 'package:myapp/page/home_page.dart';
import 'package:myapp/page/plus_page.dart';
import 'package:myapp/page/profile_page.dart';
import 'package:myapp/page/searech_page.dart';

class MyHomePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePagesState();
}

class MyHomePagesState extends State<MyHomePages> {
  String currentPageName = "home";
  final Map<String, Widget> children = <String, Widget>{
    "home": new HomePage(),
    "search": new SearchPage(),
    "plus": new PlusPage(),
    "favorite": new FavoritePage(),
    "profile": new ProfilePage()
  };

  final appBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    elevation: 1.0,
    centerTitle: true,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 40.0,
      child: new Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      new Padding(
          padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.send))
    ],
  );

  changePage(String namePage){
    setState(() {
      currentPageName= namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBar,
      body: this.children[currentPageName],
      bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                    icon: new Icon(Icons.home, color: Colors.black),
                    onPressed:() {changePage("home");}),
                new IconButton(
                    icon: new Icon(Icons.search, color: Colors.black),
                    onPressed:() {changePage("search");}),
                new IconButton(
                    icon: new Icon(Icons.add_box, color: Colors.black),
                    onPressed: () {changePage("plus");}),
                new IconButton(
                    icon: new Icon(Icons.favorite, color: Colors.black),
                    onPressed: () {changePage("favorite");}),
                new IconButton(
                    icon: new Icon(Icons.account_box, color: Colors.black),
                    onPressed: () {changePage("profile");})
              ],
            ),
          )),
    );
  }
}



// class MyHomePagesState extends State<MyHomePages> {
//   int currentPageIndex = 0;
//   final List children = [
//    new HomePage(),
//     new SearchPage(),
//     new PlusPage(),
//     new FavoritePage(),
//     new ProfilePage()
//   ];
//
//   final appBar = new AppBar(
//     backgroundColor: new Color(0xfff8faf8),
//     elevation: 1.0,
//     centerTitle: true,
//     leading: new Icon(Icons.camera_alt),
//     title: SizedBox(
//       height: 40.0,
//       child: new Image.asset("assets/images/insta_logo.png"),
//     ),
//     actions: <Widget>[
//       new Padding(
//           padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.send))
//     ],
//   );
//
//   changePage(int indexPage){
//     setState(() {
//       currentPageIndex= indexPage;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: appBar,
//       body: this.children[currentPageIndex],
//       bottomNavigationBar: new BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             new BottomNavigationBarItem(icon: new Icon(Icons.home,color: Colors.black),title:new Text("Home",style: TextStyle(color: Colors.black))),
//             new BottomNavigationBarItem(icon: new Icon(Icons.search,color: Colors.black),title:new Text("Search",style: TextStyle(color: Colors.black))),
//             new BottomNavigationBarItem(icon: new Icon(Icons.add_box,color: Colors.black),title:new Text("Plus",style: TextStyle(color: Colors.black))),
//             new BottomNavigationBarItem(icon: new Icon(Icons.favorite,color: Colors.black),title:new Text("Favorite",style: TextStyle(color: Colors.black))),
//             new BottomNavigationBarItem(icon: new Icon(Icons.account_box,color: Colors.black),title:new Text("Profile",style: TextStyle(color: Colors.black))),
//
//
//           ],
//         onTap: changePage,
//         currentIndex: currentPageIndex,
//       )
//     );
//   }
// }
