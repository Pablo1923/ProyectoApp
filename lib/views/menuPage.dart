import 'package:flutter/material.dart';
import 'package:menu_restaurante/views/wcWidgets.dart';
import 'package:menu_restaurante/views/welcomePage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String? pf = 'Seleccionar';
  String? ent = 'Seleccionar';
  String? beb = 'Seleccionar';
  String? pos = 'Seleccionar';
  @override
  Widget build(BuildContext context) {
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

                      Container(
                        color: Color(
                            0xFF000000), //Este te da el color del fondo que necesitabas
                        child: DropdownButton<String>(
                          value:
                              ent, //Aqui debes poner una variable que cambiará en la función
                          items: <String>[
                            'Seleccionar',
                            'Papas toci-queso',
                            'Patacones guacamólicos',
                            'Yuquitas chongo',
                            'Quesuditos',
                            'Pan ajudos'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF37FA0F),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              ent = newValue;
                            });
                          },
                          dropdownColor: const Color(
                              0xFF332E30), //Este te da color de fondo en la lista de selección
                        ),
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

                      Container(
                        color: Color(0xFF000000),
                        child: DropdownButton<String>(
                          value: pf,
                          items: <String>[
                            'Seleccionar',
                            'Delirio burguer',
                            'Tacoticos',
                            'Perritosky',
                            'Pizzorinny',
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFFFF02B0),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              pf = newValue;
                            });
                          },
                          dropdownColor: const Color(0xFF332E30),
                        ),
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

                      Container(
                        color: Color(
                            0xFF000000), //Este te da el color del fondo que necesitabas
                        child: DropdownButton<String>(
                          value:
                              beb, //Aqui debes poner una variable que cambiará en la función
                          items: <String>[
                            'Seleccionar',
                            'Gaseosa',
                            'Jugo en agua',
                            'Jugo en leche',
                            'Malteada',
                            'Bebida caliente'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFFFFE919),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              beb = newValue;
                            });
                          },
                          dropdownColor: const Color(0xFF332E30),
                        ),
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
                      Container(
                        color: Color(
                            0xFF000000), //Este te da el color del fondo que necesitabas
                        child: DropdownButton<String>(
                          value:
                              pos, //Aqui debes poner una variable que cambiará en la función
                          items: <String>[
                            'Seleccionar',
                            'Postre milongo',
                            'Flan de leche',
                            'Chocovolvcán',
                            'Frambuesito',
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF0009E8),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              pos = newValue;
                            });
                          },
                          dropdownColor: const Color(
                              0xFF332E30), //Este te da color de fondo en la lista de selección
                        ),
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
    );
  }
}
