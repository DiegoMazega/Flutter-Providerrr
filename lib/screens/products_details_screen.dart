import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/providers/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen({this.title, this.price});
  static const routename = '/product-detail'; 

  @override
  Widget build(BuildContext context) {
    final String productId = ModalRoute.of(context).settings.arguments as String; //this ID
    final loadedProduct = Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text("${loadedProduct.title}"),
      ),
    );
  }
}