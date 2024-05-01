// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) signInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInRequestedImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$SignInRequestedImplCopyWith(_$SignInRequestedImpl value,
          $Res Function(_$SignInRequestedImpl) then) =
      __$$SignInRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInRequestedImpl>
    implements _$$SignInRequestedImplCopyWith<$Res> {
  __$$SignInRequestedImplCopyWithImpl(
      _$SignInRequestedImpl _value, $Res Function(_$SignInRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInRequestedImpl implements SignInRequested {
  const _$SignInRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.signInRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      __$$SignInRequestedImplCopyWithImpl<_$SignInRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInRequested,
  }) {
    return signInRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
  }) {
    return signInRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) signInRequested,
  }) {
    return signInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
  }) {
    return signInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(this);
    }
    return orElse();
  }
}

abstract class SignInRequested implements SignInEvent {
  const factory SignInRequested(
      {required final String email,
      required final String password}) = _$SignInRequestedImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInInitialImplCopyWith<$Res> {
  factory _$$SignInInitialImplCopyWith(
          _$SignInInitialImpl value, $Res Function(_$SignInInitialImpl) then) =
      __$$SignInInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInInitialImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInInitialImpl>
    implements _$$SignInInitialImplCopyWith<$Res> {
  __$$SignInInitialImplCopyWithImpl(
      _$SignInInitialImpl _value, $Res Function(_$SignInInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInInitialImpl implements SignInInitial {
  const _$SignInInitialImpl();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignInInitial implements SignInState {
  const factory SignInInitial() = _$SignInInitialImpl;
}

/// @nodoc
abstract class _$$SignInLoadingImplCopyWith<$Res> {
  factory _$$SignInLoadingImplCopyWith(
          _$SignInLoadingImpl value, $Res Function(_$SignInLoadingImpl) then) =
      __$$SignInLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInLoadingImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInLoadingImpl>
    implements _$$SignInLoadingImplCopyWith<$Res> {
  __$$SignInLoadingImplCopyWithImpl(
      _$SignInLoadingImpl _value, $Res Function(_$SignInLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInLoadingImpl implements SignInLoading {
  const _$SignInLoadingImpl();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignInLoading implements SignInState {
  const factory SignInLoading() = _$SignInLoadingImpl;
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<$Res> {
  factory _$$SignInSuccessImplCopyWith(
          _$SignInSuccessImpl value, $Res Function(_$SignInSuccessImpl) then) =
      __$$SignInSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyUser user});

  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInSuccessImpl>
    implements _$$SignInSuccessImplCopyWith<$Res> {
  __$$SignInSuccessImplCopyWithImpl(
      _$SignInSuccessImpl _value, $Res Function(_$SignInSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignInSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SignInSuccessImpl implements SignInSuccess {
  const _$SignInSuccessImpl(this.user);

  @override
  final MyUser user;

  @override
  String toString() {
    return 'SignInState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      __$$SignInSuccessImplCopyWithImpl<_$SignInSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignInSuccess implements SignInState {
  const factory SignInSuccess(final MyUser user) = _$SignInSuccessImpl;

  MyUser get user;
  @JsonKey(ignore: true)
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFailureImplCopyWith<$Res> {
  factory _$$SignInFailureImplCopyWith(
          _$SignInFailureImpl value, $Res Function(_$SignInFailureImpl) then) =
      __$$SignInFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SignInFailureImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInFailureImpl>
    implements _$$SignInFailureImplCopyWith<$Res> {
  __$$SignInFailureImplCopyWithImpl(
      _$SignInFailureImpl _value, $Res Function(_$SignInFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignInFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInFailureImpl implements SignInFailure {
  const _$SignInFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SignInState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFailureImplCopyWith<_$SignInFailureImpl> get copyWith =>
      __$$SignInFailureImplCopyWithImpl<_$SignInFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MyUser user) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyUser user)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyUser user)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInInitial value) initial,
    required TResult Function(SignInLoading value) loading,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInInitial value)? initial,
    TResult? Function(SignInLoading value)? loading,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInInitial value)? initial,
    TResult Function(SignInLoading value)? loading,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SignInFailure implements SignInState {
  const factory SignInFailure(final String error) = _$SignInFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$SignInFailureImplCopyWith<_$SignInFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
