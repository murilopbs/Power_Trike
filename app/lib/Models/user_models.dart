import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:scoped_model/scoped_model.dart';
import '../Widgets/Canal1.dart';
import '../Widgets/Canal2.dart';
import '../Widgets/Canal3.dart';
import '../Widgets/Canal4.dart';
import '../Widgets/Inicial.dart';

class UserModel extends Model {
  late LoopPageController controlador_pagina = LoopPageController(
    scrollMode: LoopScrollMode.shortest,
    activationMode: LoopActivationMode.immediate
  );
  final List<Widget> list = [Inicial(), Canal1(), Canal2(), Canal3(), Canal4()];
  void mudaPagina(){
    controlador_pagina.jumpToPage(2);
  }
}