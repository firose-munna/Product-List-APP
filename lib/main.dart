import 'package:flutter/material.dart';
import 'package:productapp/cart.dart';
int result = 0;

void main() {
  runApp(const MyProductListApp());
}

class MyProductListApp extends StatelessWidget {
  const MyProductListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductList(),
    );
  }
}


class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  List<int> count = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListItem("Product 1", "\$10.00"),
          ListItem("Product 2", "\$15.00"),
          ListItem("Product 3", "\$20.00"),
          ListItem("Product 4", "\$20.00"),
          ListItem("Product 5", "\$20.00"),
          ListItem("Product 6", "\$20.00"),
          ListItem("Product 7", "\$20.00"),
          ListItem("Product 8", "\$20.00"),
          ListItem("Product 9", "\$20.00"),
          ListItem("Product 10", "\$20.00"),
          ListItem("Product 11", "\$20.00"),
          ListItem("Product 12", "\$20.00"),
          ListItem("Product 13", "\$40.00"),
          ListItem("Product 14", "\$45.00"),
          ListItem("Product 15", "\$50.00"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyCart(result)));
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}




class ListItem extends StatefulWidget {

  String productNo;
  String price;
  int counter =0;

  ListItem(this.productNo, this.price);

  @override
  State<ListItem> createState() => _ListItemState(productNo, price, counter);

}

class _ListItemState extends State<ListItem> {

  myAlertMessage(message,context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: const Text("Congratulations!"),
                content: Text(message),
                actions: [
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("OK")),
                ],
              )
          );
        }
    );
  }

  String productNo;
  String price;
  int counter;

  _ListItemState(this.productNo, this.price, this.counter);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      //int n = count[0];
      title: Text(productNo),
      subtitle: Text(price),
      trailing: Column(
        children: [
          Text("Counter $counter"),
          SizedBox(
              height: 35,
              child: ElevatedButton(
                  onPressed: () {
                    counter++;
                    result++;
                    if(counter == 5){
                      myAlertMessage("You've bought 5 $productNo!", context);
                    }
                    setState(() {

                    });}, child: const Text("Buy Now ")))
        ],
      ),
    );
  }

}