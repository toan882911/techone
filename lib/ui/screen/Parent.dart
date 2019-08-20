import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:techone_frame/ui/screen/Detail.dart';
import 'package:techone_frame/ui/screen/Grid.dart';
import 'package:techone_frame/ui/screen/Home.dart';
import '../../values/Values.dart';

class Parent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechOne',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyParentPage(title: 'TechOne'),
      debugShowCheckedModeBanner: false,
    );
  }
}
/*StatefulWidget is Widget with mutable*/
class MyParentPage extends StatefulWidget {
  MyParentPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyParentPageState createState() => _MyParentPageState();
}
/*State is a manager of StatefulWidget*/
class _MyParentPageState extends State<MyParentPage>
    with SingleTickerProviderStateMixin {
  var _itemSelected = 0;
  TabController _tabController;

  _onBottomNavigationBarTap(int index) {
    print(_itemSelected);
    setState(() {
      _itemSelected = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final _bodyUI = [
      PageHome(),
      Center(
        child: Text('Search'),
      ),
      Center(
        child: Text('Notification'),
      ),
      Center(
        child: Text('Account'),
      ),
    ];
    _tabController.animateTo(_itemSelected);

    return Scaffold(
        drawer: Drawer(
          child: ListView.builder(
              itemCount: Values.categoryNames.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return DrawerHeader(
                    child: Text(
                      'TechOne',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    decoration: BoxDecoration(color: Colors.red),
                  );
                } else {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Grid()));
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(5),
                        child: Text(Values.categoryNames[index - 1],
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  );
                }
              }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: Values.itemsBottomNavigationBar,
          onTap: (index) {
            _onBottomNavigationBarTap(index);
          },
          currentIndex: _itemSelected,
          selectedItemColor: Colors.red,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: <Widget>[
              _bodyUI[0],
              _bodyUI[1],
              _bodyUI[2],
              _bodyUI[3],
            ]
        ));
  }
}