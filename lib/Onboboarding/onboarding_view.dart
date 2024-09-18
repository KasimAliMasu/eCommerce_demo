import 'package:ecommerce_app/Onboboarding/onboarding_items.dart';
import 'package:ecommerce_app/SignIn_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = OnboardingItems();
  final pageController = PageController();

  bool isLastPage = false;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${currentPage + 1}',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '/',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: const Color(0xffA0A0A1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${controller.items.length}',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: const Color(0xffA0A0A1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignInScreen()),
            ),
            child: Text(
              "Skip",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.transparent,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                    isLastPage = controller.items.length - 1 == index;
                  });
                },
                itemCount: controller.items.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        controller.items[index].image,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        controller.items[index].title,
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        controller.items[index].descriptions,
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffA8A8A9)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentPage != 0)
                  TextButton(
                    onPressed: () {
                      if (currentPage != 0) {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text(
                      "Prev",
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffC4C4C4)),
                    ),
                  ),
                Center(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: controller.items.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.black,
                      dotHeight: 8,
                      dotWidth: 13,
                    ),
                  ),
                ),
                if (!isLastPage)
                  TextButton(
                    onPressed: () {
                      if (currentPage != controller.items.length - 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text(
                      "Next",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffF83758),
                      ),
                    ),
                  ),
                if (isLastPage)
                  TextButton(
                    onPressed: () async {
                      final pres = await SharedPreferences.getInstance();
                      pres.setBool("onboarding", true);

                      if (!mounted) return;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffF83758),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// kasimali

// d