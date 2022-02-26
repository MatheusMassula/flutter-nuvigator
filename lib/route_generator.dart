import 'package:flutter/material.dart';
import 'package:proj/models/package_model.dart';
import 'package:proj/models/producer_model.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/login_screen.dart';
import 'package:proj/screens/package_details_screen.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/producer_details_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'package:proj/screens/singup_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (context) => HomeScreen());
        break;

      case 'login':
        return MaterialPageRoute(builder: (context) => LoginScreen());
        break;

      case 'sing-up':
        return MaterialPageRoute(builder: (context) => SingupScreen());
        break;

      case 'favorites':
        return MaterialPageRoute(builder: (context) => FavoritesScreen());
        break;
      
      case 'profile':
        return MaterialPageRoute(builder: (context) => ProfileScreen());
        break;
      
      case 'payment':
        return MaterialPageRoute(builder: (context) => PaymentScreen());
        break;
      
      case 'producer-details':
        if (args is Producer) {
          return MaterialPageRoute(builder: (context) => ProducerDetailsScreen(producer: args));
        }
        return _errorRoute();
        break;
      
      case 'package-details':
        if (args is Map) { // TODO: To me this could be improved by checking if the map constains the keys and if the values corresponds what is expected
          return MaterialPageRoute(builder: (context) => PackageDetailsScreen(
            package: args['package'],
            producer: args['producer']
          ));
        }
        return _errorRoute();
        break;

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Erro'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Rota não encontrada'),
        ),
      );
    });
  }
}