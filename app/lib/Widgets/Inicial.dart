import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../Models/user_models.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: const Text("Canal 1"),
                      onPressed: (){
                        model.controlador_pagina.jumpToPage(1);
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Canal 2"),
                      onPressed: (){
                        model.mudaPagina();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text("Canal 3"),
                      onPressed: (){
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          model.controlador_pagina.jumpToPage(3);
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text("Canal 4"),
                      onPressed: (){
                        model.controlador_pagina.jumpToPage(4);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }
}
