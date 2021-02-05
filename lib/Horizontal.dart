
import 'package:flutter/material.dart';
import 'package:restaurant/Constants1.dart';
import 'package:restaurant/Screens/Cuisine_Dishes.dart';


class Horizontal extends StatelessWidget {
  static String _category;
  set category(name) => _category=name;
  get category => _category;
  int _index = 0;
  @override
  Widget build(BuildContext context) {

    // Map<String, Map<List<String>>> map=Constants().map;
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
                reverse: true,
                pageSnapping: true,
                itemBuilder: (_, i) {
                  return ListView(
                    shrinkWrap: true,
                    // reverse: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      cuisineNames(Constants1.categories[0], Colors.lightGreen, "https://www.livemorezone.com/wp-content/uploads/north-indian-food-livemorezone-dbs.jpg",context),
                      cuisineNames(Constants1.categories[1], Colors.orangeAccent, "https://rimage.gnst.jp/rest/img/e67a7ru40000/s_0nc1.jpg?t=1607325695",context),
                      cuisineNames(Constants1.categories[2], Colors.lime, "https://www.wellandgood.com/wp-content/uploads/2019/10/healthy-mexican-food-stocksy-pixel-stories.jpg",context),
                      cuisineNames(Constants1.categories[3], Colors.greenAccent, "https://www.thespruceeats.com/thmb/sUu2nvioezZCkE7Cy3V87CUiml0=/4494x3000/filters:fill(auto,1)/chinese-pan-fried-dumplings-694499_dumpling-step-08-8a2fa534bd9a4802b9fafbe3f716a80e.jpg",context),
                      cuisineNames(Constants1.categories[4], Colors.black26, "https://img.theculturetrip.com/450x/wp-content/uploads/2020/04/2bcpa1n.jpg",context),
                      cuisineNames(Constants1.categories[5], Colors.red[200], "https://pyxis.nymag.com/v1/imgs/8c7/68b/0b742d483e483bf5f547faa34f98c91d23-15-saravana-bhavan.rsquare.w1200.jpg",context),
                      cuisineNames(Constants1.categories[6], Colors.orange[200], "https://cdn.vox-cdn.com/thumbor/vkGokgEJrcHX_RFaFVd7VEmNWsQ=/0x0:2942x3848/1200x900/filters:focal(1236x1689:1706x2159)/cdn.vox-cdn.com/uploads/chorus_image/image/63673081/Pollo_Bravo___Tallarines_Verdes_chicken_plantains__houstonsgotspice.0.jpg",context),
                      cuisineNames(Constants1.categories[7], Colors.purpleAccent[50], "https://greeking.me/media/k2/items/cache/0d1fd34f22c9730e91eb5170fbddc114_L.jpg",context),
                      cuisineNames(Constants1.categories[8], Colors.deepOrangeAccent[100], "https://artsclubmadrid.com/wp-content/uploads/2020/09/sushi.jpg",context),
                      cuisineNames(Constants1.categories[9], Colors.indigo[100], "https://i.pinimg.com/originals/b0/f7/b2/b0f7b2a39f52735d70d7d791ceb07880.jpg",context),

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
  static String cat;

  Widget cuisineNames(String name_of_cuisine, final x, String path, BuildContext context)
  {

    int i=1;
      return Transform.scale(
        scale: i == _index ? 1 : 0.91,
        child: Card(
          color: x,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: InkWell(
            splashColor: Colors.greenAccent,
            onTap: () {
              cat=name_of_cuisine;
              new Horizontal().category = name_of_cuisine;
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => CuisineDishes()));

            },
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
        ),
      );
  }
}
