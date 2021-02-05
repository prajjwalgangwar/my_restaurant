import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants1.dart';
import 'package:restaurant/Screens/Cart_Screen.dart';
import 'package:restaurant/Screens/Home_Screen.dart';
import 'package:restaurant/Horizontal.dart';

class CuisineDishes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CuisineDishesWidget();
  }
}

class CuisineDishesWidget extends StatefulWidget {
  @override
  CuisineDishesWidgetState createState() => CuisineDishesWidgetState();
}

class CuisineDishesWidgetState extends State<CuisineDishesWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> subCat = Constants1().catToSubCat[Horizontal.cat];
    Map<String, List<String>> details = Constants1.subCatToDetails[subCat];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          Horizontal.cat,
          style: TextStyle(
              wordSpacing: 2.0,
              letterSpacing: 2.0,
              fontSize: 15.0,
              color: Colors.white),
        ),
        leading: RaisedButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        actions: [
          MaterialButton(
            color: Colors.black,
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      body: new ListView.builder(
        itemCount: subCat.length,
        itemBuilder: (context, index) {
          return dishCard(details[subCat[index]][0], details[subCat[index]][1],
              details[subCat[index]][2]);
        },
      ),
    ));
  }


  String dishName;
  String DishPrice;

  String picDish;

  Widget dishCard(String name, String price, String photo) {
    int counter=0;
    int subTotal=0;
    List<String> l;
    if(Constants1.cartCardDetails.containsKey(name))
      {
        l=Constants1.cartCardDetails[name];
        counter=int.parse(l[3]);
        counter++;
        subTotal=int.parse(l[4]);
        subTotal+=(int.parse(price) * counter);
        l.insert(3, counter.toString());
        l.insert(4, subTotal.toString());
        Constants1.cartCardDetails[name]=l;
      }
    else
      {
        l.add(name);
        l.add(price);
        l.add(photo);
        l.add(1.toString());
        l.add(price);
        Constants1.cartCardDetails[name]=l;
      }
    return Container(
      child: Card(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                margin: new EdgeInsets.all(10.0),
                width: 400,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: NetworkImage(photo), fit: BoxFit.cover),
                ),
              ),
              ListTile(
                title: Text(
                  name,
                  style: TextStyle(
                      // backgroundColor: Colors.green[50],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2),
                ),
                subtitle: Text(
                  "₹" + price,
                  style:
                      TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
                ),
                trailing: FlatButton(
                  minWidth: 5,
                  color: Colors.white,
                  child: Icon(
                    Icons.add_box_sharp,
                    color: Colors.black,
                  ),
                  onPressed: () async {
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
