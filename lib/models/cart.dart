import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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

 
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store!.cart._ItemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._ItemIds.remove(item.id);
  }
}
