import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/My_home/details/components/details_product.dart';
import 'package:stylish/size_config.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  Color selectedColor = Colors.grey;
  String selectedMemory = "";
  @override
  void initState() {
    super.initState();
    selectedColor = widget.product.selectedColor;
    selectedMemory = widget.product.selectedMemory;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 350,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Text(
                      widget.product.title,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                    decoration: BoxDecoration(
                      color: widget.product.title.isNotEmpty
                          ? const Color(0xFFFFE6E6)
                          : const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(Icons.favorite,
                        color: Color.fromARGB(255, 247, 82, 70)),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            widget.product.description,
            style: const TextStyle(fontSize: 15),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: const Text(
            "Chọn màu:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        buildColorOptions(), // Hiển thị lựa chọn màu
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(60),
          ),
          child: const Text(
            "Chọn dung lượng:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        buildMemoryOptions(), // Hiển thị lựa chọn dung lượng
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsProduct(product: widget.product),
                ),
              );
            },
            child: const Row(
              children: [
                Text(
                  "Xem chi tiết",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildColorOptions() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.product.colors.length,
        itemBuilder: (context, index) {
          final color = widget.product.colors[index];
          return Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(18),
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedColor = color;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                // Highlight màu đã chọn
                child: selectedColor == color
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    : Container(),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildMemoryOptions() {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.product.memories.length,
        itemBuilder: (context, index) {
          final memory = widget.product.memories[index];
          return Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedMemory = memory;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedMemory == memory
                        ? kPrimaryColor
                        : Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  memory,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        selectedMemory == memory ? kPrimaryColor : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
