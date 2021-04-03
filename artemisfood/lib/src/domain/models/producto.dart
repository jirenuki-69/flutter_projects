import 'package:flutter/foundation.dart';

class Producto {
  const Producto({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.categoria,
    @required this.image,
    @required this.price,
  });

  final String id;
  final String name;
  final String description;
  final String categoria;
  final String image;
  final double price;
}

List<Producto> products = <Producto>[
  Producto(
    id: '1',
    name: 'Hamburguesa con queso',
    description: 'Enim cillum veniam incididunt ea ut enim proident reprehenderit labore. Id sint consequat proident reprehenderit consequat aute irure ullamco commodo. Ea velit ea occaecat enim nulla deserunt.',
    categoria: 'Hamburguesas',
    image:'https://s2.best-wallpaper.net/wallpaper/2880x1800/1808/Hamburger-meat-French-fries-fast-food_2880x1800.jpg',
    price: 110.0,
  ),
  Producto(
    id: '2',
    name: 'Spaghetti a la bolognesa',
    description: 'Enim cillum veniam incididunt ea ut enim proident reprehenderit labore. Id sint consequat proident reprehenderit consequat aute irure ullamco commodo. Ea velit ea occaecat enim nulla deserunt.',
    categoria: 'Pastas',
    image:'https://us.123rf.com/450wm/gdolgikh/gdolgikh1606/gdolgikh160600093/58235314-espaguetis-a-la-bolo%C3%B1esa-pasta-italiana-tradicional.jpg?ver=6',
    price: 110.0,
  ),
  Producto(
    id: '3',
    name: 'Chicken bakes',
    description: 'Enim cillum veniam incididunt ea ut enim proident reprehenderit labore. Id sint consequat proident reprehenderit consequat aute irure ullamco commodo. Ea velit ea occaecat enim nulla deserunt.',
    categoria: 'Pollos',
    image:'https://cdn.momsdish.com/wp-content/uploads/2018/09/1429074010_7-scaled.jpg',
    price: 110.0,
  ),
  Producto(
    id: '4',
    name: 'Pizza de pepperoni',
    description: 'Enim cillum veniam incididunt ea ut enim proident reprehenderit labore. Id sint consequat proident reprehenderit consequat aute irure ullamco commodo. Ea velit ea occaecat enim nulla deserunt.',
    categoria: 'Pizzas',
    image:'https://placeralplato.com/files/2016/01/Pizza-con-pepperoni.jpg',
    price: 110.0,
  ),
  Producto(
    id: '5',
    name: 'Chilaquiles Rojos',
    description: 'Enim cillum veniam incididunt ea ut enim proident reprehenderit labore. Id sint consequat proident reprehenderit consequat aute irure ullamco commodo. Ea velit ea occaecat enim nulla deserunt.',
    categoria: 'Chilaquiles',
    image:'https://www.cocinavital.mx/wp-content/uploads/2017/11/chilaquiles-rojos-paso-a-paso.jpg',
    price: 110.0,
  ),
  Producto(
    id: '6',
    name: 'Big dicks',
    description: 'Enim cillum veniam incididunt ea ut enim proident reprehenderit labore. Id sint consequat proident reprehenderit consequat aute irure ullamco commodo. Ea velit ea occaecat enim nulla deserunt.',
    categoria: 'Dicks',
    image:'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fwp-content%2Fblogs.dir%2F6%2Ffiles%2F2019%2F06%2Fdick-worldwide-interview-instagram-penis-art-0.jpg?w=960&cbr=1&q=90&fit=max',
    price: 110.0,
  ),
];
