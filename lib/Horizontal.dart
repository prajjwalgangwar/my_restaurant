import 'package:flutter/material.dart';
import 'package:restaurant/Top3dishes.dart';

class Horizontal extends StatelessWidget {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*2,
              height: 400, // card height
              child: PageView.builder(
                // scrollDirection: Axis.vertical,
                itemCount: 1,
                controller: PageController(viewportFraction: 0.75),
                itemBuilder: (_, i) {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      cuisineNames("North Indian", Colors.lightGreen, "https://www.livemorezone.com/wp-content/uploads/north-indian-food-livemorezone-dbs.jpg"),
                      cuisineNames("Italian", Colors.orangeAccent, "https://rimage.gnst.jp/rest/img/e67a7ru40000/s_0nc1.jpg?t=1607325695"),
                      cuisineNames("Chinese", Colors.lime, "https://media.timeout.com/images/105377614/image.jpg"),
                      cuisineNames("Mexican", Colors.greenAccent, "https://previews.123rf.com/images/plateresca/plateresca2005/plateresca200500149/147654569-mexican-food-a-flat-lay-nachos-tortillas-paloma-cocktails-and-other-dishes-overhead-square-shot.jpg"),
                      cuisineNames("Thai", Colors.black26, "https://www.vidhyashomecooking.com/wp-content/uploads/2020/08/SouthIndianLunchThaliFeature-645x650.jpg"),
                      cuisineNames("South Indian", Colors.red[200], "https://pyxis.nymag.com/v1/imgs/8c7/68b/0b742d483e483bf5f547faa34f98c91d23-15-saravana-bhavan.rsquare.w1200.jpg"),

                    ],
                  );
                },
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Top3(),
          // )
        ],
      ),
    );
  }

  Widget cuisineNames(String name_of_cuisine, final x, String path)
  {
    int i=1;
      return Transform.scale(
        scale: i == _index ? 1 : 0.91,
        child: Card(
          color: x,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 310,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(image: NetworkImage(path), fit: BoxFit.cover),
                ),
              ),

              Container(
                margin: new EdgeInsets.all(10.0),
                child: Text(
                  name_of_cuisine,
                  style: TextStyle(
                      fontSize: 23,
                      wordSpacing: 2,
                      letterSpacing: 2
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
