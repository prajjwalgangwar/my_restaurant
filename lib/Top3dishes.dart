import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Hori.dart';
import 'package:restaurant/main.dart';

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
             tile("Matar Paneer","230","https://www.easycookingwithmolly.com/wp-content/uploads/2020/02/shahi-matar-paneer-recipe.jpg"),
             tile("Samosa","45","https://www.blueosa.com/wp-content/uploads/2020/01/top-10-indian-dishes-samosas.jpg"),
             tile("Risotto Balls (Arancini)","180","https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_4:3/k%2Farchive%2F4bd4b5bdd293c8fdebed5f39d865f38fe8e86df4"),

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
             // Row(
             //   children: [
             //     SizedBox(
             //       height: 60,
             //       child: Padding(
             //         padding: new EdgeInsets.all(10.0),
             //         child: RatingsPage(),
             //       ),
             //     ),
             //     Container(
             //       child: MaterialButton(
             //         color: Colors.black,
             //         child: Icon(Icons.help_center_sharp,color: Colors.white,),
             //         onPressed: () async {
             //
             //         },
             //       ),
             //     ),
             //   ],
             // )
           ],
         ),
       ),
     );
  }

}