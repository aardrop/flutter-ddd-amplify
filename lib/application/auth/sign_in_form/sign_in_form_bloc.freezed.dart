// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  ConfirmationCodeChanged confirmationCodeChanged(String confirmationCodeStr) {
    return ConfirmationCodeChanged(
      confirmationCodeStr,
    );
  }

  RequestedNewConfirmationCode requestedNewConfirmationCode() {
    return const RequestedNewConfirmationCode();
  }

  SignUpSwitched signUpSwitched() {
    return const SignUpSwitched();
  }

  ConfirmationSwitched confirmationSwitched() {
    return const ConfirmationSwitched();
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }

  SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const SignInWithEmailAndPasswordPressed();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }

  SubmitConfirmationCode submitConfirmationCode() {
    return const SubmitConfirmationCode();
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('emailStr', emailStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationCodeChangedCopyWith<$Res> {
  factory $ConfirmationCodeChangedCopyWith(ConfirmationCodeChanged value,
          $Res Function(ConfirmationCodeChanged) then) =
      _$ConfirmationCodeChangedCopyWithImpl<$Res>;
  $Res call({String confirmationCodeStr});
}

/// @nodoc
class _$ConfirmationCodeChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $ConfirmationCodeChangedCopyWith<$Res> {
  _$ConfirmationCodeChangedCopyWithImpl(ConfirmationCodeChanged _value,
      $Res Function(ConfirmationCodeChanged) _then)
      : super(_value, (v) => _then(v as ConfirmationCodeChanged));

  @override
  ConfirmationCodeChanged get _value => super._value as ConfirmationCodeChanged;

  @override
  $Res call({
    Object? confirmationCodeStr = freezed,
  }) {
    return _then(ConfirmationCodeChanged(
      confirmationCodeStr == freezed
          ? _value.confirmationCodeStr
          : confirmationCodeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmationCodeChanged
    with DiagnosticableTreeMixin
    implements ConfirmationCodeChanged {
  const _$ConfirmationCodeChanged(this.confirmationCodeStr);

  @override
  final String confirmationCodeStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.confirmationCodeChanged(confirmationCodeStr: $confirmationCodeStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.confirmationCodeChanged'))
      ..add(DiagnosticsProperty('confirmationCodeStr', confirmationCodeStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmationCodeChanged &&
            (identical(other.confirmationCodeStr, confirmationCodeStr) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCodeStr, confirmationCodeStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmationCodeStr);

  @JsonKey(ignore: true)
  @override
  $ConfirmationCodeChangedCopyWith<ConfirmationCodeChanged> get copyWith =>
      _$ConfirmationCodeChangedCopyWithImpl<ConfirmationCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return confirmationCodeChanged(confirmationCodeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (confirmationCodeChanged != null) {
      return confirmationCodeChanged(confirmationCodeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return confirmationCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (confirmationCodeChanged != null) {
      return confirmationCodeChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmationCodeChanged implements SignInFormEvent {
  const factory ConfirmationCodeChanged(String confirmationCodeStr) =
      _$ConfirmationCodeChanged;

  String get confirmationCodeStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmationCodeChangedCopyWith<ConfirmationCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestedNewConfirmationCodeCopyWith<$Res> {
  factory $RequestedNewConfirmationCodeCopyWith(
          RequestedNewConfirmationCode value,
          $Res Function(RequestedNewConfirmationCode) then) =
      _$RequestedNewConfirmationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestedNewConfirmationCodeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RequestedNewConfirmationCodeCopyWith<$Res> {
  _$RequestedNewConfirmationCodeCopyWithImpl(
      RequestedNewConfirmationCode _value,
      $Res Function(RequestedNewConfirmationCode) _then)
      : super(_value, (v) => _then(v as RequestedNewConfirmationCode));

  @override
  RequestedNewConfirmationCode get _value =>
      super._value as RequestedNewConfirmationCode;
}

/// @nodoc

class _$RequestedNewConfirmationCode
    with DiagnosticableTreeMixin
    implements RequestedNewConfirmationCode {
  const _$RequestedNewConfirmationCode();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.requestedNewConfirmationCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.requestedNewConfirmationCode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestedNewConfirmationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return requestedNewConfirmationCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (requestedNewConfirmationCode != null) {
      return requestedNewConfirmationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return requestedNewConfirmationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (requestedNewConfirmationCode != null) {
      return requestedNewConfirmationCode(this);
    }
    return orElse();
  }
}

abstract class RequestedNewConfirmationCode implements SignInFormEvent {
  const factory RequestedNewConfirmationCode() = _$RequestedNewConfirmationCode;
}

/// @nodoc
abstract class $SignUpSwitchedCopyWith<$Res> {
  factory $SignUpSwitchedCopyWith(
          SignUpSwitched value, $Res Function(SignUpSwitched) then) =
      _$SignUpSwitchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpSwitchedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignUpSwitchedCopyWith<$Res> {
  _$SignUpSwitchedCopyWithImpl(
      SignUpSwitched _value, $Res Function(SignUpSwitched) _then)
      : super(_value, (v) => _then(v as SignUpSwitched));

  @override
  SignUpSwitched get _value => super._value as SignUpSwitched;
}

/// @nodoc

class _$SignUpSwitched with DiagnosticableTreeMixin implements SignUpSwitched {
  const _$SignUpSwitched();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signUpSwitched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.signUpSwitched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpSwitched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return signUpSwitched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (signUpSwitched != null) {
      return signUpSwitched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return signUpSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (signUpSwitched != null) {
      return signUpSwitched(this);
    }
    return orElse();
  }
}

abstract class SignUpSwitched implements SignInFormEvent {
  const factory SignUpSwitched() = _$SignUpSwitched;
}

/// @nodoc
abstract class $ConfirmationSwitchedCopyWith<$Res> {
  factory $ConfirmationSwitchedCopyWith(ConfirmationSwitched value,
          $Res Function(ConfirmationSwitched) then) =
      _$ConfirmationSwitchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmationSwitchedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $ConfirmationSwitchedCopyWith<$Res> {
  _$ConfirmationSwitchedCopyWithImpl(
      ConfirmationSwitched _value, $Res Function(ConfirmationSwitched) _then)
      : super(_value, (v) => _then(v as ConfirmationSwitched));

  @override
  ConfirmationSwitched get _value => super._value as ConfirmationSwitched;
}

/// @nodoc

class _$ConfirmationSwitched
    with DiagnosticableTreeMixin
    implements ConfirmationSwitched {
  const _$ConfirmationSwitched();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.confirmationSwitched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SignInFormEvent.confirmationSwitched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmationSwitched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return confirmationSwitched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (confirmationSwitched != null) {
      return confirmationSwitched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return confirmationSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (confirmationSwitched != null) {
      return confirmationSwitched(this);
    }
    return orElse();
  }
}

abstract class ConfirmationSwitched implements SignInFormEvent {
  const factory ConfirmationSwitched() = _$ConfirmationSwitched;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.registerWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

/// @nodoc

class _$SignInWithGooglePressed
    with DiagnosticableTreeMixin
    implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithGooglePressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

/// @nodoc
abstract class $SubmitConfirmationCodeCopyWith<$Res> {
  factory $SubmitConfirmationCodeCopyWith(SubmitConfirmationCode value,
          $Res Function(SubmitConfirmationCode) then) =
      _$SubmitConfirmationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitConfirmationCodeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SubmitConfirmationCodeCopyWith<$Res> {
  _$SubmitConfirmationCodeCopyWithImpl(SubmitConfirmationCode _value,
      $Res Function(SubmitConfirmationCode) _then)
      : super(_value, (v) => _then(v as SubmitConfirmationCode));

  @override
  SubmitConfirmationCode get _value => super._value as SubmitConfirmationCode;
}

/// @nodoc

class _$SubmitConfirmationCode
    with DiagnosticableTreeMixin
    implements SubmitConfirmationCode {
  const _$SubmitConfirmationCode();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.submitConfirmationCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.submitConfirmationCode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitConfirmationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmationCodeStr)
        confirmationCodeChanged,
    required TResult Function() requestedNewConfirmationCode,
    required TResult Function() signUpSwitched,
    required TResult Function() confirmationSwitched,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() submitConfirmationCode,
  }) {
    return submitConfirmationCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmationCodeStr)? confirmationCodeChanged,
    TResult Function()? requestedNewConfirmationCode,
    TResult Function()? signUpSwitched,
    TResult Function()? confirmationSwitched,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (submitConfirmationCode != null) {
      return submitConfirmationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(RequestedNewConfirmationCode value)
        requestedNewConfirmationCode,
    required TResult Function(SignUpSwitched value) signUpSwitched,
    required TResult Function(ConfirmationSwitched value) confirmationSwitched,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SubmitConfirmationCode value)
        submitConfirmationCode,
  }) {
    return submitConfirmationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(RequestedNewConfirmationCode value)?
        requestedNewConfirmationCode,
    TResult Function(SignUpSwitched value)? signUpSwitched,
    TResult Function(ConfirmationSwitched value)? confirmationSwitched,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SubmitConfirmationCode value)? submitConfirmationCode,
    required TResult orElse(),
  }) {
    if (submitConfirmationCode != null) {
      return submitConfirmationCode(this);
    }
    return orElse();
  }
}

abstract class SubmitConfirmationCode implements SignInFormEvent {
  const factory SubmitConfirmationCode() = _$SubmitConfirmationCode;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required EmailAddress emailAddress,
      required Password password,
      required ConfirmationCode confirmationCode,
      required bool showErrorMessages,
      required bool isSubmitting,
      required AuthStage authStage,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      confirmationCode: confirmationCode,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authStage: authStage,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmationCode get confirmationCode => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AuthStage get authStage => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      ConfirmationCode confirmationCode,
      bool showErrorMessages,
      bool isSubmitting,
      AuthStage authStage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? confirmationCode = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authStage = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as ConfirmationCode,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authStage: authStage == freezed
          ? _value.authStage
          : authStage // ignore: cast_nullable_to_non_nullable
              as AuthStage,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      ConfirmationCode confirmationCode,
      bool showErrorMessages,
      bool isSubmitting,
      AuthStage authStage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? confirmationCode = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authStage = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as ConfirmationCode,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authStage: authStage == freezed
          ? _value.authStage
          : authStage // ignore: cast_nullable_to_non_nullable
              as AuthStage,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.confirmationCode,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authStage,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final ConfirmationCode confirmationCode;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final AuthStage authStage;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, confirmationCode: $confirmationCode, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authStage: $authStage, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmationCode', confirmationCode))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('authStage', authStage))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmationCode, confirmationCode) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCode, confirmationCode)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authStage, authStage) ||
                const DeepCollectionEquality()
                    .equals(other.authStage, authStage)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmationCode) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authStage) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required EmailAddress emailAddress,
      required Password password,
      required ConfirmationCode confirmationCode,
      required bool showErrorMessages,
      required bool isSubmitting,
      required AuthStage authStage,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  ConfirmationCode get confirmationCode => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  AuthStage get authStage => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
