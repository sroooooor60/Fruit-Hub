import 'package:flutter/material.dart';
import 'package:frute_hub/core/utils/app_colors.dart';
import 'package:frute_hub/core/utils/app_images.dart';
import 'package:frute_hub/core/utils/app_text_styles.dart';
import 'package:frute_hub/features/on_bording/presentaion/views/widgets/page_view_item.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.assetsImagesPageItem1Image,
          backgroundImage: Assets.assetsImagesPageItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في', style: TextStyles.bold23),
              Text(
                ' HUB',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secundaryColor,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,

          image: Assets.assetsImagesPageItem2Image,
          backgroundImage: Assets.assetsImagesPageItem2BackgroundImage,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            'ابحث وتسوق',
            style: TextStyle(
              fontSize: 23,
              fontFamily: 'cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
