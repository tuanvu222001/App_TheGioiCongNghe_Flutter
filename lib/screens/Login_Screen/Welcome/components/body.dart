import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "CHÀO MỪNG ĐẾN VỚI SHOP THẾ GIỚI CÔNG NGHỆ",
          style: GoogleFonts.yeonSung(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: defaultPadding / 10),
        Row(
          children: [
            Spacer(),
            Expanded(
                child: AvatarGlow(
              glowColor: Colors.blue,
              endRadius: 130.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Container(
                width: 100.0, // Điều chỉnh kích thước container theo mong muốn
                height: 100.0, // Điều chỉnh kích thước container theo mong muốn
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  child: const Icon(
                    Icons.shopify,
                    size: 80,
                  ),
                ),
              ),
            )),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 8),
      ],
    );
  }
}
