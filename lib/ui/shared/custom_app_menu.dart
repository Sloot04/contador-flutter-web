import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_services.dart';
import 'package:bases_web/ui/shared/custom_flat_buttom.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TableDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(children: [
        CustomFlatButton(
          text: 'Contador Sateful',
          // onPressed: () =>Navigator.pushNamed(context, '/sateful'),
          //onPressed: () => navigationService.navigateTo('/sateful'),
          onPressed: () => locator<NavigationService>().navigateTo('/sateful'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Contador Provider',
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Otra página',
          onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Stateful 100',
          onPressed: () => locator<NavigationService>().navigateTo('/sateful/100'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Provider 200',
          onPressed: () => locator<NavigationService>().navigateTo('/provider?q=200'),
          color: Colors.black,
        ),
      ]),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomFlatButton(
          text: 'Contador Sateful',
          onPressed: () => locator<NavigationService>().navigateTo('/sateful'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Contador Provider',
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Otra página',
          onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          color: Colors.black,
        ),
      ]),
    );
  }
}
