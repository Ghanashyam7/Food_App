import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/widgets/app_icon.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/exandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                App_Icon(icon: Icons.clear),
                App_Icon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                child: Center(child: BigText(size:26,text: "Porotta&Beefchilli")),
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                  )
                ),
              )
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/porotta-food.3.jpg",
                width: double.maxFinite,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text:               "Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in KeraKadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kera Kerala cuisine.Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in KeraKadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kera Kerala cuisine.Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in KeraKadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kera Kerala cuisine.Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in KeraKadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kera Kerala cuisine.Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in KeraKadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kera Kerala cuisine.Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in KeraKadala Curry (a.k.a. Kadala Kari) is a delicious spicy curry made with black chickpeas, coconut and a bevy of warming spices. This popular dish is traditionally served with poori for breakfast in Kera Kerala cuisine."
                  ),
                  margin: EdgeInsets.only(left: 20,right: 20),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              right: 20*2.5,
              left: 20*2.5,
              top: 10,
              bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                App_Icon(
                  iconSize: 25,
                  iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: "\$12.88"+"X"+"0",color: AppColors.mainBlackColor,size: 26,),
                App_Icon(
                  iconSize: 25,
                  iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
