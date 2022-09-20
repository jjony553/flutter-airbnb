import 'package:flutter/material.dart';
import 'package:flutter_airbnb/colors.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWCTpW_BuqR7UPZM9ifgit4aiOBhJnBgkVwDr5xitSBjCPsP5rS3HGj16QxC4M3WeES5U&usqp=CAU",
    "https://a.cdn-hotels.com/gdcs/production110/d1295/985557b1-8062-4894-9a32-0d2bc8ae0e7b.jpg",
    "https://img.gqkorea.co.kr/gq/2020/07/style_5f02a9ff3daa9.jpg",
  ];
  HomeBodyPopularItem({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.network(
              popularList[id],
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요~ 탁 트인 뷰, 부모님과 함께 하기 좋았습니다. 맛있는 조식까지 완-벽",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(popularList[0]),
        ),
        SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              "Losa",
              style: subTitle1(),
            ),
            Text(
              "USA",
              style: subTitle2(),
            ),
          ],
        )
      ],
    );
  }
}
