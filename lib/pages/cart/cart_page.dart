

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/widgets/app_icon.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/small_text.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 20*3,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  App_Icon(icon: Icons.arrow_back_ios,
                  iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: 24,
                  ),
                  SizedBox(width: 20*5,),
                  App_Icon(icon: Icons.home,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: 24,
                  ),
                  App_Icon(icon: Icons.shopping_cart_outlined,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: 24,
                  ),
                ],
          )),
          Positioned(
            top: 20*5,
            right: 20,
             left: 20,
             bottom: 0,
             child: Container(
               margin: EdgeInsets.only(top: 15),
               child: MediaQuery.removePadding(
                 context: context,
                 removeTop: true,
                 child: ListView.builder(
                     itemCount: 10,
                     itemBuilder: (_, index){
                       return Container(
                         width: double.maxFinite,
                         height: 20*5,
                         child: Row(
                           children: [
                             Container(
                               margin: EdgeInsets.only(bottom: 10),
                               width: 20*5,
                               height: 20*5,
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   fit: BoxFit.cover,
                                   image: AssetImage(
                                     "assets/images/oonu_food.4.webp"
                                   )
                                 ),
                                 borderRadius: BorderRadius.circular(20),
                                 color: Colors.white,
                               ),
                             ),
                             Expanded(
                                 child: Container(
                                   margin: EdgeInsets.only(left: 10),
                                   height: 20*5,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                       BigText(text: "Oonu",color: Colors.black54,),
                                       SmallText(text: "Spicy"),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           BigText(text: "\$ 33.0", color: Colors.redAccent,size: 15,),
                                           Container(
                                             padding: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
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
                                         ],
                                       )
                                     ],
                                   ),
                                 )
                             )
                           ],
                         ),
                       );
                     }),
               ),
              ),
            )
        ],
      ),
    );
  }
}
