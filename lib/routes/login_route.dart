import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/login_screen.dart';

class LoginRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) => LoginScreen(
    onSingUpClick: () => nuvigator.open('sing-up'),
    onHomeClick: () => nuvigator.open('home'),
  );

  @override
  String get path => 'login';

  @override
  ScreenType get screenType => materialScreenType;
  
}