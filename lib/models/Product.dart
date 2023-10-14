import 'package:flutter/material.dart';

class Product {
  int id;
  final String image, title;
  final List<String> images;
  final int price;
  final Color color;
  final String description;
  final String detailsProduct;
  final Color selectedColor; // Thêm thuộc tính cho màu sắc
  final String selectedMemory;
  final String ram;
  final List<String> memories;
  final List<Color> colors;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.color,
    required this.description,
    required this.detailsProduct,
    required this.selectedColor,
    required this.selectedMemory,
    required this.colors,
    required this.memories,
    required this.ram,
    required this.images,
  });
}

List<Product> demo_product = <Product>[
  Product(
    id: 1,
    image: "assets/images/ip15prm.jpg",
    images: ["assets/images/macbook_pro_m2_8_256gb.png", "assets/images/ip15prm.jpg"],
    title: "Iphone 15 Pro Max Titan Natural",
    price: 165,
    color: const Color(0xFFFEFBF9),
    description:
        'iPhone 15 Pro Max màu Titan tự nhiên cuốn hút và cổ điển do được thiết kế để mô phỏng lại gần giống với sắc độ của các quặng Titan trong tự nhiên. Đây xứng đáng để được xem là sự bổ sung hoàn hảo cho bảng màu vốn đã đa dạng và thời thượng của các dòng iPhone từ trước đến nay.',
    detailsProduct:
        'Màn hình: LTPO Super Retina XDR OLED, 120Hz" \nCamera sau: 48 MP & Phụ 12 MP, 12 MP \nCamera trước: 12 MP \nHệ điều hành: IOS 17 \nChip xử lý:  Apple A17 Pro 6 nhân \nSim: 1 Nano SIM & 1 eSIM \nChất liệu: Khung Titan & Mặt lưng kính cường lực',
    selectedColor: const Color.fromARGB(255, 209, 209, 209),
    selectedMemory: '128GB',
    colors: [
      Color.fromARGB(255, 205, 190, 190),
      Colors.blue,
      Colors.black,
      Color.fromARGB(255, 239, 239, 239)
    ],
    memories: ["128GB", "256GB", "512GB", "   1TB   "],
    ram: "8GB",
  ),
  Product(
    id: 2,
    image: "assets/images/macbook_pro_m2_8_256gb.png",
    images: ["assets/images/macbook_pro_m2_8_256gb.png", "assets/images/ip15prm.jpg"],
    title: "MacBook Pro 13 inch M2 (10 core| 8GB RAM| 256GB SSD)",
    price: 99,
    color: const Color(0xFFFEFBF9),
    description: '',
    detailsProduct: '',
    selectedColor: Colors.transparent,
    selectedMemory: '',
    colors: [
      const Color.fromARGB(255, 209, 209, 209),
      Colors.blue,
      Colors.black,
      Color.fromARGB(255, 239, 239, 239)
    ],
    memories: ["128GB", "256GB", "512GB", "1TB"],
    ram: "8GB",
  ),
  Product(
    id: 3,
    image: "assets/images/tulanhLG.jpg",
    images: ["assets/images/macbook_pro_m2_8_256gb.png", "assets/images/ip15prm.jpg"],
    title: "Tủ lạnh LG Inverter 635 Lít GR-X257MC",
    price: 180,
    color: const Color(0xFFF8FEFB),
    description: '',
    detailsProduct: '',
    selectedColor: Colors.transparent,
    selectedMemory: '',
    colors: [
      const Color.fromARGB(255, 209, 209, 209),
      Colors.blue,
      Colors.black,
      Color.fromARGB(255, 239, 239, 239)
    ],
    memories: ["128GB", "256GB", "512GB", "1TB"],
    ram: "8GB",
  ),
  Product(
    id: 4,
    image: "assets/images/mayhutbuirobot2.jpg",
    images: ["assets/images/macbook_pro_m2_8_256gb.png", "assets/images/ip15prm.jpg"],
    title: "ROBOT HÚT BỤI HUBERT HB-S79 - CỦA ĐỨC",
    price: 149,
    color: const Color(0xFFEEEEED),
    description: '',
    detailsProduct: '',
    selectedColor: Colors.transparent,
    selectedMemory: '',
    colors: [
      const Color.fromARGB(255, 209, 209, 209),
      Colors.blue,
      Colors.black,
      Color.fromARGB(255, 239, 239, 239)
    ],
    memories: ["128GB", "256GB", "512GB", "1TB"],
    ram: "8GB",
  ),
];
