import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/page_view_item.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageViewItem(
            image: 'assets/images/page_view_item1_image.svg',
            backGroundImage:
                'assets/images/page_view_item1_background_image.svg',
            title: Row(
              children: [
                Text('مرحبًا بك في '),
                Text('Fruit'),
                Text('HUB'),
              ],
            ),
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          ),
        ),
      ],
    );
  }
}
