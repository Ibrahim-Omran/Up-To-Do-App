import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/features/auth/data/model/on_Boarding_model.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen.dart';

class OnBoardingScreens extends StatelessWidget {
  OnBoardingScreens({super.key});

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: PageView.builder(
            controller: controller,
            itemCount: OnBoardingModel.onBoardingScreen.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  //skip text
                  index != 2
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {
                              controller.jumpToPage(2);
                            },
                            child: Text(
                              AppStrings.skip.toUpperCase(),
                              style: GoogleFonts.lato(
                                color: AppColors.white.withOpacity(0.44),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(
                          height: 54,
                        ),

                  const SizedBox(
                    height: 16,
                  ),

                  //image
                  Image.asset(
                    OnBoardingModel.onBoardingScreen[index].imgPath,
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  //dotes
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: AppColors.primary,
                      dotHeight: 8,
                      spacing: 8,
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  //title
                  Text(
                    OnBoardingModel.onBoardingScreen[index].title,
                    style: GoogleFonts.lato(
                      color: AppColors.white.withOpacity(0.87),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //subtitle
                  const SizedBox(
                    height: 42,
                  ),
                  Text(
                    OnBoardingModel.onBoardingScreen[index].subTitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: AppColors.white.withOpacity(0.87),
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(
                    height: 107,
                  ),

                  //buttons
                  Row(
                    children: [
                      //back button
                      index != 0
                          ? TextButton(
                              onPressed: () {
                                controller.previousPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                );
                              },
                              child: Text(
                                AppStrings.back.toUpperCase(),
                                style: GoogleFonts.lato(
                                  color: AppColors.white.withOpacity(0.44),
                                  fontSize: 16,
                                ),
                              ),
                            )
                          : Container(),

                      const Spacer(),

                      //next button
                      index != 2
                          ? ElevatedButton(
                              onPressed: () {
                                controller.nextPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  )),
                              child: Text(
                                AppStrings.next.toUpperCase(),
                              ),
                            )
                          : ElevatedButton(
                              onPressed: () {
                                // Navigate to home screen
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const HomeScreen(),
                                  ),
                                );

                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  )),
                              child: Text(
                                AppStrings.getStarted.toUpperCase(),
                              ),
                            ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
