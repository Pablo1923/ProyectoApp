// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:menu_restaurante/views/wcWidgets.dart';
import 'package:menu_restaurante/views/welcomePage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listaDeOpciones = <String>["A", "B", "C", "D", "E", "F", "G"];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Center(
          child: new Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.blue.shade200,
            ),
            child: Container(
              width: width * 0.95,
              height: height * 0.95,
              decoration: BoxDecoration(
                color: const Color(0xFF000000),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: const Color(0xFF1EFC01),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: const Color(0xFF0159FC),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF000000),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: const Color(0xFFFF02D5),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF000000),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: const Color(0xFFFAED27),
                      ),
                    ),
                    child: Column(
                      children: [
                        //Aquí es donde se ponen todos los objetos

                        Image.asset(
                          "assets/neon2.png",
                          height: height * 0.125,
                          width: height * 0.125,
                        ),

                        const Spacer(flex: 1),
                        const Text(
                          'Ingrese entrada',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFD6F0CC),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        new DropdownButton<String>(
                          items: <String>[
                            'Papas toci-queso',
                            'Patacones guacamólicos',
                            'Yuquitas chongo',
                            'Quesuditos'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),

                        const Spacer(flex: 1),
                        const Text(
                          'Ingrese plato fuerte',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFD6F0CC),
                          ),
                          textAlign: TextAlign.center,
                        ),

                        new DropdownButton<String>(
                          items: <String>[
                            'Hamburguesa',
                            'Pizza',
                            'Perro caliente',
                            'Tacos'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),

                        const Spacer(flex: 1),
                        const Text(
                          'Ingrese bebida',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFD6F0CC),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        const Text(
                          'Ingrese postre',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFD6F0CC),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        const Spacer(flex: 1),
                        button(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const WelcomePage();
                                },
                              ),
                            );
                          },
                          const Color(0xFF000000),
                          "Hacer pedido",
                          180,
                          40,
                        ),
                        button(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const WelcomePage();
                                },
                              ),
                            );
                          },
                          const Color(0xFF000000),
                          "Volver",
                          180,
                          40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
