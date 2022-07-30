import 'package:flutter/material.dart';

class CartHistoryPage extends StatefulWidget {
  const CartHistoryPage({Key? key}) : super(key: key);

  @override
  State<CartHistoryPage> createState() => _CartHistoryPageState();
}

class _CartHistoryPageState extends State<CartHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Your cart history',style: TextStyle(fontSize: 25),),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 40),
            child: IconButton(
              iconSize: 35,
              icon: Icon(Icons.shopping_cart), onPressed: () {  },
            ),
          )
        ]
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Date"),
            Row(
              children: [
                 Flexible(
                  child: Container(
                     margin: EdgeInsets.only(right: 10, left: 5),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/Food.1.jpg")
                        )
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/Food.1.jpg")
                        )
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/Food.1.jpg")
                        )
                    ),
                  ),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[Text("Total"),
                Text("Items"),],)

              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Date"),
              Row(
                children: [
                  Flexible(
                    child: Container(
                       margin: EdgeInsets.only(right: 10, left: 5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/Food.1.jpg")
                          )
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/Food.1.jpg")
                          )
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/Food.1.jpg")
                          )
                      ),
                    ),
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[Text("Total"),
                      Text("Items"),],)

                ],
              ),
    ],
            ),
          ],
        )
      ),
    );
  }

  /* ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Food.1.jpg")
                        )
                      ),
                    );
                  }
                ),*/

  listCart()
  {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/Food.1.jpg")
          )
      ),
    );


  }

  rowCart() {
    Row(
      children: [

        ListView(children: [ listCart() ], scrollDirection: Axis.vertical, physics: AlwaysScrollableScrollPhysics()

        )

      ],
    );
  }
}
