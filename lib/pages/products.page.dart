import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            spreadRadius: 5),
                      ]),
                  child: FlatButton(
                    child: Icon(
                      Icons.menu,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            spreadRadius: 5),
                      ]),
                  child: FlatButton(
                    child: Icon(
                      Icons.store,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Quality",
                    style: TextStyle(
                        fontSize: Theme.of(context).textTheme.display1.fontSize,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Food & Groceries",
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.display1.fontSize - 5,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          border: Border.all(color: Colors.white70, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.search),
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Expanded(
                            child: Container(
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                cursorColor: Colors.black12,
                                decoration: InputDecoration(
                                  hintText: "Search goods...",
                                  alignLabelWithHint: false,
                                  hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black45,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.filter_list,
                    ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(6),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  categoryItem("Fruits", "assets/fruits.png"),
                  categoryItem("Juices", "assets/juices.png"),
                  categoryItem("Rice", "assets/rice.png"),
                  categoryItem("Meats", "assets/meats.png"),
                  categoryItem("Bakery", "assets/bakery.png"),
                  categoryItem("Ice Creams", "assets/ice-creams.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget categoryItem(String name, String imagePath) {
  return Column(
    children: <Widget>[
      Container(
        width: 55,
        height: 55,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(110, 249, 204, 75),
        ),
        child: Container(
          width: 20,
          height: 20,
          child: Image.asset(
            imagePath,
          ),
        ),
      ),
      Text(
        name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black54,
        ),
      ),
    ],
  );
}
