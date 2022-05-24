import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            CustomAppMenu(),
            Spacer(),
            //TODO: view
            Spacer(),
          ],
        ),
      ),
    );
  }
}
