import 'package:culinar/app/app_view.dart';
import 'package:culinar/feature/auth/blocs/auth_bloc/auth_bloc.dart';
import 'package:culinar/feature/auth/data/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final UserRepository userRepository;
  const App(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthBloc>(
      create: (context) => AuthBloc(
				userRepository: userRepository
			),
      child: const AppView(),
    );
  }
}