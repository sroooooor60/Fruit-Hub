import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frute_hub/core/utils/app_text_styles.dart';
import 'package:frute_hub/features/auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title,
    required this.isVisible,
  });

  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  final bool isVisible;

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
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,

                child: SvgPicture.asset(image),
              ),

              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      LoginView.routeName,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('تخط', style: TextStyles.regular13),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            style: TextStyles.semiBold13,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
