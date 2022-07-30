import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/pages/cart/cart_history_page.dart';
import 'package:foodapp/pages/cart/cart_page.dart';
import 'package:foodapp/pages/food/popular_food_detail.dart';
import 'package:foodapp/pages/food/recommended_food_detail.dart';
import 'package:foodapp/pages/home/food_page_body.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/widgets/app_column.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/icon_and_text_widgets.dart';
import 'package:foodapp/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;

  int _selectedIndex = 0;

  String dropdownvalue = 'City';

  var items = [
    'City',
  ];

  List<dynamic> listMenu = [
    MainFoodPage(),
    CartPage(),
    CartHistoryPage(),
    PopularFoodDetail(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                // listMenu.elementAt(_selectedIndex),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(text: "India", color: Colors.white,),
                          DropdownButton(
                            icon: Icon(Icons.arrow_drop_down),
                            value: dropdownvalue,
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },),
                        ],
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        child: Icon(Icons.search),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.greenAccent,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: SingleChildScrollView(
                  child: FoodPageBody(),
                ))
                // SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       // slider section
                //       Container(
                //         height: 320,
                //         child: PageView.builder(
                //             controller: pageController,
                //             itemCount: 5,
                //             itemBuilder: (context, position) {
                //               return _buildPageItem(position);
                //             }),
                //       ),
                //       // dots
                //       new DotsIndicator(
                //         dotsCount: 5,
                //         position: _currPageValue,
                //         decorator: DotsDecorator(
                //           activeColor: AppColors.mainColor,
                //           size: const Size.square(9.0),
                //           activeSize: const Size(18.0, 9.0),
                //           activeShape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(5.0)),
                //         ),
                //       ),
                //       // popular text
                //       SizedBox(
                //         height: 30,
                //       ),
                //       Container(
                //         margin: EdgeInsets.only(left: 30),
                //         child: Row(
                //           children: [
                //             BigText(text: "Popular"),
                //             SizedBox(
                //               width: 10,
                //             ),
                //             Container(
                //               margin: const EdgeInsets.only(bottom: 3),
                //               child: BigText(
                //                 text: ".",
                //                 color: Colors.black54,
                //               ),
                //             ),
                //             SizedBox(
                //               width: 10,
                //             ),
                //             Container(
                //               margin: const EdgeInsets.only(bottom: 2),
                //               child: SmallText(text: "Food Pairing"),
                //             )
                //           ],
                //         ),
                //       ),
                //       // list of food and images
                //
                //       // Container(
                //       //   child: ListView(
                //       //     physics: AlwaysScrollableScrollPhysics(),
                //       //     children: [productList()],
                //       //   ),
                //       // )
                //
                //       ListView.builder(
                //           physics: AlwaysScrollableScrollPhysics(),
                //           shrinkWrap: true,
                //           itemCount: 10,
                //           itemBuilder: (context, index) {
                //             return InkWell(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(
                //                     builder: (
                //                         context) => const PopularFoodDetail()));
                //               },
                //               child: Container(
                //                 margin: EdgeInsets.only(
                //                     right: 20, left: 20, bottom: 10),
                //                 child: Row(
                //                   children: [
                //                     // Image section
                //                     Expanded(
                //                       child: Container(
                //                         height: 100,
                //                         decoration: BoxDecoration(
                //                           borderRadius: BorderRadius.circular(20),
                //                           color: Colors.white38,
                //                           image: DecorationImage(
                //                             fit: BoxFit.cover,
                //                             image: AssetImage(
                //                                 "assets/images/porotta-food.3.jpg"),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                     // Text container
                //                     Container(
                //                       height: 100,
                //                       width: 250,
                //                       decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.only(
                //                             topRight: Radius.circular(20),
                //                             bottomRight: Radius.circular(20)
                //                         ),
                //                         color: Colors.white,
                //                       ),
                //                       child: Padding(
                //                         padding: EdgeInsets.only(
                //                             left: 10, right: 10),
                //                         child: Column(
                //                           crossAxisAlignment: CrossAxisAlignment
                //                               .start,
                //                           mainAxisAlignment: MainAxisAlignment
                //                               .center,
                //                           children: [
                //                             BigText(
                //                                 text: "Nutritious fruit meal in India"),
                //                             SizedBox(height: 10,),
                //                             SmallText(
                //                                 text: "With indian characteristics"),
                //                             SizedBox(height: 10,),
                //                             Row(
                //                               children: [
                //                                 SizedBox(width: 5,),
                //                                 IconAndTextWidgets(
                //                                     text: "Normal",
                //                                     icon: Icons.circle_sharp,
                //                                     iconColor: AppColors
                //                                         .iconColor1),
                //                                 SizedBox(width: 10,),
                //                                 IconAndTextWidgets(
                //                                     icon: Icons
                //                                         .location_on_outlined,
                //                                     text: "1.7km",
                //                                     iconColor: AppColors.mainColor
                //                                 ),
                //                                 SizedBox(width: 10,),
                //                                 IconAndTextWidgets(
                //                                     icon: Icons
                //                                         .access_time_rounded,
                //                                     text: "35min",
                //                                     iconColor: AppColors
                //                                         .iconColor2
                //                                 ),
                //                               ],
                //                             )
                //                           ],
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             );
                //           }),
                //     ],
                //   ),
                // ),
              ],
            ),
          )),
          bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
        backgroundColor: Colors.tealAccent,
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.widgets_outlined),
      label: 'History',
      backgroundColor: Colors.tealAccent,
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'Cart',
      backgroundColor: Colors.tealAccent,
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
      backgroundColor: Colors.tealAccent,
      ),
      ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
      )
    );
  }

  // Widget _buildPageItem(int index) {
  //   Matrix4 matrix = new Matrix4.identity();
  //   if (index == _currPageValue.floor()) {
  //     var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
  //      matrix = Matrix4.diagonal3Values(1, currScale, 1);
  //   } else if (index == _currPageValue.floor() + 1) {
  //     var currScale =
  //         _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
  //      matrix = Matrix4.diagonal3Values(1, currScale, 1);
  //   }
  //   return Transform(
  //     transform: matrix,
  //     child: Stack(
  //       children: [
  //         // Showing the header
  //         InkWell(
  //           onTap: () {
  //             Navigator.push(context, MaterialPageRoute(
  //                 builder: (context) => const RecommendedFoodDetail()));
  //           },
  //           child: Container(
  //             height: 220,
  //             margin: EdgeInsets.only(left: 5, right: 5),
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(30),
  //               color: index.isEven ? Colors.blue : Colors.red,
  //               image: DecorationImage(
  //                 fit: BoxFit.cover,
  //                 image: AssetImage(
  //                   "assets/images/Food.1.jpg",
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //
  //         // Showing the body
  //         Align(
  //           alignment: Alignment.bottomCenter,
  //           child: Container(
  //             height: 120,
  //             margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(30),
  //               color: Colors.white,
  //               boxShadow: [
  //                 BoxShadow(
  //                     color: Color(0xFFe8e8e8),
  //                     blurRadius: 5.0,
  //                     offset: Offset(0, 5)),
  //                 BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
  //                 BoxShadow(color: Colors.white, offset: Offset(5, 0)),
  //               ],
  //             ),
  //             child: Container(
  //               // height: MediaQuery.of(context).size.height * 0.30,
  //               // width: MediaQuery.of(context).size.width,
  //
  //               margin: EdgeInsets.only(top: 15, left: 15, right: 15),
  //               child: AppColumn(
  //                 text: "Poori&Kadalacurry",
  //               ),
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  }

