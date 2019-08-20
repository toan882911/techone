import 'dart:async';
import 'package:techone_frame/business/provider/AddCart.dart';
class CartBloc {
  static var carts = getList();
  int count = 0;
  StreamController _totalController = StreamController();
  StreamController _load = StreamController();
  Stream get totalStream => _totalController.stream;
  Stream get loadStream => _load.stream;
  pickToggle(var carts, int index) {
    carts[index].check ? carts[index].check = false : carts[index].check = true;
    getTotalAmount(carts, index);
    load();
  }
  getTotalAmount(var carts, int index) {
    if (carts[index].check) {
      count = count + (carts[index].price * carts[index].qty);
    } else {
      count = count - (carts[index].price * carts[index].qty);
    }
  }
  addItem(var carts, int index) {
    if (carts[index].check) {
      count = count -(carts[index].price * carts[index].qty);
      if (carts[index].qty >= 10) {
        carts[index].qty = 10;
      } else {
        carts[index].qty += 1;
      }
      getTotalAmount(carts,index);
    } else {
      if (carts[index].qty >= 10) {
        carts[index].qty = 10;
      } else {
        carts[index].qty += 1;
      }
    }
    load();
  }
  removeItem(var carts, int index) {
    if (carts[index].check) {
      count = count - (carts[index].price * carts[index].qty);
      if (carts[index].qty <= 1) {
        carts[index].qty = 1;
      } else {
        carts[index].qty -= 1;
      }
      getTotalAmount(carts,index);
    } else {
      if (carts[index].qty <= 1) {
        carts[index].qty = 1;
      } else {
        carts[index].qty -= 1;
      }
    }
    load();
  }
  delete(var carts) {
    carts.removeWhere((item) => item.check == true);
    count=0;
    _totalController.sink.add(0);
    _load.sink.add("ok");
  }
  load(){
    _totalController.sink.add(count);
    _load.sink.add("ok");
  }
  void dispose() {
    _totalController.close();
    _load.close();
  }
}
