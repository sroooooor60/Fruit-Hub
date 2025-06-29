import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:frute_hub/constants.dart';
import 'package:frute_hub/core/utils/app_colors.dart';
import 'package:frute_hub/core/widgets/custom_botton.dart';
import 'package:frute_hub/features/on_bording/presentaion/views/widgets/on_bording_page_view.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  // PageController to control the page view for onboarding
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    // Initialize the PageController to control the page view
    pageController = PageController();

    // Add a listener to update the current page index when the page view changes

    pageController.addListener(() {
      //round معناها تقريب الرقم لأقرب رقم صحيح كبير
      currentPage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    // Dispose the PageController to free up resources
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBordingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color:
                currentPage == 0
                    ? AppColors.primaryColor.withValues(alpha: .5)
                    : AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 26),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorozentalPadding),
            child: CustomBotton(onPressed: () {}, text: 'ابدأ الان'),
          ),
        ),
        SizedBox(height: 46),
      ],
    );
  }
}
