/// The [dart:async] is necessary for using streams
import 'dart:async';

class CartItemsBloc {
  /// The [cartStreamController] is an object of the StreamController class
  /// .broadcast enables the stream to be read in multiple screens of our app
  final cartStreamController = StreamController.broadcast();

  /// The [getStream] getter would be used to expose our stream to other classes
  Stream get getStream => cartStreamController.stream;

  /// The [allItems] Map would hold all the data this bloc provides
  final Map allItems = {
    'shop items': [
      {'name': 'Application Development', 'price': 50000, 'id': 1},
      {'name': 'Kafka Development', 'price': 40000, 'id': 2},
      {'name': 'MuleSoft Development', 'price': 30000, 'id': 3},
      {'name': 'Big Data Application ', 'price': 20000, 'id': 4},
    ],
    'cart items': [],
    'price' : 0
  };

  /// [addToCart] adds items from the shop to the cart
  void addToCart(item) {
    allItems['shop items'].remove(item);
    allItems['cart items'].add(item);
    allItems['price'] = allItems['price'] + item['price'];
    cartStreamController.sink.add(allItems);
  }

  /// [removeFromCart] removes items from the cart, back to the shop
  void removeFromCart(item) {
    allItems['cart items'].remove(item);
    allItems['shop items'].add(item);
    allItems['price'] = allItems['price'] - item['price'];
    cartStreamController.sink.add(allItems);
  }

  /// The [dispose] method is used
  /// to automatically close the stream when the widget is removed from the widget tree
  void dispose() {
    cartStreamController.close(); // close our StreamController
  }
}

final bloc = CartItemsBloc();
