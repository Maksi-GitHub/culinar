import 'package:culinar/feature/auth/UI/screens/sign_in_screen.dart';
import 'package:culinar/feature/auth/blocs/auth_bloc/auth_bloc.dart';
import 'package:culinar/feature/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    
    final authBloc = BlocProvider.of<AuthBloc>(context);
    authBloc.add(const AppStarted());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.red,
          selectionColor: Colors.yellow,
          selectionHandleColor: Colors.black,
        ),
      ),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthAuthenticated) {
            return const HomeScreen();
          } else {
            return BlocProvider(
              create: (context) => SignInBloc(
                  userRepository: context.read<AuthBloc>().userRepository),
              child: const SignInScreen(),
            );
          }
        },
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const UserSignedOut());
              },
              icon: const Icon(Icons.login))
        ],
      ),
    );
  }
}
