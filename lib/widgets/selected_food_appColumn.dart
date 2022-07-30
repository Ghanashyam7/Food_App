import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/icon_and_text_widgets.dart';
import 'package:foodapp/widgets/small_text.dart';

class SelectedAppColumn extends StatelessWidget {
  final String text;
  const SelectedAppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Container(
            margin: EdgeInsets.only(left: 20),
            child: BigText(text: text, size: 26,)),
        SizedBox(height: 10, ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20 ),
              child: Wrap(
                children: List.generate(5, (index)  {return Icon(Icons.star, color: Colors.grey, size: 15,);}),
              ),
            ),

            Container(
                width: 20,
                margin: EdgeInsets.only(left: 15),
                child: SmallText(text: "4.5")),
            SizedBox(width: 5,),
            SmallText(text: "1285"),
            SizedBox(width: 7,),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [

              Expanded(
                child: IconAndTextWidgets(
                    text: "Normal",
                    icon: Icons.circle_sharp,
                    iconColor: AppColors.iconColor1),
              ),

              Expanded(
                child: IconAndTextWidgets(
                    icon: Icons.location_on_outlined,
                    text: "1.7km",
                    iconColor: AppColors.mainColor
                ),
              ),

              Expanded(
                child: IconAndTextWidgets(
                    icon: Icons.access_time_rounded,
                    text: "35min",
                    iconColor: AppColors.iconColor2
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
