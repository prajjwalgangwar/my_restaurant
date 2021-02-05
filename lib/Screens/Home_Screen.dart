
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Horizontal.dart';
import 'package:restaurant/Screens/Cart_Screen.dart';
import 'package:restaurant/Top3dishes.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }
}

class HomeWidget extends StatefulWidget{
  @override
  HomeWidgetState createState()=>HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  static String cat;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'My Restaurant',
            style: TextStyle(
                wordSpacing: 2.0,
                letterSpacing: 2.0,
                fontSize: 15.0,
                color: Colors.white
            ),
          ),
          leading: RaisedButton(
            color: Colors.black,
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
            },
            child: Icon(
              Icons.g_translate,
              color: Colors.white,
            ),
          ),
          actions: [
            MaterialButton(
              color: Colors.black,
              child: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ],
        ),
        body: new SingleChildScrollView(
          child: Column(
            children: [
              Horizontal(),
              Top3()
            ],
          )
        ),
      ),
    );
  }

}
