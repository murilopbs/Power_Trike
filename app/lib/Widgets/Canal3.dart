import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../Models/user_models.dart';

class Canal3 extends StatefulWidget {
  const Canal3({super.key});

  @override
  State<Canal3> createState() => _Canal3State();
}

double amplitude = 0;
const List<String> referencia = ["0.1", "0.5", "1", "1.5", "2", "5", "10"];
double referenciaAmplitude = 1;
String amplitudeSelecionada = '1';

class _Canal3State extends State<Canal3> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Canal 3"),
            ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Frequência:"),
                        Text("$amplitude Hz"),
                        const SizedBox(width: 5,),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: (){
                            setState(() {
                              amplitude = amplitude + referenciaAmplitude;
                            });
                          },
                        ),
                        const SizedBox(width: 5,),
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: (){
                            double suporte = amplitude;
                            setState(() {
                              amplitude = amplitude - referenciaAmplitude;
                            });
                            if(amplitude < 0){
                              const snackBar = SnackBar(
                                content: Text('O valor não pode ser menor que 0!'),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              amplitude = suporte;
                            }
                          },
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                hint: Text(
                                  amplitudeSelecionada,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).hintColor,
                                  ),
                                ),
                                items: referencia
                                    .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                                    .toList(),
                                value: amplitudeSelecionada,
                                onChanged: (String? value) {
                                  setState(() {
                                    amplitudeSelecionada = value!;
                                    referenciaAmplitude = double.parse(amplitudeSelecionada);
                                  });
                                },
                                buttonStyleData: const ButtonStyleData(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData: const MenuItemStyleData(
                                  height: 40,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
          );
        }
    );
  }
}
