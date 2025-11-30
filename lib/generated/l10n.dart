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

  /// `en`
  String get locale {
    return Intl.message(
      'en',
      name: 'locale',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get thisFieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'thisFieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get pleaseEnterValidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'pleaseEnterValidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email`
  String get enterEmail {
    return Intl.message(
      'Enter Email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter your phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `The email address you have entered is invalid`
  String get emailValidation {
    return Intl.message(
      'The email address you have entered is invalid',
      name: 'emailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your password must be at least 8 characters`
  String get passwordTooShort {
    return Intl.message(
      'Your password must be at least 8 characters',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `By pressing continue, you are agreeing to`
  String get byPressingContinue {
    return Intl.message(
      'By pressing continue, you are agreeing to',
      name: 'byPressingContinue',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Powered`
  String get powered {
    return Intl.message(
      'Powered',
      name: 'powered',
      desc: '',
      args: [],
    );
  }

  /// `By`
  String get by {
    return Intl.message(
      'By',
      name: 'by',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade`
  String get upgrade {
    return Intl.message(
      'Upgrade',
      name: 'upgrade',
      desc: '',
      args: [],
    );
  }

  /// `Attempts`
  String get attempts {
    return Intl.message(
      'Attempts',
      name: 'attempts',
      desc: '',
      args: [],
    );
  }

  /// `Reminders`
  String get reminders {
    return Intl.message(
      'Reminders',
      name: 'reminders',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade plans`
  String get upgradePlans {
    return Intl.message(
      'Upgrade plans',
      name: 'upgradePlans',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Finished`
  String get finished {
    return Intl.message(
      'Finished',
      name: 'finished',
      desc: '',
      args: [],
    );
  }

  /// `Finished reminders`
  String get finishedReminders {
    return Intl.message(
      'Finished reminders',
      name: 'finishedReminders',
      desc: '',
      args: [],
    );
  }

  /// `Coming reminders`
  String get comingReminders {
    return Intl.message(
      'Coming reminders',
      name: 'comingReminders',
      desc: '',
      args: [],
    );
  }

  /// `Add new category`
  String get addNewCategory {
    return Intl.message(
      'Add new category',
      name: 'addNewCategory',
      desc: '',
      args: [],
    );
  }

  /// `Category name`
  String get categoryName {
    return Intl.message(
      'Category name',
      name: 'categoryName',
      desc: '',
      args: [],
    );
  }

  /// `Enter category name`
  String get enterCategoryName {
    return Intl.message(
      'Enter category name',
      name: 'enterCategoryName',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `block`
  String get block {
    return Intl.message(
      'block',
      name: 'block',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Add new`
  String get addNew {
    return Intl.message(
      'Add new',
      name: 'addNew',
      desc: '',
      args: [],
    );
  }

  /// `scanQr`
  String get scanQr {
    return Intl.message(
      'scanQr',
      name: 'scanQr',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `enter manunally`
  String get enterManually {
    return Intl.message(
      'enter manunally',
      name: 'enterManually',
      desc: '',
      args: [],
    );
  }

  /// `Add New Rental`
  String get addNewRental {
    return Intl.message(
      'Add New Rental',
      name: 'addNewRental',
      desc: '',
      args: [],
    );
  }

  /// `choose rental type`
  String get chooseRentalType {
    return Intl.message(
      'choose rental type',
      name: 'chooseRentalType',
      desc: '',
      args: [],
    );
  }

  /// `car`
  String get car {
    return Intl.message(
      'car',
      name: 'car',
      desc: '',
      args: [],
    );
  }

  /// `choose home location`
  String get chooseHomeLocation {
    return Intl.message(
      'choose home location',
      name: 'chooseHomeLocation',
      desc: '',
      args: [],
    );
  }

  /// `cairo`
  String get cairo {
    return Intl.message(
      'cairo',
      name: 'cairo',
      desc: '',
      args: [],
    );
  }

  /// `giza`
  String get giza {
    return Intl.message(
      'giza',
      name: 'giza',
      desc: '',
      args: [],
    );
  }

  /// `alexandria`
  String get alexandria {
    return Intl.message(
      'alexandria',
      name: 'alexandria',
      desc: '',
      args: [],
    );
  }

  /// `choose car type`
  String get chooseCarType {
    return Intl.message(
      'choose car type',
      name: 'chooseCarType',
      desc: '',
      args: [],
    );
  }

  /// `choose rental date`
  String get chooseRentalDate {
    return Intl.message(
      'choose rental date',
      name: 'chooseRentalDate',
      desc: '',
      args: [],
    );
  }

  /// `rental date`
  String get rentalDate {
    return Intl.message(
      'rental date',
      name: 'rentalDate',
      desc: '',
      args: [],
    );
  }

  /// `choose rental time`
  String get chooseRentalTime {
    return Intl.message(
      'choose rental time',
      name: 'chooseRentalTime',
      desc: '',
      args: [],
    );
  }

  /// `rental time`
  String get rentalTime {
    return Intl.message(
      'rental time',
      name: 'rentalTime',
      desc: '',
      args: [],
    );
  }

  /// `save rental`
  String get saveRental {
    return Intl.message(
      'save rental',
      name: 'saveRental',
      desc: '',
      args: [],
    );
  }

  /// `rental saved successfully`
  String get rentalSavedSuccessfully {
    return Intl.message(
      'rental saved successfully',
      name: 'rentalSavedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `new rental`
  String get newRental {
    return Intl.message(
      'new rental',
      name: 'newRental',
      desc: '',
      args: [],
    );
  }

  /// `reminder Rental`
  String get reminderRental {
    return Intl.message(
      'reminder Rental',
      name: 'reminderRental',
      desc: '',
      args: [],
    );
  }

  /// `you have rental today`
  String get reminder {
    return Intl.message(
      'you have rental today',
      name: 'reminder',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
