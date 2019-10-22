import 'package:flutter/material.dart';
import 'package:techone_frame/carousel/src/carousel_pro.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}
//ferhgrgqqrq

class _DetailState extends State<Detail> {
  var rating = 0.0;
  bool check = false;

  @override
  void initState() {

  }

  Widget title() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "DSLR Cameras Mirrorless System.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
            child: Text(
              "\$ 450.00",
              style: TextStyle(
                color: Colors.red,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cart() {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Text("Availability: in Stock"),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Image(image: AssetImage("images/facebook.png")),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Image(image: AssetImage("images/twitter.png")),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Image(image: AssetImage("images/ggplus.png")),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Image(image: AssetImage("images/instagram.png")),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Image(image: AssetImage("images/pinterest.jpg")),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 making it over 2000 years old. Richard McClintock, a Latin at Hampden-Sydney College in Virginia."),
          ),
        ],
      ),
    );
  }

  Widget vote() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5.0),
                  child: SmoothStarRating(
                    rating: rating,
                    size: 25,
                    starCount: 5,
                    spacing: 2.0,
                    onRatingChanged: (value) {
                      setState(() {
                        rating = value;
                      });
                    },
                  ),
                ),
                Text(" " + rating.toString()),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment(1, 1),
                child: IconButton(
                    icon: Icon(Icons.favorite),
                    color: check == true ? Colors.red : Colors.black,
                    onPressed: () {
                      setState(() {
                        check = !check;
                      });
                    }),
              ))
        ],
      ),
    );
  }

  final rowBottom = Container(
    height: 50.0,
    child: Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                print("ok");
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.teal),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                print("ok");
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                  child: Text(
                    "Pay Now",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            )),
      ],
    ),
  );

  Widget tabBar() {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              TabBar(tabs: [
                Tab(
                  child: Text(
                    "Description",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Information",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Reviews",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ]),
              Container(
                height: 350.0,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Text(
                          "Lorem ipsum dolor sit amet, an munere tibique consequat mel, congue albucius no qui, at everti meliore erroribus sea. Vero graeco cotidieque ea duo, in eirmod insolens interpretaris nam. Pro at nostrud percipit definitiones, eu tale porro cum. Sea ne accusata voluptatibus. Ne cum falli dolor voluptua, duo ei sonet choro facilisis, labores officiis torquatos cum ei."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Text(
                          "Lorem ipsum dolor sit amet isse potenti sesquam ante aliquet lacusemper elit. Cras neque nulla convallis non comodo euismod nonsese isse potent."),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                            decoration: InputDecoration(
                                labelText: "Your Name :",
                                labelStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.black12)),
                          ),
                          TextField(
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                            decoration: InputDecoration(
                                labelText: "Your Email :",
                                labelStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.black12)),
                          ),
                          TextField(
                            maxLines: 5,
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                            decoration: InputDecoration(
                                labelText: "Your Review :",
                                labelStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.black12)),
                          ),
                          const SizedBox(height: 10),
                          RaisedButton(
                            padding: const EdgeInsets.all(0.0),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Text(
                                "Add Review",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 245, 245),
      appBar: AppBar(
        title: Text("DSLR Cameras Mirrorless System."),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageCarousel(),
            title(),
            vote(),
            cart(),
            tabBar(),
          ],
        ),
      ),
      bottomNavigationBar: rowBottom,
    );
  }
}

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  static var _indexCarousel;

  @override
  void initState() {
    _indexCarousel = 1;
  }

  Carousel _buildCarousel() {
    return Carousel(
      boxFit: BoxFit.fitWidth,
      images: [
        AssetImage('images/product5.jpg'),
        AssetImage('images/product6.jpg'),
        AssetImage('images/product7.jpg'),
        AssetImage('images/product8.jpg'),
        AssetImage('images/product9.jpg'),
        AssetImage('images/product10.jpg')
      ],
      autoplay: false,
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.black45,
      indicatorBgPadding: 10.0,
      dotBgColor: Colors.white.withOpacity(0.3),
      borderRadius: true,
      onImageChange: (in1, in2) {
        setState(() {
          _indexCarousel = in2 + 1;
          print(_indexCarousel);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double sreenSize = MediaQuery.of(context).size.width;
    return new Container(
      width: sreenSize,
      height: 200.0,
      child: Stack(
        alignment: Alignment(1.0, 1.0),
        children: <Widget>[
          _buildCarousel(),
          Container(
            padding: EdgeInsets.all(5.0),
            width: 40.0,
            height: 30.0,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadiusDirectional.all(Radius.circular(20.0)),
                color: Colors.black45),
            margin: EdgeInsets.only(bottom: 25.0, right: 10.0),
            child: Center(
              child: Text(
                "$_indexCarousel/6",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
