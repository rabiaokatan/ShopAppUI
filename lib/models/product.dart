import 'package:flutter/material.dart';

class Product {
  int id;
  String title;
  double cost;
  String subTitle;
  String photoUrl;

  Product(
      {@required this.id,
      @required this.title,
      @required this.cost,
      @required this.subTitle,
      @required this.photoUrl});
}

List<Product> products = [
  Product(
    id: 0,
    title: 'Anti Social Club Hoodie',
    cost: 60,
    subTitle: 'Long 3/4 sleevs, sweartshirt',
    photoUrl:
        'https://images.stockx.com/images/Anti-Social-Social-Club-Kkoch-Hoodie-Black.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1611841873',
  ),
  Product(
    id: 1,
    title: 'Sneaker',
    cost: 120,
    subTitle: 'Comfortable sneakers',
    photoUrl:
        'http://www.bambistore.com.tr/Uploads/UrunResimleri/buyuk/beyazpudra-kadin-sneaker-093ca-.jpg',
  ),
  Product(
    id: 2,
    title: 'Hoodie',
    cost: 50,
    subTitle: 'Long sleevs, sweartshirt',
    photoUrl:
        'https://cdn-images.farfetch-contents.com/15/60/02/30/15600230_29200357_300.jpg',
  ),
  Product(
    id: 3,
    title: 'Pullover',
    cost: 70,
    subTitle: 'Long sleevs, pullover',
    photoUrl:
        'https://ae01.alicdn.com/kf/HTB1wq10RkPoK1RjSZKbq6x1IXXaJ/Bahar-fener-kollu-i-ek-nak-rg-kazak-h-rka-sonbahar-tiki-tarz-Mori-k-z.jpg_q50.jpg',
  ),
];

List<Product> youMayLikeProducts = [
  Product(
    id: 0,
    title: 'Anti Social Club Hoodie',
    cost: 60,
    subTitle: 'Long 3/4 sleevs, sweartshirt',
    photoUrl:
        'https://images.stockx.com/images/Anti-Social-Social-Club-Kkoch-Hoodie-Black.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1611841873',
  ),
  Product(
    id: 1,
    title: 'Sneaker',
    cost: 120,
    subTitle: 'Comfortable sneakers',
    photoUrl:
        'http://www.bambistore.com.tr/Uploads/UrunResimleri/buyuk/beyazpudra-kadin-sneaker-093ca-.jpg',
  ),
  Product(
    id: 2,
    title: 'Hoodie',
    cost: 50,
    subTitle: 'Long sleevs, sweartshirt',
    photoUrl:
        'https://cdn-images.farfetch-contents.com/15/60/02/30/15600230_29200357_300.jpg',
  ),
  Product(
    id: 3,
    title: 'Pullover',
    cost: 70,
    subTitle: 'Long sleevs, pullover',
    photoUrl:
        'https://ae01.alicdn.com/kf/HTB1wq10RkPoK1RjSZKbq6x1IXXaJ/Bahar-fener-kollu-i-ek-nak-rg-kazak-h-rka-sonbahar-tiki-tarz-Mori-k-z.jpg_q50.jpg',
  ),
];
