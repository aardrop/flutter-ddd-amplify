import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_ddd_amplify/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        log('authCheckRequested');
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) {
            return const AuthState.authenticated();
          },
        );
      },
      signedOut: (e) async* {
        log('signOut');
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
