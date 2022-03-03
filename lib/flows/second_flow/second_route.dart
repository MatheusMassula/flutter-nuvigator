import 'package:flutter/src/widgets/framework.dart';
import 'package:nested_nuvigators/flows/second_flow/screens/display_screen.dart';
import 'package:nested_nuvigators/flows/second_flow/screens/input_screen.dart';
import 'package:nuvigator/next.dart';

class SecondFlowRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return Nuvigator(
      router: _SecondFlowRouter(),
    );
  }

  @override
  String get path => 'second-flow';

  @override
  ScreenType get screenType => materialScreenType;
  
}

class _SecondFlowRouter extends NuRouter {
  @override
  String get initialRoute => 'second-flow/input';

  @override
  List<NuRoute<NuRouter, Object, Object>> get registerRoutes => [
    NuRouteBuilder(
      path: 'second-flow/input',
      builder: (_, __, ___) => InputScreen(
        onNext: (text) => nuvigator.open(
          'second-flow/display',
          parameters: { 'text': text }
        ),
      ),
      screenType: materialScreenType
    ),
    NuRouteBuilder(
      path: 'second-flow/display',
      builder: (_, __, settings) => DisplayScreen(
        onClose: () => nuvigator.closeFlow(),
        text: settings.rawParameters['text'],
      ),
      screenType: materialScreenType
    ),
  ];
}