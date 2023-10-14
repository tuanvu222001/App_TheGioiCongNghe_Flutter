import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Đăng nhập".toUpperCase(),
          style: GoogleFonts.yeonSung(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
        SizedBox(height: defaultPadding * 4),
      ],
    );
  }
}
