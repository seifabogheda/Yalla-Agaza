// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../views/BookingPlace/bookingPlaceImports.dart';
import '../views/asked/askedScreen.dart';
import '../views/confirmation/ConfirmationImports.dart';
import '../views/flitering/filteringImports.dart';
import '../views/forgetPass/forgetImports.dart';
import '../views/home/homeImports.dart';
import '../views/login/LoginImports.dart';
import '../views/placeDetails/placeDetailsImports.dart';
import '../views/register/registerImports.dart';
import '../views/search/SearchImports.dart';
import '../views/searchPlaces/searchPlacesImports.dart';
import '../views/splash/splashScreen.dart';
import '../views/visaDetails/visaDetailsImports.dart';

class Routes {
  static const String splashView = '/';
  static const String login = '/Login';
  static const String register = '/Register';
  static const String forgetPassword = '/forget-password';
  static const String askedView = '/asked-view';
  static const String search = '/Search';
  static const String home = '/Home';
  static const String searchPlaces = '/search-places';
  static const String placeDetails = '/place-details';
  static const String bookingPlace = '/booking-place';
  static const String confirmation = '/Confirmation';
  static const String secondConfirmation = '/second-confirmation';
  static const String visaDetailsAddress = '/visa-details-address';
  static const String visaDetails = '/visa-details';
  static const String congratulations = '/Congratulations';
  static const String filtering = '/Filtering';
  static const String selectDays = '/select-days';
  static const String numberOfPeople = '/number-of-people';
  static const String perfered = '/Perfered';
  static const all = <String>{
    splashView,
    login,
    register,
    forgetPassword,
    askedView,
    search,
    home,
    searchPlaces,
    placeDetails,
    bookingPlace,
    confirmation,
    secondConfirmation,
    visaDetailsAddress,
    visaDetails,
    congratulations,
    filtering,
    selectDays,
    numberOfPeople,
    perfered,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.login, page: Login),
    RouteDef(Routes.register, page: Register),
    RouteDef(Routes.forgetPassword, page: ForgetPassword),
    RouteDef(Routes.askedView, page: AskedView),
    RouteDef(Routes.search, page: Search),
    RouteDef(Routes.home, page: Home),
    RouteDef(Routes.searchPlaces, page: SearchPlaces),
    RouteDef(Routes.placeDetails, page: PlaceDetails),
    RouteDef(Routes.bookingPlace, page: BookingPlace),
    RouteDef(Routes.confirmation, page: Confirmation),
    RouteDef(Routes.secondConfirmation, page: SecondConfirmation),
    RouteDef(Routes.visaDetailsAddress, page: VisaDetailsAddress),
    RouteDef(Routes.visaDetails, page: VisaDetails),
    RouteDef(Routes.congratulations, page: Congratulations),
    RouteDef(Routes.filtering, page: Filtering),
    RouteDef(Routes.selectDays, page: SelectDays),
    RouteDef(Routes.numberOfPeople, page: NumberOfPeople),
    RouteDef(Routes.perfered, page: Perfered),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashView(),
        settings: data,
      );
    },
    Login: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Login(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    Register: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Register(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    ForgetPassword: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ForgetPassword(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    AskedView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AskedView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    Search: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Search(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    Home: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Home(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    SearchPlaces: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SearchPlaces(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    PlaceDetails: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => PlaceDetails(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    BookingPlace: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => BookingPlace(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    Confirmation: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Confirmation(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    SecondConfirmation: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SecondConfirmation(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    VisaDetailsAddress: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            VisaDetailsAddress(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    VisaDetails: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => VisaDetails(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    Congratulations: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            Congratulations(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    Filtering: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Filtering(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    SelectDays: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SelectDays(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    NumberOfPeople: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            NumberOfPeople(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
    Perfered: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Perfered(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      );
    },
  };
}
