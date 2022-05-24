import 'package:bases_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('404',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
          const SizedBox(height: 10.0),
          const Text('No se encontró la página',
              style: TextStyle(fontSize: 20.0)),
          const SizedBox(height: 5.0),
          CustomFlatButton(
            text: 'Regresar',
            onPressed: () => Navigator.pushNamed(context, '/sateful'),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
