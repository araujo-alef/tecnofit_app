// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get name {
    return Intl.message(
      'name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `confirm`
  String get confirm {
    return Intl.message(
      'confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `remenber`
  String get remember {
    return Intl.message(
      'remenber',
      name: 'remember',
      desc: '',
      args: [],
    );
  }

  /// `me`
  String get me {
    return Intl.message(
      'me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `forgout`
  String get forgout {
    return Intl.message(
      'forgout',
      name: 'forgout',
      desc: '',
      args: [],
    );
  }

  /// `don't`
  String get dont {
    return Intl.message(
      'don\'t',
      name: 'dont',
      desc: '',
      args: [],
    );
  }

  /// `have`
  String get have {
    return Intl.message(
      'have',
      name: 'have',
      desc: '',
      args: [],
    );
  }

  /// `an`
  String get an {
    return Intl.message(
      'an',
      name: 'an',
      desc: '',
      args: [],
    );
  }

  /// `acont`
  String get acont {
    return Intl.message(
      'acont',
      name: 'acont',
      desc: '',
      args: [],
    );
  }

  /// `register`
  String get register {
    return Intl.message(
      'register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `sign up`
  String get signUp {
    return Intl.message(
      'sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `now`
  String get now {
    return Intl.message(
      'now',
      name: 'now',
      desc: '',
      args: [],
    );
  }

  /// `already`
  String get already {
    return Intl.message(
      'already',
      name: 'already',
      desc: '',
      args: [],
    );
  }

  /// `my`
  String get my_s {
    return Intl.message(
      'my',
      name: 'my_s',
      desc: '',
      args: [],
    );
  }

  /// `my`
  String get my {
    return Intl.message(
      'my',
      name: 'my',
      desc: '',
      args: [],
    );
  }

  /// `here`
  String get here {
    return Intl.message(
      'here',
      name: 'here',
      desc: '',
      args: [],
    );
  }

  /// `will be`
  String get will_be {
    return Intl.message(
      'will be',
      name: 'will_be',
      desc: '',
      args: [],
    );
  }

  /// `your`
  String get your_s {
    return Intl.message(
      'your',
      name: 'your_s',
      desc: '',
      args: [],
    );
  }

  /// `next`
  String get next_s {
    return Intl.message(
      'next',
      name: 'next_s',
      desc: '',
      args: [],
    );
  }

  /// `activities`
  String get activities {
    return Intl.message(
      'activities',
      name: 'activities',
      desc: '',
      args: [],
    );
  }

  /// `exit`
  String get exit {
    return Intl.message(
      'exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
