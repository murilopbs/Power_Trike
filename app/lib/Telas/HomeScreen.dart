import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:power_trike_pctec/Models/user_models.dart';
import 'package:scoped_model/scoped_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final LoopPageController controlador_pagina = LoopPageController(
    scrollMode: LoopScrollMode.shortest,
    activationMode: LoopActivationMode.immediate
);

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          model.controlador_pagina = LoopPageController(
              scrollMode: LoopScrollMode.shortest,
              activationMode: LoopActivationMode.immediate
          );
          return LoopPageView.builder(
              itemCount: model.list.length,
              controller: model.controlador_pagina,
              itemBuilder: (context, index){
                return model.list[index];
              }
          );
        }
      )
    );
  }
}
