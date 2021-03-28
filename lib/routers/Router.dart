import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:yalla_agaza/views/BookingPlace/bookingPlaceImports.dart';
import 'package:yalla_agaza/views/asked/askedScreen.dart';
import 'package:yalla_agaza/views/confirmation/ConfirmationImports.dart';
import 'package:yalla_agaza/views/flitering/filteringImports.dart';
import 'package:yalla_agaza/views/forgetPass/forgetImports.dart';
import 'package:yalla_agaza/views/home/homeImports.dart';
import 'package:yalla_agaza/views/placeDetails/placeDetailsImports.dart';
import 'package:yalla_agaza/views/search/SearchImports.dart';
import 'package:yalla_agaza/views/login/LoginImports.dart';
import 'package:yalla_agaza/views/register/registerImports.dart';
import 'package:yalla_agaza/views/searchPlaces/searchPlacesImports.dart';
import 'package:yalla_agaza/views/splash/splashScreen.dart';
import 'package:yalla_agaza/views/visaDetails/visaDetailsImports.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashView, initial: true),
    CustomRoute(page: Login, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: Register, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: ForgetPassword, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: AskedView, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: Search, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: Home, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: SearchPlaces, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: PlaceDetails, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: BookingPlace, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: Confirmation, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: SecondConfirmation, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: VisaDetailsAddress, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: VisaDetails, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: Congratulations, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: Filtering, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: SelectDays, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: NumberOfPeople, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(page: Perfered, transitionsBuilder: TransitionsBuilders.slideRightWithFade),
  ]
)

class $AppRouter{

}