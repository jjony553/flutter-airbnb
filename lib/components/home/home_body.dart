import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_banner.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);

    double screenWidth = MediaQuery.of(context).size.width;
    return Align(
      child: SizedBox(
        width: screenWidth < 420 ? double.infinity : bodyWidth,
        child: Padding(
          padding: const EdgeInsets.only(top: gap_m),
          child: Column(
            children: [
              HomeBodyBanner(),
              HomeBodyPopular(),
              SizedBox(
                height: gap_xl,
              )
            ],
          ),
        ),
      ),
    );
  }
}
