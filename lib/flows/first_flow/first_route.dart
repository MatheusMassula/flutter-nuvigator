import 'package:flutter/src/widgets/framework.dart';
import 'package:nested_nuvigators/flows/first_flow/screens/one_screen.dart';
import 'package:nested_nuvigators/flows/first_flow/screens/three_screen.dart';
import 'package:nested_nuvigators/flows/first_flow/screens/two_screen.dart';
import 'package:nuvigator/next.dart';

class FirstFlowRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return Nuvigator(
      router: _FirstFlowRouter(),
    );
  }

  @override
  String get path => 'first-flow';

  @override
  ScreenType get screenType => materialScreenType;
  
}

class _FirstFlowRouter extends NuRouter {
  @override
  String get initialRoute => 'first-flow/screenOne';

  @override
  List<NuRoute<NuRouter, Object, Object>> get registerRoutes => [
    NuRouteBuilder(
      path: 'first-flow/screenOne',
      builder: (_, __, ___) => OneScreen(
        onNext: () => nuvigator.open('first-flow/screenTwo'),
        onClose: () => nuvigator.closeFlow(),
      ),
      screenType: materialScreenType
    ),
    NuRouteBuilder(
      path: 'first-flow/screenTwo',
      builder: (_, __, ___) => TwoScreen(
        onNext: () => nuvigator.open('first-flow/screenThree'),
        onClose: () => nuvigator.closeFlow(),
      ),
      screenType: materialScreenType
    ),
    NuRouteBuilder(
      path: 'first-flow/screenThree',
      builder: (_, __, ___) => ThreeScreen(
        onNext: () => nuvigator.open('second-flow'),
        onClose: () => nuvigator.closeFlow(),
      ),
      screenType: materialScreenType
    ),
  ];
}