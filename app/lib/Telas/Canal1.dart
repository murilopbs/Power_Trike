import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:power_trike_pctec/Widgets/ValoresCanais.dart';
import 'package:scoped_model/scoped_model.dart';
import '../Classes/PageControllerSingleton.dart';
import '../Models/user_models.dart';

class Canal1 extends StatefulWidget {
  const Canal1({super.key});

  @override
  State<Canal1> createState() => _Canal1State();
}

class _Canal1State extends State<Canal1> {
  LoopPageController controlador_pagina = LoopPageControllerSingleton().instance;
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model){
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Canal 1"),
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
    );
  }
}
