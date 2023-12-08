import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:loop_page_view/loop_page_view.dart';

import '../Classes/PageControllerSingleton.dart';
import '../Widgets/ValoresCanais.dart';

class Canal2 extends StatefulWidget {
  const Canal2({super.key});

  @override
  State<Canal2> createState() => _Canal2State();
}

double amplitude = 0;
const List<String> referencia = ["0.1", "0.5", "1", "1.5", "2", "5", "10"];
double referenciaAmplitude = 1;
String amplitudeSelecionada = '1';

class _Canal2State extends State<Canal2> {
  LoopPageController controlador_pagina = LoopPageControllerSingleton().instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Canal 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Expanded(child: ValoresCanais()),
          ],
        ),
      ),
    );
  }
}
