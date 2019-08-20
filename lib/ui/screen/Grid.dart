import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:techone_frame/business/provider/AddProduct.dart';

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
//    paint.color = Colors.red;
//
//    // Create a rectangle with size and width same as the canvas
//    var rect = Rect.fromLTWH(20, 0, 100.0, 50.0);
//
//    // draw the rectangle using the paint
//    canvas.drawRect(rect, paint);
    paint.color = Color.fromARGB(255, 255, 0, 0);
    // create a path
    var path = Path();
    path.lineTo(60.0, 0);
    path.lineTo(40.0, 30.0);
    path.lineTo(0, 30.0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    // set the color property of the paint
//    paint.color = Colors.deepOrange;
//
//    // center of the canvas is (x,y) => (width/2, height/2)
//    var center = Offset(size.width / 2, size.height / 2);
//
//    // draw the circle with center having radius 75.0
//    canvas.drawCircle(center, 75.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  bool price = false;
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Color(0xff109618),
            backgroundColor: Colors.red,
            title: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: _GooglePlayAppBar(),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 6.0,
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Hot',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Sale',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              price = !price;

                            });
                          },
                          child: Icon(
                            price ? Icons.arrow_upward : Icons.arrow_downward,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (screen / 2 / 260.0),
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(5.0),
                children: _buildGridTile(),
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (screen / 2 / 260.0),
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(5.0),
                children: _buildGridTile2(),
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (screen / 2 / 260.0),
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(5.0),
                children: _buildGridTile3(),
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (screen / 2 / 260.0),
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(5.0),
                children: _buildGridTile4(price),
              ),
            ],
          )),
    );
  }
}
List<Widget> _buildGridTile() {
  return proDuct.map((product) {
    return Container(
      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: const Alignment(-1, -1),
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
              new Container(
                child: new CustomPaint(
                  painter: ShapesPainter(),
                  child: Container(
                    padding: EdgeInsets.only(top: 5.0, left: 10.0),
                    child: new Text(
                      "-" + product.sale.toString() + "%",
                      style: new TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    height: 25.0,
                    width: 70.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: SmoothStarRating(
                  rating: product.rating,
                  size: 15,
                  starCount: 5,
                  spacing: 2.0,
                ),
              ),
              Text(" " + product.rating.toString())
            ],
          ),
          Text(
            product.name,
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "\$" + product.price.toString() + ".00",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }).toList();
}
List<Widget> _buildGridTile2(){
  proDuct.sort((a,b)=> b.view.compareTo((a.view)));
  return proDuct.map((product) {
    return Container(
      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: const Alignment(-1, -1),
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
              new Container(
                child: new CustomPaint(
                  painter: ShapesPainter(),
                  child: Container(
                    padding: EdgeInsets.only(top: 5.0, left: 10.0),
                    child: new Text(
                      "-" + product.sale.toString() + "%",
                      style: new TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    height: 25.0,
                    width: 70.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: SmoothStarRating(
                  rating: product.rating,
                  size: 15,
                  starCount: 5,
                  spacing: 2.0,
                ),
              ),
              Text(" " + product.rating.toString())
            ],
          ),
          Text(
            product.name,
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "\$" + product.price.toString() + ".00",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }).toList();
}
List<Widget> _buildGridTile3(){
  proDuct.sort((a,b)=> b.sale.compareTo((a.sale)));
  return proDuct.map((product) {
    return Container(
      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: const Alignment(-1, -1),
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
              new Container(
                child: new CustomPaint(
                  painter: ShapesPainter(),
                  child: Container(
                    padding: EdgeInsets.only(top: 5.0, left: 10.0),
                    child: new Text(
                      "-" + product.sale.toString() + "%",
                      style: new TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    height: 25.0,
                    width: 70.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: SmoothStarRating(
                  rating: product.rating,
                  size: 15,
                  starCount: 5,
                  spacing: 2.0,
                ),
              ),
              Text(" " + product.rating.toString())
            ],
          ),
          Text(
            product.name,
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "\$" + product.price.toString() + ".00",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }).toList();
}
List<Widget> _buildGridTile4(price){
  price ? proDuct.sort((a,b)=> b.price.compareTo((a.price))) : proDuct.sort((a,b)=> a.price.compareTo((b.price)));
  return proDuct.map((product) {
    return Container(
      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: const Alignment(-1, -1),
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
              new Container(
                child: new CustomPaint(
                  painter: ShapesPainter(),
                  child: Container(
                    padding: EdgeInsets.only(top: 5.0, left: 10.0),
                    child: new Text(
                      "-" + product.sale.toString() + "%",
                      style: new TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    height: 25.0,
                    width: 70.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: SmoothStarRating(
                  rating: product.rating,
                  size: 15,
                  starCount: 5,
                  spacing: 2.0,
                ),
              ),
              Text(" " + product.rating.toString())
            ],
          ),
          Text(
            product.name,
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "\$" + product.price.toString() + ".00",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }).toList();
}
Widget _GooglePlayAppBar() {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5.0),
          child: Text(
            'Searching ...',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blueGrey,
              ),
              onPressed: null),
        ),
      ],
    ),
  );
}
