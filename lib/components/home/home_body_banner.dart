import 'package:flutter/material.dart';

import '../../size.dart';
import '../../style.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/a/aa/Dawn_on_the_S_rim_of_the_Grand_Canyon_%288645178272%29.jpg",
        fit: BoxFit.cover,
        height: 320,
        width: double.infinity,
      ),
    );
  }

  Widget _buildBannerCaption() {
    return Positioned(
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 250,
            ),
            child: Text(
              '이제, 여행은 가까운 곳에서',
              style: h4(mColor: Colors.white),
            ),
          ),
          SizedBox(
            height: gap_m,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 250),
            child: Text(
              '새로운 공간에 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.',
              style: subTitle1(mColor: Colors.white),
            ),
          ),
          SizedBox(
            height: gap_m,
          ),
          SizedBox(
            height: 35,
            width: 170,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  '가까운 여행지 둘러보기',
                  style: subTitle2(),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
          )
        ],
      ),
    );
  }
}
