import 'package:brr_sample_app/Screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:brr_sample_app/BLoC/cart_bloc.dart';
import 'package:brr_sample_app/Reused/colors.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkColor,
        title: Text('Catalog'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Cart();
            },
            ),
            ),

          )
        ],
      ),
      body: ShopItemsWidget(),
    );
  }
}

class ShopItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: bloc.allItems,
      stream: bloc.getStream,
      builder: (context,snapshot){
        return snapshot.data['shop items'].length > 0
            ? Column(
          children: <Widget>[
            /// The [checkoutListBuilder] has to be fixed
            /// in an expanded widget to ensure it
            /// doesn't occupy the whole screen and leaves
            /// room for the the RaisedButton
            Expanded(child: shopItemsListBuilder(snapshot)),
            RaisedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Cart();
              },
              ),
              ),
              child: Text("Cart"),
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 40)
          ],
        )
            : Center(child: Text("Your Catalog is empty"));
      }
    );
  }
}

Widget shopItemsListBuilder(snapshot) {
  return ListView.builder(
    itemCount: snapshot.data["shop items"].length,
    itemBuilder: (BuildContext context, i) {
      final shopList = snapshot.data["shop items"];
      return ListTile(
        title: Text(shopList[i]['name']),
        subtitle: Text("\$${shopList[i]['price']}"),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () {
            bloc.addToCart(shopList[i]);
          },
        ),
        onTap: () {},
      );
    },
  );
}
