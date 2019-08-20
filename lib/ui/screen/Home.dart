import 'package:flutter/material.dart';
import 'package:techone_frame/business/provider/addcameras.dart';
import 'package:techone_frame/business/provider/addtvaudio.dart';
import 'package:techone_frame/carousel/src/carousel_pro.dart';
import 'package:techone_frame/ui/screen/Detail.dart';
import 'package:techone_frame/ui/screen/ShoppingCart.dart';

class PageHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageHomeState();
  }
}

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

    paint.color = Color.fromARGB(255, 64, 202, 209);

    // create a path
    var path = Path();
    path.lineTo(70.0, 0);
    path.lineTo(50.0, 25.0);
    path.lineTo(0, 25.0);
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

class ImageCarousel extends StatelessWidget {
  final carousel = new Carousel(
    boxFit: BoxFit.fitWidth,
    images: [
      AssetImage('images/banner1.jpg'),
      AssetImage('images/banner2.jpg'),
      AssetImage('images/banner3.jpg'),
      AssetImage('images/banner4.jpg'),
      AssetImage('images/banner5.jpg'),
      AssetImage('images/banner6.jpg')
    ],
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 2000),
  );

  @override
  Widget build(BuildContext context) {
    double sreenSize = MediaQuery.of(context).size.width;
    // TODO: implement build
    return new Container(
      width: sreenSize,
      height: 150.0,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.only(top: 5.0),
      child: new ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: carousel,
      ),
    );
  }
}

List<Widget> buildGridTile(numberOfTiles) {
  List<Container> containers =
      new List<Container>.generate(numberOfTiles, (int index) {
    final imageName = 'images/banner${index + 1}.jpg';
    return new Container(
      child: new Image.asset(imageName,
          fit: BoxFit.fill, width: 100.0, height: 100.0),
    );
  });
  return containers;
}

