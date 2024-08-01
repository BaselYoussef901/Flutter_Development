import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../configs/assets/app_images.dart';
import '../../configs/assets/app_vectors.dart';
import '../../configs/theme/app_colors.dart';
import '../../widgets/button/basic_app_button.dart';
import '../choose_mode/choose_mode.dart';


class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                  AppImages.introBG,
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
                /// App Title
                const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    )
                ),
                const SizedBox(height: 20),
                /// App Slogan
                const Text(
                  "Come relax and unwind with your favorite tunes. Whether you're here to chill, get inspired, or just enjoy the moment, our music collection has something for you.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60),
                /// App Button
                BasicAppButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const ChooseModePage())
                    );
                  },
                  title: 'Get Started',
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
