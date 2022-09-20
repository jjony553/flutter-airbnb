import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_header_appbar.dart';
import 'package:flutter_airbnb/components/home/home_header_form.dart';
import 'package:flutter_airbnb/size.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://media.istockphoto.com/photos/the-sea-and-the-island-picture-id932084972?k=20&m=932084972&s=612x612&w=0&h=t5kvhXnMkHi4dFefSHYae8V4TKuK5zUct4sVSrSQIdI="),
              fit: BoxFit.cover)),
      child: Column(children: [
        HomeHeaderAppBar(),
        HomeHeaderForm(),
      ]),
    );
  }
}
