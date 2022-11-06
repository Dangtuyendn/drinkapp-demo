import 'package:drinkapp/core/constants/dismension_constants.dart';
import 'package:drinkapp/core/constants/image_helper.dart';
import 'package:drinkapp/core/constants/textstyle_constant.dart';
import 'package:flutter/material.dart';
import 'package:drinkapp/core/constants/color_constants.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static String routerName = '/detail_screen';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget _elementDetail(String name, String element) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              name,
              style: TextStyles.defaultStyle.textname,
            ),
          ),
          const SizedBox(
            height: padingName7,
          ),
          SizedBox(
            width: 100,
            child: Text(
              element,
              style: TextStyles.defaultStyle.blue,
            ),
          )
        ],
      ),
    );
  }

  Widget _alignLeft(String textname) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        textname,
        style: TextStyles.defaultStyle.text16,
      ),
    );
  }

  Widget _circleAvatarNoBoder(String image) {
    return CircleAvatar(
      radius: circleavatarnoboder,
      child: ClipOval(
        child: Image(image: AssetImage(image)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: paddingcontainer),
      decoration:
          const BoxDecoration(gradient: Gradients.defaultGradientBackground),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 360,
                child: Column(
                  children: [
                    const SizedBox(
                      height: padingTop,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: ColorPalette.borderColorCircle,
                        child: CircleAvatar(
                          backgroundColor: ColorPalette.backgroundColorCircle,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    // padding
                    const SizedBox(
                      height: pading20,
                    ),
                    _elementDetail('Carbohydrate', '30\%'),
                    const SizedBox(
                      height: pading20,
                    ),
                    _elementDetail('Water', '50\%'),
                    const SizedBox(
                      height: pading20,
                    ),
                    _elementDetail('Soda', '30\%'),
                    const SizedBox(
                      height: 22,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Stack(
                        children: [
                          const Image(image: AssetImage(IconHelper.incrment)),
                          const Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Icon(
                                Icons.remove,
                                color: ColorPalette.textColorNone,
                              )),
                          const Padding(
                              padding: EdgeInsets.only(top: 10, left: 100),
                              child: Icon(
                                Icons.add,
                                color: ColorPalette.textColorNone,
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 55),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: ColorPalette.textColorBlue),
                              child: const Center(
                                child: Text('3'),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 185,
                  height: 360,
                  child: Stack(
                    children: const [
                      Image(image: AssetImage(ImageHelper.bigsize)),
                      Align(
                        alignment: Alignment.center,
                        child: Image(
                            image:
                                AssetImage(ImageHelper.backgroundImagePepsi)),
                      ),
                      Center(
                        child:
                            Image(image: AssetImage(ImageHelper.bigsizePepsi)),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: _alignLeft('Pepsi'),
              ),
              Text('4.0', style: TextStyles.defaultStyle.textname),
              const SizedBox(
                width: padingName7,
              ),
              const Image(image: AssetImage(ImageHelper.starYellow)),
              const Image(image: AssetImage(ImageHelper.starYellow)),
              const Image(image: AssetImage(ImageHelper.starYellow)),
              const Image(image: AssetImage(ImageHelper.starYellow)),
              const Image(image: AssetImage(ImageHelper.star)),
              const SizedBox(
                width: pading20,
              )
            ],
          ),
          const SizedBox(
            height: padingNameAvatar12,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '''
There are many variations of passages of Lorem
Ipsum available, but the majority have suffered
alteration in some form, by injected humour, or
randomised words.
''',
              style: TextStyles.defaultStyle.textname,
            ),
          ),
          const SizedBox(
            height: padingNameAvatar12,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Reviewed',
              style: TextStyles.defaultStyle.blue,
            ),
          ),
          const SizedBox(
            height: padding5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _circleAvatarNoBoder(ImageHelper.avatar1),
              _circleAvatarNoBoder(ImageHelper.avatar2),
              _circleAvatarNoBoder(ImageHelper.avatar3),
              _circleAvatarNoBoder(ImageHelper.avatar4),
              const CircleAvatar(
                radius: circleavatarnoboder,
                backgroundColor: ColorPalette.backgroundColorCircle,
                child: Icon(
                  Icons.add,
                  color: ColorPalette.circleColornone,
                ),
              ),
              const SizedBox(
                width: padding5,
              )
            ],
          ),
          const SizedBox(
            height: pading20,
          ),
          Row(
            children: [
              const SizedBox(
                width: pading37,
              ),
              Text(
                '&7.00',
                style: TextStyles.defaultStyle.blue,
              ),
              Expanded(
                  child: Center(
                child: Stack(
                  children: const [
                    Image(image: AssetImage(ImageHelper.buyNowBottom)),
                    SizedBox(
                      width: 152,
                      height: 46,
                      child: Center(
                          child:
                              Image(image: AssetImage(ImageHelper.buyNowtext))),
                    )
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    ));
  }
}
