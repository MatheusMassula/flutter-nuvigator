import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/home_screen.dart';

class HomeRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) => HomeScreen(
    onProducerDetailsClick: (parameters) => nuvigator.open(
      'producer-details', parameters: parameters
    )
  );

  @override
  String get path => 'home';

  @override
  ScreenType get screenType => materialScreenType;
  
}