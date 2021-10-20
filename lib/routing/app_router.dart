import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_books_test/app/detail/detail_page.dart';
import 'package:google_books_test/app/home/home_page.dart';
import 'package:google_books_test/app/sign_in/email_password_signin/email_password_sign_in_page.dart';
import 'package:google_books_test/models/book.dart';

class AppRoutes {
  static const emailPasswordSignInPage = '/email-password-sign-in-page';
  static const detailsPage = '/details-page';
  static const favouritesPage = '/favourites-page';
  static const homePage = '/home-page';

}

class AppRouter {
  static Route<dynamic>? onGenerateRoute(
      RouteSettings settings, FirebaseAuth firebaseAuth) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute<dynamic>(builder: (_) => const HomePage());

      case AppRoutes.emailPasswordSignInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => EmailPasswordSignInPage.withFirebaseAuth(firebaseAuth,
              onSignedIn: args as void Function()),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.detailsPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => DetailPage(book: args as Book),
          settings: settings,
          fullscreenDialog: true,
        );

      default:
        return null;
    }
  }
}

