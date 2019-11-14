import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:shopapp_tut/components/horizontal_listview.dart';
import 'package:shopapp_tut/components/products.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        
      ),

    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('image/w3.jpeg'),
          AssetImage('image/c1.jpg'),
          AssetImage('image/m1.jpeg'),
          AssetImage('image/w4.jpeg'),
          AssetImage('image/m2.jpg'),
        ],
        autoplay: false,
        //animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Fashapp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(accountName: Text('Breno Melo'), accountEmail: Text('breno-kf@hotmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
      ),
            // body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Acount'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green,),
              ),
            ),
          ],
        ),
      ),
      body:  new ListView(
        children: <Widget>[
          // image corusel begins here
          image_carousel,
          // categories
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),
           ),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recent products'),),

          //grid view

          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
