import 'package:bases_web/services/navigation_services.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_buttom.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(children: [
        CustomFlatButton(
          text: 'Contador Sateful',
          // onPressed: () =>Navigator.pushNamed(context, '/sateful'),
          onPressed: () => navigationService.navigateTo('/sateful'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Contador Provider',
          onPressed: () => navigationService.navigateTo('/provider'),
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          text: 'Otra página',
          onPressed: () => navigationService.navigateTo('/abc123'),
          color: Colors.black,
        ),
      ]),
    );
  }
}
