import 'package:techone_frame/models/ProductData.dart';

var proDuct = [
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product1.jpg",
      price: 320,
      sale: 0,
      rating: 4.0,
      favorite: 12,
      view: 50
  ),
  new ProductData(
      name: "Smartphone RAM 4 GB New",
      image: "images/product2.jpg",
      price: 400,
      sale: 5,
      rating: 5.0,
      favorite: 9,
     view: 57
  ),
  new ProductData(
      name: "Fujifilm INSTAX Mini 8 Instant Camera (White)",
      image: "images/product3.jpg",
      price: 350,
      sale: 10,
      rating: 4.0,
      favorite: 10,
      view: 83
  ),
  new ProductData(
      name: "PC Prox 21.5-inch and 27-inch (Late 2017) reviews",
      image: "images/product4.jpg",
      price: 330,
      sale: 1,
      rating: 4.0,
      favorite: 5,
      view: 77
  ),
  new ProductData(
      name: "Best Accessories- SteelSeries NIMBUS Controlle",
      image: "images/product5.jpg",
      price: 250,
      sale: 10,
      rating: 4.0,
      view: 41,
      favorite: 14),
  new ProductData(
      name: "Headphone",
      image: "images/product6.jpg",
      price: 450,
      sale: 10,
      view: 100,
      rating: 4.0,
      favorite: 20),
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product7.jpg",
      price: 350,
      sale: 1,
      view: 62,
      rating: 4.0,
      favorite: 11),
  new ProductData(
      name: "Smartphone RAM 4 GB New",
      image: "images/product8.jpg",
      price: 350,
      sale: 1,
      view: 12,
      rating: 4.0,
      favorite: 11),
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product9.jpg",
      price: 350,
      sale: 1,
      view: 56,
      rating: 5.0,
      favorite: 11),
  new ProductData(
      name: "PC Prox 21.5-inch and 27-inch (Late 2017) reviews",
      image: "images/product10.jpg",
      price: 330,
      sale: 1,
      view: 84,
      rating: 4.0,
      favorite: 5),
  new ProductData(
      name: "Best Accessories- SteelSeries NIMBUS Controlle",
      image: "images/product11.jpg",
      price: 250,
      sale: 10,
      view: 74,
      rating: 3.0,
      favorite: 14),
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product12.jpg",
      price: 320,
      sale: 0,
      view: 73,
      rating: 5.0,
      favorite: 12),
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product13.jpg",
      price: 320,
      view: 37,
      sale: 0,
      rating: 4.0,
      favorite: 12),
  new ProductData(
      name: "Smartphone RAM 4 GB New",
      image: "images/product14.jpg",
      price: 400,
      sale: 5,
      view: 93,
      rating: 5.0,
      favorite: 9),
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product15.jpg",
      price: 320,
      sale: 0,
      view: 56,
      rating: 4.0,
      favorite: 12),
  new ProductData(
      name: "Smartphone RAM 4 GB New",
      image: "images/product16.jpg",
      price: 400,
      sale: 5,
      view: 36,
      rating: 5.0,
      favorite: 9),
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product17.jpg",
      price: 320,
      sale: 0,
      view: 55,
      rating: 4.0,
      favorite: 12),
  new ProductData(
      name: "Smartphone RAM 4 GB New",
      image: "images/product18.jpg",
      price: 400,
      sale: 5,
      view: 77,
      rating: 5.0,
      favorite: 9),
  new ProductData(
      name: "Rubberized Hard Case Older MacBook Pro 13.3",
      image: "images/product19.jpg",
      price: 320,
      sale: 0,
      view: 88,
      rating: 4.0,
      favorite: 12),
  new ProductData(
      name: "Print",
      image: "images/product20.jpg",
      price: 400,
      sale: 5,
      view: 101,
      rating: 5.0,
      favorite: 9),
];
void sort(){
  for(var i=0;i<proDuct.length;i++){
    for(var j=i+1;i<proDuct.length-1;i++){
      if(proDuct[i].view<proDuct[j].view){
        var a=proDuct[i];
        proDuct[i]=proDuct[j];
        proDuct[j]=a;
      }
    }
  }
}