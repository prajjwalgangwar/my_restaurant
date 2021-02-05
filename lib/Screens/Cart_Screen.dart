import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants1.dart';
import 'package:restaurant/Horizontal.dart';
import 'package:restaurant/Screens/Cuisine_Dishes.dart';
import 'package:restaurant/Screens/Home_Screen.dart';
import 'package:restaurant/Top3dishes.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CartWidget();
  }
}

class CartWidget extends StatefulWidget {
  @override
  CartWidgetState createState() => CartWidgetState();
}

class CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Cart',
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
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListTile(

              )
            ),
            calculation(),
            placeOrder()
          ],
        ),
      ),
    );
  }

  Widget cartCards(String dishname, String price, String image, int count) {
    int x = int.parse(price);
    return Card(
      child: Expanded(
        child: Column(
          children: [
            Container(
              child: ListTile(
                // isThreeLine: true,
                horizontalTitleGap: 10.0,
                leading: Container(
                  margin: new EdgeInsets.only(top: 5),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                        scale: 10),
                  ),
                ),
                title: Text(
                  dishname,
                  style:
                      TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
                ),
                subtitle: Text(
                  "₹" + x.toString(),
                  style:
                      TextStyle(fontSize: 11, letterSpacing: 1, wordSpacing: 2),
                ),
                trailing: Text(
                  "Total Items: " + count.toString(),
                  style:
                      TextStyle(fontSize: 11, letterSpacing: 1, wordSpacing: 2),
                ),
              ),
            ),
            Container(
              child: ListTile(
                horizontalTitleGap: 10.0,
                trailing: Text(
                  "Sub Total: " + (x * count).toString(),
                  style:
                      TextStyle(fontSize: 11, letterSpacing: 1, wordSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget calculation() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: new EdgeInsets.all(5.0),
            child: ListTile(
              leading: Text(
                "Net Total Amount: ",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
              trailing: Text(
                "1000",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.all(5.0),
            child: ListTile(
              leading: Text(
                "CGST: ",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
              trailing: Text(
                "2.5% of Net Total",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.all(5.0),
            child: ListTile(
              leading: Text(
                "SGST: ",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
              trailing: Text(
                "2.5% of Net Total",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.all(5.0),
            child: ListTile(
              leading: Text(
                "Grand Total: ",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
              trailing: Text(
                "NA + CGST + SGST",
                style:
                    TextStyle(fontSize: 13, letterSpacing: 1, wordSpacing: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget placeOrder() {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1.0,
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  splashColor: Colors.black45,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'Place Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.amp_stories_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
