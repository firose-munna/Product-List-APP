import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  int count =0;
  MyCart(this.count);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Total Products : $count", style: const TextStyle(fontSize: 22, fontWeight:FontWeight.w600),),
          ],
        ),
      ),

    );
  }
}
