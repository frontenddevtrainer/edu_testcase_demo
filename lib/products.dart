import "package:flutter/material.dart";
import "package:edu_test_demo/setup_locator.dart";
import "package:edu_test_demo/models/products.dart";

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String>products = getIt<Products>().getAllProducts();
    
    return Text(products[0]);
  }
}