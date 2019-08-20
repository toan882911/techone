import 'package:flutter/material.dart';
import 'package:techone_frame/blocs/cart_bloc.dart';
import 'package:techone_frame/business/provider/AddCart.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}
class _ShoppingCartState extends State<ShoppingCart> {
  CartBloc bloc;
  static var carts;
  @override
  void initState() {
    bloc = new CartBloc();
    carts = getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: StreamBuilder(
        stream: bloc.loadStream,
        builder: (context,snapshot){
          return ListView.builder(
              itemCount: carts.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return itemRow(index, context);
              }
              );
        },
      ),
      bottomNavigationBar: InkWell(
          child: Stack(
        alignment: const Alignment(-1.0, 0.0),
        children: <Widget>[
          Container(
              height: 50.0,
              width: double.infinity,
              color: Colors.white,
              child: StreamBuilder(
                  stream: bloc.totalStream,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Total: \$ ${snapshot.hasData ? snapshot.data : 0}'),
                        SizedBox(width: 10.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {},
                            elevation: 0.5,
                            color: Colors.red,
                            child: Center(
                              child: Text(
                                'Pay Now',
                              ),
                            ),
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    );
                  })),
          IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                bloc.delete(carts);
              })
        ],
      )),
    );
  }

  Widget itemRow(int index, BuildContext context) {
//    bloc.init(index);
    return ListTile(
      enabled: true,
      title: InkWell(
          onTap: () {
            setState(() {
              bloc.pickToggle(carts, index);
            });
          },
          child: Container(
              height: 150.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Stack(
                      alignment: const Alignment(-1.0, -1.0),
                      children: <Widget>[
                        Container(
                          height: 150.0,
                          width: 125.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(carts[index].image),
                                  fit: BoxFit.contain)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(top: 5.0, left: 5.0),
                                height: 25.0,
                                width: 25.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(12.5),
                                ),
                                child: Center(
                                    child: Container(
                                  height: 12.0,
                                  width: 12.0,
                                  decoration: BoxDecoration(
                                      color: carts[index].check
                                          ? Colors.yellow
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(6.0)),
                                )))
                          ],
                        ),
                      ],
                    ),
                  ),
//                  SizedBox(width: 4.0),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          child: Text(
                            carts[index].name,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                        Text(
                          '\$' + carts[index].price.toString(),
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xFFFDD34A)),
                        ),
                      ],
                    ),
                  ),
//                  SizedBox(width: 4.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            bloc.addItem(carts,index);
                          },
                          child: Container(
                              width: 40.0,
                              height: 40.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: (){
                                    bloc.addItem(carts,index);
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            child: Center(
                                child:
                                    Text(" " + carts[index].qty.toString()))),
                        InkWell(
                          onTap: () {
                            bloc.removeItem(carts,index);
                          },
                          child: Container(
                              width: 40.0,
                              height: 40.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: (){
                                    bloc.removeItem(carts,index);
                                  },
                                  icon: Icon(Icons.remove),
                                )
                              )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
      ),
    );
  }
}
