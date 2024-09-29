import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_music_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_music_app/core/config/assets/app_images.dart';
import 'package:spotify_music_app/core/config/assets/app_vectors.dart';
import 'package:spotify_music_app/core/config/theme/app_colors.dart';
import 'package:spotify_music_app/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 45),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.introBg), fit: BoxFit.cover)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(AppVectors.logo),
            ),
            const Spacer(),
            const Text(
              'Enjoy Listening To Music',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 23.0,
              ),
            ),
            const SizedBox(
              height: 21.0,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut sollicitudin enim, in tincidunt dolor. Sed dapibus vel nibh tempus viverra. Mauris dui massa, dapibus ac dictum.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25.0,
            ),
            BasicAppButton(
              text: 'Get Started',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChooseModePage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
