import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_music_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_music_app/core/config/assets/app_images.dart';
import 'package:spotify_music_app/core/config/assets/app_vectors.dart';
import 'package:spotify_music_app/core/config/theme/app_colors.dart';
import 'package:spotify_music_app/presentation/auth/pages/signup_or_signin.dart';
import 'package:spotify_music_app/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 45),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.chooseModeBg), fit: BoxFit.cover)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(AppVectors.logo),
            ),
            const Spacer(),
            const Text(
              'Choose Mode',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 23.0,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                    },
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              color: const Color(0xff30393c).withOpacity(0.5),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            AppVectors.moon,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                      color: AppColors.grey,
                    ),
                  ),
                ]),
                const SizedBox(
                  width: 40,
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                    },
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              color: const Color(0xff30393c).withOpacity(0.5),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            AppVectors.sun,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Light Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                      color: AppColors.grey,
                    ),
                  ),
                ]),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            BasicAppButton(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupOrSigninPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
