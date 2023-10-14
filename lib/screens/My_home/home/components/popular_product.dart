import 'package:flutter/material.dart';
import 'package:stylish/components/product_card.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/My_home/cart/cart_screen.dart';
import 'package:stylish/size_config.dart';

import 'section_title.dart';

class PopularProducts extends StatefulWidget {
  PopularProducts({Key? key}) : super(key: key);

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  final List<Product> products = demo_product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Sản phẩm mới ra mắt", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: getProportionateScreenWidth(20),
            runSpacing: getProportionateScreenWidth(20),
            children: products.map((product) {
              return ProductCard(
                product: product,
                press: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
