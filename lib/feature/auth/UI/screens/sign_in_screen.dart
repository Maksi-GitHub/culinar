import 'package:culinar/feature/auth/UI/components/my_text_filled.dart';
import 'package:culinar/feature/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool signInRequired = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            setState(() {
              signInRequired = false;
            });
          } else if (state is SignInLoading) {
            setState(() {
              signInRequired = true;
            });
          } else if (state is SignInFailure) {
            setState(() {
              signInRequired = false;
            });
          }
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                  child:
                      Image(image: AssetImage('assets/chef_cooking_logo.png')),
                ),
                const SizedBox(height: 40),
                Text(
                  'Вход',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w900)),
                ),
                const SizedBox(height: 25),
                MyTextFromField(
                  controller: _emailController,
                ),
                const SizedBox(height: 25),
                MyTextFromField(
                  controller: _passwordController,
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<SignInBloc>().add(SignInRequested(
                          email: _emailController.text,
                          password: _passwordController.text));
                    },
                    child: Text('Войти')),
              ],
            ),
          ),
        ));
  }
}
