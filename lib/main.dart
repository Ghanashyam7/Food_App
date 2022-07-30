import 'package:flutter/material.dart';
import 'package:foodapp/login_screen/signin_page.dart';
import 'package:foodapp/login_screen/signup_page.dart';
import 'package:foodapp/pages/cart/cart_history_page.dart';
import 'package:foodapp/pages/cart/cart_page.dart';
import 'package:foodapp/pages/food/popular_food_detail.dart';
import 'package:foodapp/pages/food/recommended_food_detail.dart';
import 'package:foodapp/pages/food/select_food_screen.dart';
import 'package:foodapp/pages/home/food_page_body.dart';
import 'package:foodapp/pages/home/main_food_page.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: SelectedFood(),
  debugShowCheckedModeBanner: false,
  ));
}