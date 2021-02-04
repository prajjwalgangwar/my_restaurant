import 'dart:collection';

class Constants
{
  static List<String> lNorthIndian=['Indian Rogan Josh', 'Indian Fish Amritsari', 'Lachcha Paratha', 'Palak Paneer', 'Mutter Paneer', 'Rajma Dal', 'Punjabi-Style Chole', 'Kheer', 'Jalebi' ];
  static Map<String,List<String>> northIndian={'Indian Butter Chicken (Murg Makhani)' : ['Indian Butter Chicken (Murg Makhani)', '300', 'https://www.thespruceeats.com/thmb/UMESFzKDbBIfL-g4gYddJd4T1zA=/3156x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/authentic-butter-chicken-1957382-Hero-5b61b398c9e77c0050160f54.jpg'],
    'Indian Rogan Josh' : ['Indian Rogan Josh', '310', 'https://www.thespruceeats.com/thmb/ypQd3WsJfsnW4TwgCaaadMvN370=/2468x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/rogan-josh-recipe-1957574-hero-01-f52e315a56c342f39c3f4bca2bab8c86.jpg'],
    'Indian Fish Amritsari' : ['Indian Fish Amritsari', '480', 'https://www.thespruceeats.com/thmb/_HJOaCvWNQY7D1um3TT4qTs5caU=/2000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Pan-Fried-Fish-57edebaf3df78c690f3bbc89.jpg'],
    'Lachcha Paratha' : ['Lachcha Paratha', '70', 'https://www.thespruceeats.com/thmb/6oK4UVbjgBJNdUBR4vWDzuLOonA=/2250x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/roti-canai7-56a8a7ab3df78cf7729f6f57.jpg'],
    'Palak Paneer' : ['Palak Paneer', '200', 'https://www.thespruceeats.com/thmb/7VE4XK_Y-7HfgPBSEXSrjmcJvu0=/2958x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/palak-paneer-indian-food-670906913-588d4bfd5f9b5874ee3b6a71.jpg'],
    'Mutter Paneer' : ['Mutter Paneer', '250', 'https://www.thespruceeats.com/thmb/0akbs0HbQ4S6sGxlB5Cnvsu9S2U=/2200x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/mutter-paneer-peas-cottage-cheese-curry-1957971-hero-01-fe2c40de95ce41358589b3a7f01b2d97.jpg'],
    'Rajma Dal' : ['Rajma Dal', '220', 'https://www.thespruceeats.com/thmb/5r-wAo87mYQhL8A9GV--L5U41aQ=/2048x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5C052F23-4FC6-4E54-A3F9-461B278D67F1-5bb7a6dec9e77c00512beb5f.jpeg'],
    'Punjabi-Style Chole' : ['Punjabi-Style Chole', '180', 'https://www.thespruceeats.com/thmb/glVYJivU3LjhPee9s4ntPeT-UWQ=/3580x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chole-chickpea-curry-1957946-hero-01-a740af2e2b984ddca9e93096d6bc4c89.jpg'],
    'Kheer' : ['Kheer', '100', 'https://www.thespruceeats.com/thmb/FLXw0iB11mykc9MKLtQApQkeZHg=/3863x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/kheer-or-rice-pudding-is-an-indian-dessert-in-a-brown-terracotta-bowl-with-dry-fruits-toppings-949979032-5ae1dc628023b90036032dfe.jpg'],
    'Jalebi' : ['Jalebi', '100', 'https://www.thespruceeats.com/thmb/_iaTjkl88lorpH96Pc7AtoVhzbQ=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/jalebi-deep-fried-dessert-1957798-hero-01-871fe89e15d14aa88721406c63d23ee6.jpg']
  };
  static Map<String, List<String>> american={
    'Apple Pie' : ['Apple Pie', '100', 'https://www.traveller.com.au/content/dam/images/g/q/p/6/7/5/image.related.articleLeadwide.620x349.gqbjjm.png/1550469799141.jpg'],
    'The Hamburger' : ['The Hamburger', '80', 'http://www.smh.com.au/content/dam/images/g/q/g/o/m/7/image.imgtype.articleLeadwide.620x349.png/1469766176792.png'],
    'Tacos' : ['Tacos', '130', 'http://www.smh.com.au/content/dam/images/g/q/b/n/4/h/image.imgtype.articleLeadwide.620x349.png/1469614414035.png'],
    'Fajitas' : ['Fajitas', '200', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F140808181414-06-summer-of-1984.jpg'],
    'Cornbread' : ['Cornbread', '80', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170206150451-cornbread.jpg']
  };
  static Map<String, List<String>> italian={
    'Caprese Salad with Pesto Sauce' : ['Caprese Salad with Pesto Sauce', '300', 'https://i.ndtvimg.com/i/2017-09/caprese-salad_625x350_51506417724.jpg'],
    'Panzenella' : ['Panzenella', '200', 'https://i.ndtvimg.com/i/2017-09/panzenella_600x300_71506417795.jpg'],
    'Bruschetta' : ['Bruschetta', '250', 'https://i.ndtvimg.com/i/2017-09/bruschetta_625x350_71506417841.jpg'],
    'Pasta Carbonara' : ['Pasta Carbonara', '180', 'https://i.ndtvimg.com/i/2017-09/pasta-carbonara_600x300_41506417953.jpg'],
    'Margherita Pizza' : ['Margherita Pizza', '300', 'https://i.ndtvimg.com/i/2017-09/margherita-pizza_600x300_51506418004.jpg']
  };
  static Map<String, List<String>> southIndian={
    'Dosa' : ['Dosa', '100', 'https://deih43ym53wif.cloudfront.net/large_masala-dosa-shutterstock_785766178_c75e543a17.jpeg'],
    'Idli' : ['Idli', '75', 'https://deih43ym53wif.cloudfront.net/large_idly-food-india-shutterstock_101041240_7bd8a6703f.jpeg'],
    'Vada' : ['Vada', '80', 'https://deih43ym53wif.cloudfront.net/large_vada-south-indian-food-shutterstock_1073156264_6a1987aa83.jpeg'],
    'Uttapam' : ['Uttapam', '100', 'https://deih43ym53wif.cloudfront.net/large_food-uttapam-india-shutterstock_1133148674_2ab6b2fc65.jpeg'],
    'Pesarattu' : ['Pesarattu', '150', 'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2009/08/pesarattu-moong-dal-dosa.jpg']
  };
  static Map<String, List<String>> maxican={
    'Burritos with Minced Meat Filling' : ['Burritos with Minced Meat Filling', '100', 'https://i.ndtvimg.com/i/2015-03/burritos_625x350_41426062432.jpg'],
    'Chicken Quesadillas' : ['Chicken Quesadillas', '100', 'https://i.ndtvimg.com/i/2015-03/quesadillas_625x350_51426062477.jpg'],
    'Tacos' : ['Tacos', '120', 'https://i.ndtvimg.com/i/2015-03/tacos_625x350_41426064538.jpg'],
    'Guacamole' : ['Guacamole', '150', 'https://i.ndtvimg.com/i/2015-03/guacamole_625x350_51426065036.jpg'],
    'Chilli Con Carne' : ['Chilli Con Carne', '200', ' https://i.ndtvimg.com/i/2015-03/chili-con-carne_625x350_41426065733.jpg']
  };
  static Map<String, List<String>> chinese={
    'Dim Sums' : ['Dim Sums', '70', 'https://i.ndtvimg.com/i/2015-10/dimsum_625x350_51446202982.jpg'],
    'Hot and Sour Soup' : ['Hot and Sour Soup', '100', 'https://i.ndtvimg.com/i/2016-06/soup-625_625x350_81466064298.jpg'],
    'Noodles' : ['Noodles', '150', 'https://i.ndtvimg.com/i/2016-06/noodles-625_625x350_41466064269.jpg'],
    'Szechwan Chilli Chicken' : ['Szechwan Chilli Chicken', '180', 'https://i.ndtvimg.com/i/2015-02/chilli-chicken_625x350_81424323578.jpg'],
    'Spring Rolls' : ['Spring Rolls', '100', 'https://i.ndtvimg.com/i/2015-02/spring-roll_625x350_51424323845.jpg']
  };
  static Map<String, List<String>> thai={
    'Thai Chicken Satay' : ['Thai Chicken Satay', '100', 'https://www.thespruceeats.com/thmb/B5WRdv4vWYnb-XnE1YHGe9Z_hj4=/1174x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-satay-recipe-3217478-9-11_preview-5afc98338e1b6e0036d4c9d9.jpeg'],
    'Thai Mini Shrimp Lettuce Wraps' : ['Thai Mini Shrimp Lettuce Wraps', '150', 'https://www.thespruceeats.com/thmb/Iz7jdwECMTXd4F08qgny9v-RXzc=/755x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/ThaiMiniShrimpLettuceWraps-DarleneA.Schmidt-5b116cf0a9d4f90038e40454.jpg'],
    'Tom Khaa' : ['Tom Khaa', '100', 'https://www.thespruceeats.com/thmb/G_tDOrln1qhUos0n4hsbfKDkOQ4=/1878x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Thai-Tom-Yum-Soup-GettyImages-593462647-58b732913df78c060e03cc04.jpg'],
    'Thai Green Curry' : ['Thai Green Curry', '200', 'https://www.thespruceeats.com/thmb/h3dLJMXcp6mVWKHOpqqEbxYHnPI=/1150x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/thai-green-curry-recipe-p3-3217442-hero-1-a3fcdfbc551849718c7750fa63ec8c6a.jpg'],
    'Thai Panang Curry' : ['Thai Panang Curry', '130', 'https://www.thespruceeats.com/thmb/sMGLhqVPsqvpJDntcu7v8zUm3e0=/1174x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/thai-panang-curry-recipe-3217463-11_preview-5af9d0821d64040036360d96.jpeg']
  };
  static Map<String, List<String>> greece={
    'Taramasalata' : ['Taramasalata', '100', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/taramasalata-401c253.jpg?webp=true&quality=90&resize=556%2C278'],
    'Moussaka' : ['Moussaka', '200', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/moussaka-49adf26.jpg?webp=true&quality=90&resize=556%2C278'],
    'Grilled meat' : ['Grilled meat', '150', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/grilled-lamb-98ad485.jpg?webp=true&quality=90&resize=556%2C278'],
    'Courgette balls' : ['Courgette balls', '150', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/courgette-fritter-6aefe69.jpg?webp=true&quality=90&resize=556%2C278'],
    'Feta & cheeses' : ['Feta & cheeses', '200', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/feta2-4f917ca.jpg?webp=true&quality=90&resize=556%2C278']
  };
  static Map<String, List<String>> japanese={
    'Sushi' : ['Sushi', '150', 'https://resources.matcha-jp.com/archive_files/jp/2016/08/20160823_sushi2.jpg'],
    'Sashimi' : ['Sashimi', '200', 'https://resources.matcha-jp.com/resize/720x2000/2019/05/06-76329.jpeg'],
    'Tempura' : ['Tempura', '200', 'https://resources.matcha-jp.com/archive_files/jp/2015/09/ginza_gonpachi_20140914v.jpg'],
    'Soba - Buckwheat Noodles' : ['Soba - Buckwheat Noodles', '250', 'https://resources.matcha-jp.com/archive_files/jp/2015/10/kotobaziten_soba_20151019a.jpg'],
    'Udon - Hearty Wheat Noodles' : ['Udon - Hearty Wheat Noodles', '180', 'https://resources.matcha-jp.com/archive_files/jp/2016/01/2223059600_b53842b99e_b.jpg']
  };
  static Map<String, List<String>> fusionCuisin={
    'Thandai Rabdi' : ['Thandai Rabdi', '100', 'https://d36v5spmfzyapc.cloudfront.net/wp-content/uploads/2018/10/Thandai-Rabdi-1.jpg.webp'],
    'KoJa with Kamikaze Fries' : ['KoJa with Kamikaze Fries', '400', 'https://www.instagram.com/p/BP3mqItlcnk/?utm_source=ig_embed']
  };

  static List<String> lCategories=['North Indian', 'Italian', 'Mexican', 'Chinese', 'Thai', 'South Indian',
    'American', 'Greece', 'Japanese', 'Fusion'];

  static Map<String, Map<String, List<String>>> map={
    'North Indian' : northIndian,
    'Italian' : italian,
    'Mexican' : maxican,
    'Chinese' : chinese,
    'Thai'  : thai,
    'South Indian' : southIndian,
    'American' : american,
    'Greece' : greece,
    'Japanese' : japanese,
    'Fusion' : fusionCuisin
   };
}