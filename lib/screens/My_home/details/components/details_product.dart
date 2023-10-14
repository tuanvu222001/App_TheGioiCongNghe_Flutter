import 'package:flutter/material.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/size_config.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chi tiết sản phẩm"),
      ),
      body: Container(
        color: Colors.white, // Đặt màu nền của body thành màu trắng
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(10),
                ),
                child: Text(
                  product.detailsProduct,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(5),
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(10),
                ),
                child:
                    Text("RAM: ${product.ram}", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
