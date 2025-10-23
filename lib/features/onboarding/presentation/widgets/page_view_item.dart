import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backGroundImage,
    required this.title,
    required this.subTitle,
  });
  final String image, backGroundImage;
  final Widget title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('تخطى'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
