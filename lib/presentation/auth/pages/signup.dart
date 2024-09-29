import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_music_app/common/widgets/appbar/app_bar.dart';
import 'package:spotify_music_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_music_app/core/config/assets/app_vectors.dart';
import 'package:spotify_music_app/core/config/theme/app_colors.dart';
import 'package:spotify_music_app/presentation/auth/pages/signin.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 35,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Register',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('If You Need Any Support '),
                  Text(
                    'Click Here',
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              _fullNameField(),
              const SizedBox(
                height: 10,
              ),
              _emailField(),
              const SizedBox(
                height: 10,
              ),
              _passwordField(),
              const SizedBox(
                height: 20.0,
              ),
              BasicAppButton(
                text: 'Create Account',
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.8,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.apple,
                      size: 45,
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do You Have An Account? ', style: TextStyle(fontWeight: FontWeight.w500),),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SigninPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fullNameField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Full Name',
      ),
      cursorColor: AppColors.primary,
      style: TextStyle(fontWeight: FontWeight.w600),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
      ),
      cursorColor: AppColors.primary,
      style: TextStyle(fontWeight: FontWeight.w600),
    );
  }

  Widget _passwordField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () => setState(() {
              isObscure = !isObscure;
            }),
            icon: isObscure
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      obscureText: isObscure,
      cursorColor: AppColors.primary,
      style: const TextStyle(fontWeight: FontWeight.w600),
    );
  }
}
