import 'package:flutter/material.dart';
import 'package:menu_restaurante/views/wcWidgets.dart';
import 'package:menu_restaurante/views/loginPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
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
                  const Spacer(flex: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/burger.png",
                        height: height * 0.125,
                        width: height * 0.125,
                      ),
                      Image.asset(
                        "assets/pizza.png",
                        height: height * 0.125,
                        width: height * 0.125,
                      ),
                      Image.asset(
                        "assets/whiskey.png",
                        height: height * 0.125,
                        width: height * 0.125,
                      ),
                      Image.asset(
                        "assets/coctel.png",
                        height: height * 0.125,
                        width: height * 0.125,
                      ),
                    ],
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'BIENVENIDOS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFFD6F0CC),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Al restaurante bar neón más grande de Medellín.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFD6F0CC),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(flex: 1),
                  Image.asset(
                    "assets/neon.png",
                    height: height * 0.125,
                    width: height * 0.125,
                  ),
                  const Spacer(flex: 1),
                  button(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginPage();
                          },
                        ),
                      );
                    },
                    const Color(0xFF000000),
                    "Log In",
                    180,
                    40,
                  ),
                  const Spacer(flex: 1),
                  //menuButton(),
                  const Spacer(flex: 1),
                  //bookingButton(),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
