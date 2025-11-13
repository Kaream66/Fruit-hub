import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        children: [
          PageViewItem(
            image: 'assets/images/page_view_item1_image.svg',
            backGroundImage:
                'assets/images/page_view_item1_background_image.svg',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('مرحبًا بك في '),
                Text(
                  'Hub',
                  style: TextStyle(color: Colors.deepOrange),
                ),
                Text(
                  'Fruits',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ],
            ),
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          ),
          PageViewItem(
            image: 'assets/images/page_view_item2_image.svg',
            backGroundImage:
                'assets/images/page_view_item2_background_image.svg',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' أبحث و تسوق ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          ),
        ],
      ),
    );
  }
}
