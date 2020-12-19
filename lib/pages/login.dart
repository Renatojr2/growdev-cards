import 'package:flutter/material.dart';

class LiginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialColor azulGrowdev = MaterialColor(
      Color.fromRGBO(0, 18, 50, 1).value,
      {
        50: Color.fromRGBO(43, 56, 91, .1),
        100: Color.fromRGBO(43, 56, 91, .2),
        200: Color.fromRGBO(43, 56, 91, .3),
        300: Color.fromRGBO(43, 56, 91, .4),
        400: Color.fromRGBO(43, 56, 91, .5),
        500: Color.fromRGBO(43, 56, 91, .6),
        600: Color.fromRGBO(43, 56, 91, .7),
        700: Color.fromRGBO(43, 56, 91, .8),
        800: Color.fromRGBO(43, 56, 91, .9),
        900: Color.fromRGBO(43, 56, 91, 1),
      },
    );

    Color laranjaGrowdev = Color.fromRGBO(225, 110, 14, 1);

    return Scaffold(
      backgroundColor: azulGrowdev,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: azulGrowdev.shade600,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 100,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Novo por aqui? ',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: 'Crie sua conta aqui',
                            style: TextStyle(
                              color: laranjaGrowdev,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Form(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: azulGrowdev.shade700,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(20),
                                hintText: 'E-mail',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: azulGrowdev.shade700,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                focusedBorder: InputBorder.none,
                                hintText: 'Passoword',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                suffixIcon: Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Container(
                                color: azulGrowdev.shade700,
                                child: Checkbox(
                                  fillColor: MaterialStateProperty.all(
                                      azulGrowdev.shade700),
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Mantenha-me conectado',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Builder(
                      builder: (ctx) {
                        return Container(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: laranjaGrowdev,
                            onPressed: () {},
                            child: Text(
                              'Entrar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
