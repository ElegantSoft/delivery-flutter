import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:delivery_app/domains/food/bloc/Provider.dart';
import 'package:delivery_app/domains/food/models/FoodItem.dart';
import 'package:rxdart/rxdart.dart';

class CartListBloc extends BlocBase {
  CartListBloc();
  final cartItemController = StreamController.broadcast();
  final CartProvider provider = CartProvider();

  var _listCounter = BehaviorSubject<List<FoodItem>>.seeded([]);

  Stream<List<FoodItem>> get listStream => _listCounter.stream;
  Sink<List<FoodItem>> get listSink => _listCounter.sink;

  void addToList(FoodItem item) {
    listSink.add(provider.addToList(item));
  }

  void removeToList(FoodItem item) {
    listSink.add(provider.removeFromList(item));
  }

  @override
  void dispose() {
    _listCounter.close();
    super.dispose();
  }
}
