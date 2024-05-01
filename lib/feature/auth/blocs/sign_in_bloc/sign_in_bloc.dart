import 'package:bloc/bloc.dart';
import 'package:culinar/feature/auth/data/repositories/user_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final UserRepository _userRepository;

  SignInBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const SignInInitial()) {
    on<SignInRequested>((event, emit) async {
      emit(const SignInLoading());
      try {
        final user = await _userRepository.signInWithEmailAndPassword(
            event.email, event.password);
        if (user != null) {
          emit(SignInSuccess(user));
        } else {
          emit(const SignInFailure("Ошибка при входе в систему"));
        }
      } catch (e) {
        emit(SignInFailure("Ошибка при входе в систему:$e"));
      }
    });
  }
}
