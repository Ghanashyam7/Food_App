import 'package:flutter/material.dart';
import 'package:foodapp/widgets/small_text.dart';

import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text_widgets.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        BigText(text: text, size: 26,),
    SizedBox(height: 10, ),
    Row(
    children: [
    Wrap(
    children: List.generate(5, (index)  {return Icon(Icons.star, color: Colors.grey, size: 15,);}),
    ),
    SizedBox(width: 10,),
    SmallText(text: "4.5"),
    SizedBox(width: 10,),
    SmallText(text: "1285"),
    SizedBox(width: 10,),
    SmallText(text: "comments"),
    ],
    ),
    SizedBox(height: 10,),
    Row(
    children: [
    SizedBox(width: 5,),
    IconAndTextWidgets(
    text: "Normal",
    icon: Icons.circle_sharp,
    iconColor: AppColors.iconColor1),
    SizedBox(width: 10,),
    IconAndTextWidgets(
    icon: Icons.location_on_outlined,
    text: "1.7km",
    iconColor: AppColors.mainColor
    ),
    SizedBox(width: 10,),
    IconAndTextWidgets(
    icon: Icons.access_time_rounded,
    text: "35min",
    iconColor: AppColors.iconColor2
    ),

    ],
    ),
    ],
    );
  }
}
