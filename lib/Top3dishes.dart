import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants.dart';
import 'package:restaurant/Rating.dart';

class Top3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Top3State();
  }
}

class Top3State extends StatefulWidget{
  Top3StateWidget createState()=>Top3StateWidget();
}

class Top3StateWidget extends State<Top3State>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
         child: Column(
           children: [
             tile(Constants.fusionCuisin["Thandai Rabdi"].elementAt(0),Constants.fusionCuisin["Thandai Rabdi"].elementAt(1),Constants.fusionCuisin["Thandai Rabdi"].elementAt(2)),
             tile(Constants.northIndian["Mutter Paneer"].elementAt(0),Constants.northIndian["Mutter Paneer"].elementAt(1),Constants.northIndian["Mutter Paneer"].elementAt(2)),
             tile(Constants.american["The Hamburger"].elementAt(0),Constants.american["The Hamburger"].elementAt(1),Constants.american["The Hamburger"].elementAt(2)),

           ],
         )
    );
  }

  Widget tile(String nameofDish,String price, String image)
  {
     return Card(
       child: Expanded(
         child: Column(
           children: [
             Container(
               child: ListTile(
                 // isThreeLine: true,
                 horizontalTitleGap: 10.0,
                 title: Text(
                   nameofDish,
                   style: TextStyle(
                     fontSize: 13,
                     letterSpacing: 1,
                     wordSpacing: 2
                   ),
                 ),
                 // subtitle: SizedBox(
                 //   width: 100,
                 //     child: RatingsPage()),
                 trailing: Text(
                 "₹"+ price,
                 style: TextStyle(
                     fontSize: 11,
                     letterSpacing: 1,
                     wordSpacing: 2
                 ),
               ),
                 leading: Container(
                   margin: new EdgeInsets.only(top: 5),
                   width: 80,
                   height: 80,
                   decoration: BoxDecoration(
                     shape: BoxShape.rectangle,
                     image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover,scale: 10),
                   ),
                 ),
               ),
             ),
             Container(
               child: ListTile(
                 horizontalTitleGap: 10.0,
                 trailing: FlatButton(
                   minWidth: 5,
                   color: Colors.white,
                   child: Icon(Icons.add_box_sharp,color: Colors.black,),
                   onPressed: () async {
                   },
                 ),
                 leading: SizedBox(
                         height: 60,
                         child: Padding(
                           padding: new EdgeInsets.all(10.0),
                           child: RatingsPage(),
                         ),
                       ),
               ),
             ),

           ],
         ),
       ),
     );
  }

}