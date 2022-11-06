import 'package:drinkapp/core/constants/color_constants.dart';
import 'package:drinkapp/core/constants/image_helper.dart';
import 'package:drinkapp/core/constants/textstyle_constant.dart';
import 'package:drinkapp/representation/screen/detail_screen.dart';
import 'package:drinkapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:drinkapp/core/constants/dismension_constants.dart';
//import 'package:flutter_gradients/flutter_gradients.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'drink app',
        theme: ThemeData(
          scaffoldBackgroundColor: ColorPalette.backgroundColor,
          // scaffoldBackgroundColor: Gradients.defaultGradientBackground),
        ),
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: const Homepage());
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  Widget _circleAvatar(String image) {
    return CircleAvatar(
      radius: circleradius,
      backgroundColor: ColorPalette.backgroundColorCircle,
      child: CircleAvatar(
        radius: circleRadiusSecond,
        child: ClipOval(
          child: Image(image: AssetImage(image)),
        ),
      ),
    );
  }

  Widget _boxRecomended(
      String box, String image, String name, String element, String price) {
    return Stack(
      children: [
        Image(image: AssetImage(box)),
        Row(
          children: [
            const SizedBox(
              width: padingNameAvatar12,
            ),
            SizedBox(
              width: 90,
              height: 80,
              child: Column(
                children: [
                  const SizedBox(
                    height: padingNameAvatar12,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(name, style: TextStyles.defaultStyle.textname),
                  ),
                  const SizedBox(
                    height: padingName7,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text(element, style: TextStyles.defaultStyle.textname),
                  ),
                  const SizedBox(
                    height: padingName7,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(price, style: TextStyles.defaultStyle.textname),
                  )
                ],
              ),
            ),
            SizedBox(
                width: 56,
                height: 90,
                child: Center(
                  child: Image(image: AssetImage(image)),
                ))
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
            left: paddingcontainer, right: paddingcontainer),
        decoration:
            const BoxDecoration(gradient: Gradients.defaultGradientBackground),
        child: Column(
          children: [
            const SizedBox(height: padingTop),
            //AVATAR & NOTIFICATION
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  radius: circleradius,
                  backgroundColor: ColorPalette.backgroundColorCircle,
                  child: Padding(
                    padding: EdgeInsets.all(paddingCircle),
                    child: ClipOval(
                      child: Image(image: AssetImage(ImageHelper.avatar)),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: circleradius,
                  backgroundColor: ColorPalette.backgroundColorCircle,
                  child: CircleAvatar(
                      radius: circleRadiusSecond,
                      backgroundColor: ColorPalette.borderColorCircle,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )),
                )
              ],
            ),

            const SizedBox(
              height: paddingcontainer,
            ),

            //TEXT
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '''
Ekssplore our new
tasty Drink
''',
                style: TextStyles.defaultStyle.textheader,
              ),
            ),

            //NAME
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: paddingRight70 + 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Orange',
                      style: TextStyles.defaultStyle.textname,
                    ),
                    Text(
                      'Mango',
                      style: TextStyles.defaultStyle.textname,
                    ),
                    Text(
                      'Lemon',
                      style: TextStyles.defaultStyle.textname,
                    ),
                    Text(
                      'Grape',
                      style: TextStyles.defaultStyle.textname,
                    ),
                  ],
                ),
              ),
            ),
            // space
            const SizedBox(
              height: 2,
            ),

            //IMAGE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _circleAvatar(ImageHelper.orange),
                _circleAvatar(ImageHelper.mago),
                _circleAvatar(ImageHelper.lemon),
                _circleAvatar(ImageHelper.grape),
                Stack(
                  children: const [
                    Image(image: AssetImage(IconHelper.iconmenu)),
                  ],
                ),
              ],
            ),

            // space
            const SizedBox(
              height: padingNameAvatar12,
            ),

            //text: Mostpopular
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Most popular',
                style: TextStyles.defaultStyle.blue,
              ),
            ),

            // space
            const SizedBox(height: pading20),

            //name & price $ image
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 90,
                  height: 150,
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Image(image: AssetImage(ImageHelper.box1)),
                      ),
                      const Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 79,
                          child: Image(image: AssetImage(ImageHelper.sprite)),
                        ),
                      ),
                      Positioned(
                          top: 70,
                          child: SizedBox(
                            width: 90,
                            child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailScreen()));
                                  },
                                  child: Text('Pepsi',
                                      style: TextStyles.defaultStyle.textname)),
                            ),
                          )),
                      Positioned(
                          top: 110,
                          child: SizedBox(
                            width: 90,
                            child: Center(
                              child: Text('\$ 5.00',
                                  style: TextStyles.defaultStyle.textname),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  height: 150,
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Image(image: AssetImage(ImageHelper.box)),
                      ),
                      const Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 79,
                          child: Image(image: AssetImage(ImageHelper.pepsi)),
                        ),
                      ),
                      Positioned(
                          top: 70,
                          child: SizedBox(
                            width: 90,
                            child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailScreen()));
                                  },
                                  child: Text('Pepsi',
                                      style: TextStyles.defaultStyle.textname)),
                            ),
                          )),
                      Positioned(
                          top: 110,
                          child: SizedBox(
                            width: 90,
                            child: Center(
                              child: Text('\$ 5.00',
                                  style: TextStyles.defaultStyle.textname),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  height: 150,
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Image(image: AssetImage(ImageHelper.box3)),
                      ),
                      const Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 79,
                          child: Image(image: AssetImage(ImageHelper.coca)),
                        ),
                      ),
                      Positioned(
                          top: 70,
                          child: SizedBox(
                            width: 90,
                            child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailScreen()));
                                  },
                                  child: Text('Cocacola',
                                      style: TextStyles.defaultStyle.textname)),
                            ),
                          )),
                      Positioned(
                          top: 110,
                          child: SizedBox(
                            width: 90,
                            child: Center(
                              child: Text('\$ 4.00',
                                  style: TextStyles.defaultStyle.textname),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            //Space
            const SizedBox(
              height: padingNameAvatar12,
            ),

            //TEXT
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recommned',
                style: TextStyles.defaultStyle.blue,
              ),
            ),
            const SizedBox(
              height: padingNameAvatar12,
            ),

            //DETAIL
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _boxRecomended(ImageHelper.boxRecomended, ImageHelper.cocablack,
                    "Cocacola", 'Cafein Flavor', '\$7.00'),
                _boxRecomended(
                    ImageHelper.boxrecomended2,
                    ImageHelper.orangedrink,
                    'orange',
                    'Orange Flavor',
                    '\$5.00')
              ],
            ),
            const SizedBox(
              height: padding5,
            ),
            Stack(
              children: [
                Container(
                  width: 360,
                  height: 50,
                  decoration: BoxDecoration(
                      // tạo boder
                      border: const Border.fromBorderSide(BorderSide(
                          width: 2, color: Color.fromARGB(255, 180, 211, 236))),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 174, 163, 163),
                            Color.fromARGB(133, 48, 46, 46)
                          ],
                          begin: FractionalOffset(0.0, 0.9),
                          end: FractionalOffset(0.0, 0.1),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(10)),
                ),
                //icon home
                const Positioned(
                    top: 5,
                    left: 10,
                    child: SizedBox(
                      width: 50,
                      child: Center(
                        child: Image(image: AssetImage(IconHelper.home)),
                      ),
                    )),
                //text home
                const Positioned(
                    top: 30,
                    left: 10,
                    child: SizedBox(
                      width: 50,
                      child: Center(
                        child: Text(
                          'Home',
                          style: TextStyle(color: ColorPalette.textColorBlue),
                        ),
                      ),
                    )),

                //icon cart
                const Positioned(
                  top: 5,
                  left: 80,
                  child: Image(image: AssetImage(IconHelper.cart)),
                ),
                //icon cart
                const Positioned(
                  top: 5,
                  left: paddingIcon72 * 2,
                  child: Image(image: AssetImage(IconHelper.cart)),
                ),
                //icon heart
                const Positioned(
                  top: 5,
                  left: paddingIcon72 * 3,
                  child: Image(image: AssetImage(IconHelper.heart)),
                ),
                const Positioned(
                  top: 10,
                  left: paddingIcon72 * 4 + 4,
                  child: Image(image: AssetImage(IconHelper.iconme2)),
                ),
                const Positioned(
                  top: 20,
                  left: paddingIcon72 * 4,
                  child: Image(image: AssetImage(IconHelper.iconme)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
