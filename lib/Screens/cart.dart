import 'package:flutter/material.dart';
import 'package:brr_sample_app/BLoC/cart_bloc.dart';
import 'package:brr_sample_app/Reused/colors.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: StreamBuilder(
        stream: bloc.getStream,
        initialData: bloc.allItems,
        builder: (context, snapshot) {
          final finalPrice = snapshot.data["price"];
          return snapshot.data['cart items'].length > 0
              ? Column(
            children: <Widget>[
              /// The [checkoutListBuilder] has to be fixed
              /// in an expanded widget to ensure it
              /// doesn't occupy the whole screen and leaves
              /// room for the the RaisedButton
              Expanded(child: checkoutListBuilder(snapshot)),
              Container(
                child: Text('Total price is \$$finalPrice',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),),
              ),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {},
                child: Text("Buy"),
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 40),


            ],
          )
              : Center(child: Text("Your cart is empty"));
        },
      ),
    );
  }
}

Widget checkoutListBuilder(snapshot) {
  return ListView.builder(
    itemCount: snapshot.data["cart items"].length,
    itemBuilder: (BuildContext context, i) {
      final cartList = snapshot.data["cart items"];
      return ListTile(
        title: Text(cartList[i]['name']),
        subtitle: Text("\$${cartList[i]['price']}"),
        trailing: IconButton(
          icon: Icon(Icons.remove_shopping_cart),
          onPressed: () {
            bloc.removeFromCart(cartList[i]);
          },
        ),
        onTap: () {},
      );
    },
  );
}
