import 'package:flutter/material.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/size_config.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> favoriteProducts = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Text("Danh sách sản phẩm yêu thích"),
            favoriteProducts.isEmpty
                ? Text("Không có sản phẩm yêu thích nào.")
                : Expanded(
                    child: ListView.builder(
                      itemCount: favoriteProducts.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(favoriteProducts[index].title),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
