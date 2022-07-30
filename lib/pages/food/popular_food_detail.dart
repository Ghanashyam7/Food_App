import 'package:flutter/material.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/app_column.dart';
import 'package:foodapp/widgets/app_icon.dart';
import 'package:foodapp/widgets/exandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widgets.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //backgroundimage
          Positioned(
            left: 0,
            right: 0,
            child:
          Container(
            width: double.maxFinite ,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/Food.1.jpg"
                )
              )
            ),
          ),
          ),
          //icon widgets
          Positioned(
            top: 45,
            left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  App_Icon(icon: Icons.arrow_back_ios),
                  App_Icon(icon: Icons.shopping_cart)
                ],
              )),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 330,
            child: Container(
              padding: EdgeInsets.only(right: 20,left: 20,top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Poori&Kadalacurry",),
                  SizedBox(height: 20),
                  BigText(text: "Introduce"),
                  SizedBox(height: 20,),
                  Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in KeraKadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kera Kerala cuisine. "))),
                  //Text("Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kerala cuisine.", style: TextStyle(color: AppColors.mainColor),)
                ],
              ),
            ),
          )

        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30,left: 20, right: 20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20*2),
            topRight: Radius.circular(20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: 5),
                  BigText(text: "0"),
                  SizedBox(width: 5,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
