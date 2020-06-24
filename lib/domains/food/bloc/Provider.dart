import 'package:delivery_app/domains/food/models/FoodItem.dart';

class CartProvider {
  List<FoodItem> foodItems = [];

  List<FoodItem> addToList(FoodItem item) {
    foodItems.add(item);
    return foodItems;
  }

  List<FoodItem> removeFromList(FoodItem item) {
    foodItems.remove(item);
    return foodItems;
  }
}
