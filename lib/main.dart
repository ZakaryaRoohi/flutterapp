import 'package:flutter/material.dart';
import 'package:myapp/my_home_page.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'اینستاگرام',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData( color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
        ),
        home : MyHomePages()
    );
  }

}



















// import 'package:flutter/material.dart';
//
// void main() => runApp(new MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Shopping App",
//       debugShowCheckedModeBanner: false,
//       home: ShoppingList(products: <Product>[
//         Product(name: 'Eggs'),
//         Product(name: 'Apples'),
//         Product(name: 'Chocolate chips'),
//         Product(name: 'banana'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//         Product(name: 'milk'),
//       ]),
//     );
//   }
// }
//
// class Product {
//   final String name;
//
//   Product({required this.name});
// }
//
//
// class ShoppingList extends StatefulWidget {
//   final List<Product> products;
//
//   ShoppingList({required this.products});
//
//   @override
//   State<StatefulWidget> createState() => ShoppingListState();
// }
//
// class ShoppingListState extends State<ShoppingList> {
//   Set<Product> shoppingCart = Set<Product>();
//
//   void handleCartChanged(Product product, bool inCart) {
//     setState(() {
//       if (inCart) {
//         shoppingCart.remove(product);
//       } else {
//         shoppingCart.add(product);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text('Shopping List'),
//       ),
//       body: new ListView(
//         padding: EdgeInsets.symmetric(vertical: 8.0),
//         children: widget.products.map((Product product) {
//           return ShoppingListItem(
//               product: product,
//               inCart: shoppingCart.contains(product),
//               onCartChanged: handleCartChanged);
//         }).toList(),
//       ),
//     );
//   }
// }
//
// class ShoppingListItem extends StatelessWidget {
//   final Product product;
//   final onCartChanged;
//   final bool inCart;
//
//   ShoppingListItem(
//       {required this.inCart, this.onCartChanged, required this.product});
//
//   Color getColor(BuildContext context) {
//     return inCart ? Colors.black54 : Theme.of(context).primaryColor;
//   }
//
//   TextStyle? getTextStyle(BuildContext context) {
//     if (inCart) {
//       return TextStyle(
//           color: Colors.black54, decoration: TextDecoration.lineThrough);
//     } else
//       return null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: () {
//         print(inCart);
//         onCartChanged(product, inCart);
//       },
//       leading: CircleAvatar(
//         backgroundColor: getColor(context),
//         child: Text(product.name[0]),
//       ),
//       title: Text(product.name, style: getTextStyle(context)),
//     );
//   }
// }

// void main()=> runApp(new MyApp());
//
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return new MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'My App',
//      home: new MyHomePage(
//        title: 'My App2'
//      ),
//    );
//   }
//
// }
// class MyHomePage extends StatefulWidget{
//   final String title;
//
//   MyHomePage({required this.title});
//   @override
//   State<StatefulWidget> createState() {
//    return new MyHomePageState();
//
//   }
//
// }
//
// class MyHomePageState extends State<MyHomePage>{
//
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//   return new Scaffold(
//     appBar: new AppBar(
//       title: new Text(widget.title),
//     ),
//     body:  new Center(
//       child: new Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           new Text("you have pushed the buttons this many times :"),
//       new Text("$counter",
//               style:  Theme.of(context).textTheme.display2,)
//         ],
//       ),
//     ),
//     floatingActionButton: new FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: (){
//           setState(() {
//             ++counter;
//           });
//           print(counter);
//         }),
//   );
//   }
//
// }

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
