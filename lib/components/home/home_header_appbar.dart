import 'package:flutter/material.dart';
import 'package:flutter_airbnb/style.dart';

import '../../size.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Image.asset("assets/logo.png", width: 70, height: 70);
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text(
          "회원가입",
          style: subTitle1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_m,
        ),
        Text(
          '로그인',
          style: subTitle1(mColor: Colors.white),
        )
      ],
    );
  }
}
