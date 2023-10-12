import 'package:flutter/cupertino.dart';

void main() {
  final Map<String, dynamic> ProdactMap = {
    "id": 90,
    "price": 515,
    "oldprice": 150,
    "dis": 0,
    "image": "h",
    "name": "akhjniujthdg",
  };

  final mah= ProdactModel.Mahmoud(ProdactMap);

}

class ProdactModel {
  final int id;
  final double price;
  final double oldprice;
  final double dis;
  final String image;
  final String name;

  ProdactModel(
      {required this.id,
      required this.price,
      required this.oldprice,
      required this.dis,
      required this.image,
      required this.name});

  factory ProdactModel.Mahmoud(Map<String,dynamic> data){
    return ProdactModel(
      id:data['id'],
      price: data['price'],
      oldprice: data['oldprice'],
      dis: data['dis'],
      image: data['image'],
      name: data['name'],
    );
  }
}

