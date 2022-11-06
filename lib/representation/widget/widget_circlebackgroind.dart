import 'package:drinkapp/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:drinkapp/core/constants/image_helper.dart';
import 'package:drinkapp/core/constants/dismension_constants.dart';
import 'package:drinkapp/core/constants/textstyle_constant.dart';

class BackgroundCircleWidget extends StatelessWidget {
  const BackgroundCircleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: circleradius,
      backgroundColor: ColorPalette.backgroundColorCircle,
      child: CircleAvatar(
        child: ClipOval(
          child: Image(image: AssetImage(ImageHelper.lemon)),
        ),
      ),
    );
  }

  Widget box(BuildContext context) {
    return Container(
      width: 89,
      height: 122,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    );
  }

  Widget circleAvatarNoBoder(String image) {
    return CircleAvatar(
      radius: circleavatarnoboder,
      child: ClipOval(
        child: Image(image: AssetImage(image)),
      ),
    );
  }

  Widget boxNamePrice(
    String box,
    String image,
    String name,
    String price,
  ) {
    return SizedBox(
      width: widthboxnameprice90,
      height: heightboxnameprice150,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image(image: AssetImage(box))),
          Align(
            alignment: Alignment.topCenter,
            child: Image(image: AssetImage(image)),
          ),
          Positioned(
              top: paddingIcon72,
              child: SizedBox(
                width: widthboxnameprice90,
                child: Center(
                  child: Text(name, style: TextStyles.defaultStyle.textname),
                ),
              ))
        ],
      ),
    );
  }
}
