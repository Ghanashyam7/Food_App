import 'package:flutter/material.dart';
import 'package:foodapp/login_screen/signup_page.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:foodapp/widgets/small_text.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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

                Container(
                  margin: EdgeInsets.only(right: 20, left: 20,),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                          "Hello",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 80,color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      SmallText(text: "Sign into your account",size: 18,),
                    ],
                  ),
                ),
                Positioned(
                    child: Column(
                      children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20,),
                  alignment: Alignment.centerRight,
                     child: SmallText(text: "Sign into your account",size: 18,),
                ),
                InkWell(
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainFoodPage()));
                    },
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(
                      child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 30),),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(text: "Don't have an Account?",size: 18,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 5),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                            },
                            child: Text("Create",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
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
