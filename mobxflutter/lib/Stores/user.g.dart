// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  Computed<int?>? _$usernameLenghtComputed;

  @override
  int? get usernameLenght =>
      (_$usernameLenghtComputed ??= Computed<int?>(() => super.usernameLenght,
              name: '_UserStore.usernameLenght'))
          .value;

  final _$userAtom = Atom(name: '_UserStore.user');

  @override
  User? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$attemptsAtom = Atom(name: '_UserStore.attempts');

  @override
  int get attempts {
    _$attemptsAtom.reportRead();
    return super.attempts;
  }

  @override
  set attempts(int value) {
    _$attemptsAtom.reportWrite(value, super.attempts, () {
      super.attempts = value;
    });
  }

  final _$isLoggedInAtom = Atom(name: '_UserStore.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  final _$loginInProgressAtom = Atom(name: '_UserStore.loginInProgress');

  @override
  bool get loginInProgress {
    _$loginInProgressAtom.reportRead();
    return super.loginInProgress;
  }

  @override
  set loginInProgress(bool value) {
    _$loginInProgressAtom.reportWrite(value, super.loginInProgress, () {
      super.loginInProgress = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_UserStore.login');

  @override
  Future<void> login({required String username, required String password}) {
    return _$loginAsyncAction
        .run(() => super.login(username: username, password: password));
  }

  @override
  String toString() {
    return '''
user: ${user},
attempts: ${attempts},
isLoggedIn: ${isLoggedIn},
loginInProgress: ${loginInProgress},
usernameLenght: ${usernameLenght}
    ''';
  }
}
