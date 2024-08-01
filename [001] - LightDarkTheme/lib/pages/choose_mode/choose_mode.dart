import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:light_dark_theme/pages/choose_mode/theme_cubit.dart';

import '../../configs/assets/app_images.dart';
import '../../configs/assets/app_vectors.dart';
import '../../configs/theme/app_colors.dart';
import '../../widgets/button/basic_app_button.dart';


class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
            /// Background Image
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImages.choosemodeBG,
                  )
              ),
            ),
          ),


          /// Page Opacity
          Container(
              color: Colors.black.withOpacity(0.15)
          ),


          /// Page Elements
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                /// Spotify Logo
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)
                ),
                const Spacer(),
                /// App Mode Title
                const Text(
                    'Choose Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    )
                ),
                const SizedBox(height: 40),







                /// App Modes [Sun/Moon Buttons]
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Moon Mode
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                          },

                          // Moon Icon
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle
                                ),

                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),

                        // Moon Text
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grey,
                          )
                        )
                      ],
                    ),
                    const SizedBox(width: 40,),
                    // Sun Mode
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                          },

                          // Sun Icon
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: const Color(0xff30393C).withOpacity(0.5),
                                    shape: BoxShape.circle
                                ),

                                child: SvgPicture.asset(
                                  AppVectors.sun,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),

                        // Sun Text
                        const Text(
                            'Light Mode',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: AppColors.grey,
                            )
                        )
                      ],
                    ),

                  ],
                ),
                const SizedBox(height: 60),







                /// App Button
                BasicAppButton(
                  onPressed: () {

                  },
                  title: 'Continue',
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
