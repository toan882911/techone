import 'package:techone_frame/models/ShoppingCartData.dart';
getList(){
  List<ShoppingCartData> b = new List<ShoppingCartData>();
  for (var i = 0; i < 20; i++){
    var a = new ShoppingCartData();
    a.name="Until the Tablet Pro" +i.toString();
    a.image= 'images/product4.jpg';
    a.price= 540;
    a.qty= 1;
    a.check= false;
    b.add(a);
  }
  return b;
}