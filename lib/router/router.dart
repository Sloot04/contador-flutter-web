import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/counter_view.dart';
import '../ui/views/counter_provider_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
     '/sateful',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionType: TransitionType.fadeIn,
    );
  }

  // Handlers
  static final Handler _counterHandler =
      Handler(handlerFunc: (context, params) => const CounterView());

  static final Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) => const CounterProviderView());
}
