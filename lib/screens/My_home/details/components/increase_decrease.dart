import 'package:flutter/material.dart';
import 'package:stylish/components/rounded_icon_btn.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/size_config.dart';

class IncreaseDecrease extends StatefulWidget {
  const IncreaseDecrease({
    Key? key,
    required this.product,
    required this.onQuantityChanged,
  }) : super(key: key);

  final Product product;
  final Function(int) onQuantityChanged;
  @override
  State<IncreaseDecrease> createState() => _IncreaseDecreaseState();
}

class _IncreaseDecreaseState extends State<IncreaseDecrease> {
  var soLuong = 0;

  void Increase() {
    setState(() {
      soLuong++;
    });
    widget.onQuantityChanged(soLuong);
  }

  void Decrease() {
    if (soLuong > 0) {
      setState(() {
        soLuong--;
      });
      widget.onQuantityChanged(soLuong);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: getProportionateScreenWidth(20)),
        RoundedIconBtn(
          icon: Icons.remove,
          press: () {
            Decrease();
          },
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        RoundedIconBtn(
          icon: Icons.add,
          showShadow: true,
          press: () {
            Increase();
          },
        ),
      ],
    );
  }
}
