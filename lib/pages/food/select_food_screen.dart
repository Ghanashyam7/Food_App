import 'package:flutter/material.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/widgets/app_column.dart';
import 'package:foodapp/widgets/app_icon.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/selected_food_appColumn.dart';
import 'package:foodapp/widgets/small_text.dart';

class SelectedFood extends StatefulWidget {
  const SelectedFood({Key? key}) : super(key: key);

  @override
  State<SelectedFood> createState() => _SelectedFoodState();
}

class _SelectedFoodState extends State<SelectedFood> {
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
                InkWell(
                    child: App_Icon(icon: Icons.clear),
                onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainFoodPage()));
                },
                ),
                App_Icon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectedAppColumn(text: "Biriyani"),
                      SizedBox(height: 30,),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child: BigText(text: "Introduce",size: 20,)),
                      SizedBox(height: 30,),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child: SmallText(text: "Commonly used in soups, eaten boiled",size: 17,))
                    ],
                  ),
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
            expandedHeight: 500,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/Beef_Biriyani_food.6.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
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
                  child: BigText(text: "\$0.1  Add to cart",color: Colors.white,),
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
