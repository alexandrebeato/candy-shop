import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String _name;
  final String _imagePath;
  final String _weight;
  final String _price;

  ProductPage(this._name, this._imagePath, this._weight, this._price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 229, 141),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 265.0,
              floating: false,
              pinned: true,
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Image.asset(
                          _imagePath,
                          width: 200,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.touch_app,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _name,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "10 pieces",
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "4.5",
                            style: Theme.of(context).textTheme.title,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "(135)",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "30-35min delivery",
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(Icons.remove),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "2",
                            style: Theme.of(context).textTheme.title,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "\$",
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.headline.fontSize,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            _price,
                            style: Theme.of(context).textTheme.display1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(
                  height: 15,
                ),
                descriptionItem(context, "Creemy and crispy"),
                descriptionItem(context, "Instant make delivery"),
                descriptionItem(context, "Full of chocolates"),
                descriptionItem(context, "0% sugar and mint"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget descriptionItem(BuildContext context, String content) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.play_arrow,
          color: Theme.of(context).primaryColor,
        ),
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            content,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black45),
          ),
        ),
      ],
    ),
  );
}
