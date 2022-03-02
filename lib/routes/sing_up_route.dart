import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/singup_screen.dart';

class SingUpRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) => SingupScreen(
    onLoginClick: () => nuvigator.open('login')
  );

  @override
  String get path => 'sing-up';

  @override
  ScreenType get screenType => materialScreenType;
  
}