class PageHomeState extends State<PageHome> {
  final gridView = new Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      height: 200.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              bottomLeft: const Radius.circular(50.0),
              bottomRight: const Radius.circular(50.0))),
      child: new Center(
        child: new GridView.extent(
          maxCrossAxisExtent: 100.0,
          shrinkWrap: true,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(5.0),
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.camera_alt),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text("CAMERAS",
                        style:
                            new TextStyle(fontSize: 10.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.tv),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text("TV & AUDIO",
                        style:
                            new TextStyle(fontSize: 10.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.laptop_chromebook),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text("LAPTOP & COMPUTER",
                        style:
                            new TextStyle(fontSize: 10.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.build),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text("ACCESSORIES",
                        style:
                            new TextStyle(fontSize: 10.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.smartphone),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text(
                      "SMARTPHONE & TABLE",
                      style: new TextStyle(fontSize: 10.0, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.print),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text("PRINTER & INK",
                        style:
                            new TextStyle(fontSize: 10.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.games),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text("GAME & CONSOLES",
                        style:
                            new TextStyle(fontSize: 10.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: new Column(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.headset),
                    color: Colors.red,
                    onPressed: () {
                      print("camera");
                    },
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: new Text("HEADPHONE",
                        style:
                            new TextStyle(fontSize: 10.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
  final imagebanner = new Container(
      child: new ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50.0),
      topRight: Radius.circular(50.0),
    ),
    child: new Image.asset(
      'images/banner7.jpg',
      fit: BoxFit.fill,
      height: 100,
    ),
  ));
  final imagebanner2 = new Container(
      child: new ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50.0),
      bottomRight: Radius.circular(50.0),
    ),
    child: new Image.asset(
      'images/banner8.jpg',
      fit: BoxFit.fill,
      height: 100,
    ),
  ));

  @override
  Widget build(BuildContext context) {
    final _textSeacrh = new Container(
      width: 250.0,
      child: new TextField(
        decoration: new InputDecoration(
          hintText: "Search ...",
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),

          border: InputBorder.none,
          hintStyle: new TextStyle(color: Colors.white, fontSize: 20.0),
//        border: OutlineInputBorder(
//            borderSide: new BorderSide(color: Colors.yellow)
//        ),
        ),
        style: new TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
        keyboardType: TextInputType.text,
        autocorrect: false,
        onChanged: (text) {},
      ),
    );
    List<Container> _listTvAdio() {
      int index = 0;
      return tvAudio.map((tvaudio) {
        int leng = tvAudio.length;
        if (index == leng - 1) {
          return new Container(
            width: 100.0,
            height: 200.0,
            margin: new EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(color: Colors.white),
            child: new Center(
                child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Icon(
                    Icons.skip_next,
                    color: Colors.red,
                    size: 30.0,
                  ),
                ),
                new Text("Next",
                    style: new TextStyle(color: Colors.red, fontSize: 20.0)),
              ],
            )),
          );
        }
        index += 1;
        return new Container(
          child: new Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  print('ok');
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Detail()));
                },
                child: Container(
                  margin: new EdgeInsets.only(right: 5.0),
                  width: 130.0,
                  height: 200.0,
                  decoration: BoxDecoration(color: Colors.white),
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Stack(
                          alignment: const Alignment(-1, -1),
                          children: <Widget>[
                            new Container(
                              child: new Image.asset(
                                tvaudio.image,
                                width: 150.0,
                                height: 130.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            new Container(
                              child: new CustomPaint(
                                painter: ShapesPainter(),
                                child: Container(
                                  padding: EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: new Text(
                                    tvaudio.sale,
                                    style: new TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  height: 25.0,
                                  width: 70.0,
                                ),
                              ),
                            )
                          ],
                        ),
                        new Text(
                          tvaudio.name,
                          style:
                          new TextStyle(color: Colors.black, fontSize: 11.0),
                          textAlign: TextAlign.center,
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Text(
                                  tvaudio.cost,
                                  style: new TextStyle(
                                      color: Colors.red,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.bold),
                                )),
                            new Expanded(
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.shopping_cart,
                                      color: Colors.red,
                                    )
                                  ],
                                ))
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
        );
      }).toList();
    }

    List<Container> _listCameras() {
      int index = 0;
      return cameras.map((camera) {
        int leng = cameras.length;
        if (index == leng - 1) {
          return new Container(
            width: 100.0,
            height: 200.0,
            margin: new EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(color: Colors.white),
            child: new Center(
                child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Icon(
                    Icons.skip_next,
                    color: Colors.red,
                    size: 30.0,
                  ),
                ),
                new Text("Next",
                    style: new TextStyle(color: Colors.red, fontSize: 20.0)),
              ],
            )),
          );
        }
        index += 1;
        return new Container(
          child: new Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  print('ok');
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Detail()));
                },
                child: new Container(
                  margin: new EdgeInsets.only(right: 5.0),
                  width: 130.0,
                  height: 200.0,
                  decoration: BoxDecoration(color: Colors.white),
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Stack(
                          alignment: const Alignment(-1, -1),
                          children: <Widget>[
                            new Container(
                              child: new Image.asset(
                                camera.image,
                                width: 130.0,
                                height: 130.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            new Container(
                              child: new CustomPaint(
                                painter: ShapesPainter(),
                                child: Container(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: new Text(
                                    camera.sale,
                                    style: new TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  height: 25.0,
                                  width: 70.0,
                                ),
                              ),
                            )
                          ],
                        ),
                        new Text(
                          camera.name,
                          style: new TextStyle(
                              color: Colors.black, fontSize: 11.0),
                          textAlign: TextAlign.center,
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Text(
                              camera.cost,
                              style: new TextStyle(
                                  color: Colors.red,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.bold),
                            )),
                            new Expanded(
                                child: new GestureDetector(
                              onTap: () {
                                print('icon');
                              },
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  new Icon(
                                    Icons.shopping_cart,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ))
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
        );
      }).toList();
    }

    final listProduct = new Container(
        margin: EdgeInsets.only(top: 5, bottom: 5.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                      )),
                  padding: EdgeInsets.only(top: 17.0, left: 5.0, right: 5.0),
                  child: Text("FEATURED PRODUCTS",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  height: 50.0,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.red, width: 3))),
              ),
              new Container(
                margin: EdgeInsets.only(top: 5),
                height: 200.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _listCameras(),
                ),
              )
            ]));
    final listTvAudio = new Container(
        margin: EdgeInsets.only(top: 5, left: 5, bottom: 5.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                " TV & AUDIO ",
                style: new TextStyle(
                  color: Colors.orange,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.only(left: 5.0),
                height: 200.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _listTvAdio(),
                ),
              )
            ]));
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: _textSeacrh,
        centerTitle: false,
        actions: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(right: 20.0),
                child: new Icon(Icons.phone, color: Colors.white),
              ),
              InkWell(
                child: new Container(
                  padding: EdgeInsets.only(right: 20.0),
                  child: new Icon(Icons.shopping_cart, color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShoppingCart()));
                },
              )
            ],
          )
        ],
      ),
      body: new Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(color: Color.fromARGB(20, 211, 211, 211)),
        child: new ListView(
          children: <Widget>[
            ImageCarousel(),
            gridView,
            imagebanner,
            listProduct,
            imagebanner2,
            listTvAudio,
          ],
        ),
      ),
    );
  }
}
