import 'package:bloc/bloc.dart';
import 'package:culinar/feature/auth/data/repositories/user_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository userRepository;

  AuthBloc({required this.userRepository})
      : super(const AuthState.initial()) {
    on<AppStarted>((event, emit) async {
      final currentUser = await userRepository.getCurrentUser();
    if (currentUser != null) {
      emit(AuthAuthenticated(currentUser));
    } else {
      emit(const AuthUnauthenticated());
    }
  });

    on<UserSignedOut>((event, emit) {
    userRepository.signOut();
    emit(const AuthUnauthenticated());
    });
  }
}

