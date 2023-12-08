import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../Models/user_models.dart';
import '../Widgets/ValoresCanais.dart';

class Canal4 extends StatefulWidget {
  const Canal4({super.key});

  @override
  State<Canal4> createState() => _Canal4State();
}

double amplitude = 0;
const List<String> referencia = ["0.1", "0.5", "1", "1.5", "2", "5", "10"];
double referenciaAmplitude = 1;
String amplitudeSelecionada = '1';

class _Canal4State extends State<Canal4> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Canal 4"),
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