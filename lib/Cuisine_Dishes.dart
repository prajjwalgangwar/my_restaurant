
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants.dart';
import 'package:restaurant/Home_Screen.dart';
import 'package:restaurant/Horizontal.dart';
import 'package:restaurant/Top3dishes.dart';


class CuisineDishes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CuisineDishesWidget();
  }
}

class CuisineDishesWidget extends StatefulWidget{
  @override
  CuisineDishesWidgetState createState()=>CuisineDishesWidgetState();
}

class CuisineDishesWidgetState extends State<CuisineDishesWidget> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Cuisine Name',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
          ),
          actions: [
            MaterialButton(
              color: Colors.black,
              child: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: () async {
                // showAlertDialog(context);
              },
            ),
          ],
        ),
        body: new ListView.builder(
          itemCount: Constants.lNorthIndian.length,
          itemBuilder: (context, index) => new Text(Constants.lNorthIndian[0]),
          ),
        )
      );
  }

}
