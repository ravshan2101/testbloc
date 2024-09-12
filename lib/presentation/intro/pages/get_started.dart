import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testbloc/common/widgets/button/basic_app_button.dart';
import 'package:testbloc/core/configs/assets/app_images.dart';
import 'package:testbloc/core/configs/assets/app_vectors.dart';
import 'package:testbloc/core/configs/theme/app_colors.dart';
import 'package:testbloc/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppImages.introBG),
              fit: BoxFit.fill,
            )),
          ),
          Container(color: Colors.black.withOpacity(0.15)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(height: 21),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 80),
                BasicAppButtton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChooseModePage()));
                    },
                    title: 'Get Started'),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
