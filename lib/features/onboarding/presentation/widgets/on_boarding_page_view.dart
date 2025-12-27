import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        children: [
          PageViewItem(
            isVisible:
                (pageController.hasClients
                    ? pageController.page!.round()
                    : 0) ==
                0,
            image: 'assets/images/page_view_item1_image.svg',
            backGroundImage:
                'assets/images/page_view_item1_background_image.svg',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('مرحبًا بك في ', style: TextStyles.bold23),
                Text(
                  'Hub',
                  style: TextStyles.bold23.copyWith(
                    color: Colors.deepOrange,
                  ),
                ),
                Text(
                  'Fruits',
                  style: TextStyles.bold23.copyWith(
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          ),
          PageViewItem(
            isVisible:
                (pageController.hasClients
                    ? pageController.page!.round()
                    : 1) ==
                0,
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

