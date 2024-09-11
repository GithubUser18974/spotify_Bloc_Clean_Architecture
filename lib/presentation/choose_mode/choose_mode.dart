import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_colour.dart';

import '../../common/Widgets/Button/basic_app_button.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModePageBGImage),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                Align(child: SvgPicture.asset(AppVectors.logo)),
                Spacer(),
                Text(
                  'Choose mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Satoshi"),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: AppColour.darkGrayColour,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            AppVectors.moon,
                            height: 36,
                            width: 36,
                            fit: BoxFit.none,
                          ),
                        ),
                        Text(
                          'Dark Mode',
                          style: TextStyle(
                              fontFamily: "Satoshi",
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: AppColour.darkGrayColour,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            AppVectors.sun,
                            height: 36,
                            width: 36,
                            fit: BoxFit.none,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Light Mode',
                          style: TextStyle(
                              fontFamily: "Satoshi",
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseModePage()));
                  },
                  title: "Continue",
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
