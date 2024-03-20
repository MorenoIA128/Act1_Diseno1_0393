import 'package:flutter/material.dart';
import 'package:moreno0393/pantallas0393/panel0393/panel_pantalla0393.dart';

void main() => runApp(const MiAppInovatech0393());

class MiAppInovatech0393 extends StatelessWidget {
  const MiAppInovatech0393({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Inovatech Irvin Moreno0393",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const PanelPantalla0393(),
    );
  }
}
