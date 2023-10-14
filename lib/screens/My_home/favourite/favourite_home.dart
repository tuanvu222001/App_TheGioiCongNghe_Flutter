import 'package:flutter/material.dart';
import 'package:stylish/components/coustom_bottom_nav_bar.dart';
import 'package:stylish/enums.dart';

import 'components/body.dart';

class Favourite extends StatelessWidget {
  static String routeName = "/favourite";

  const Favourite({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite"),
        
      ),
      
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
