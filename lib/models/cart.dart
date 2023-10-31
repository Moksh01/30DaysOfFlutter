import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //catalog fields
  late CatalogModel _catalog;
  //collection of ids
  final List<int> _ItemIds = [];
//get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //Get items in cart
  List<Item> get items => _ItemIds.map((id) => _catalog.getById(id)).toList();
  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
  //add item
  void add(Item item) {
    _ItemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _ItemIds.remove(item.id);
  }
}
