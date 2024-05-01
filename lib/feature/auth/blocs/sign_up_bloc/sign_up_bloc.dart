import 'package:bloc/bloc.dart';
import 'package:culinar/feature/auth/data/repositories/user_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final UserRepository _userRepository;

  SignUpBloc(this._userRepository) : super(const _Initial()) {
    on<SignUpRequested>((event, emit) async {
      emit(const _Loading());
      try {
        final user = await _userRepository.signUpWithEmailAndPassword(
            event.email, event.password, event.name);
        if (user != null) {
          emit(SignUpState.success(user));
        } else {
          emit(const SignUpState.failure("Ошибка при регистрации"));
        }
      } catch (e) {
        emit( SignUpState.failure("Ошибка при регистрации:$e"));
      }
    });
  }
}
