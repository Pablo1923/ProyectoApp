import 'package:flutter/material.dart';
import 'package:menu_restaurante/views/wcWidgets.dart';
import 'package:menu_restaurante/views/welcomePage.dart';

class bookingPage extends StatelessWidget {
  const bookingPage({Key? key}) : super(key: key);

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
                      Image.asset(
                        "assets/neon2.png",
                        height: height * 0.125,
                        width: height * 0.125,
                      ),
                      const Spacer(flex: 1),
                      const Text(
                        'Ingrese su nombre',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFD6F0CC),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),

                      // Aquí es donde se van a poner las sedes
                      const Text(
                        'Seleccione la sede en la que desea reservar',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFD6F0CC),
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const Spacer(flex: 1),

                      //Aquí se ponen las horas
                      const Text(
                        'Ingrese la hora de su reserva',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFD6F0CC),
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                        "Realizar reserva",
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
                      )
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
