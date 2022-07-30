import 'package:flutter/material.dart';
import 'package:foodapp/login_screen/signin_page.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/widgets/small_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                      height: 200,
                      width: 200,
                      image: AssetImage(
                        "assets/images/pepsi.applogo.png",
                      )
                  ),
                ),
                Positioned(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 15,left: 15,bottom: 5),
                          child: Container(
                            child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                                    prefixIcon: Icon(Icons.email),
                                    hintText: "Email",
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0))
                                )
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 25,
                                  offset:  Offset(0, 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 5,right: 15,left: 15,bottom: 5),
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                                    prefixIcon: Icon(Icons.password_outlined),
                                    hintText: "Password",
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0))
                                ),
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 25,
                                    offset:  Offset(0, 10),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 5,right: 15,left: 15,bottom: 5),
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                                    prefixIcon: Icon(Icons.phone_android),
                                    hintText: "Phone",
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0))
                                ),
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 25,
                                    offset:  Offset(0, 10),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 5,right: 15,left: 15,bottom: 5),
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                                    prefixIcon: Icon(Icons.person),
                                    hintText: "Name",
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0))
                                ),
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 25,
                                    offset:  Offset(0, 10),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 200,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const MainFoodPage()));
                        },
                        child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 30),)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 20,),
                    child: SmallText(text: "Have an account?",size: 18,color: AppColors.mainColor,),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: SmallText(text: "Sign up using one of the following methods",size: 15,),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, right: 50,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        height: 40,
                        width: 40,
                          image: AssetImage("assets/images/google.logo.png",),

                      ),
                      Image(
                          image: AssetImage("assets/images/facebook.logo.1.jpg"),
                        height: 60,
                        width: 60,
                      ),
                      Image(
                          image: AssetImage("assets/images/twitter.logo.png"),
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
