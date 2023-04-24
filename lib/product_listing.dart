import 'package:edu_test_demo/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductListing extends StatefulWidget {
  final ProductsAPI api;

  const ProductListing({super.key, required this.api});

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  List<dynamic> _products = [];

  void initState() {
    super.initState();

    widget.api.getProducts().then((value) => setState(() {
          _products = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _products.length,
      itemBuilder: (context, index) {
        final product = _products[index];

        return ListTile(
          title: Text(product['title']),
        );
      },
    );
  }
}
