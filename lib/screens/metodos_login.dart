import 'package:fitz/screens/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MetodosLogin extends StatefulWidget {
  const MetodosLogin({Key? key}) : super(key: key);

  @override
  State<MetodosLogin> createState() => _MetodosLoginState();
}

class _MetodosLoginState extends State<MetodosLogin> {
  final List<Map<String, dynamic>> botoes = [
    {
      'text': 'Entrar com o Facebook',
      'method': 'facebook',
      'color': Color(0xFFDAFC34),
    },
    {
      'text': 'Entrar com o Google',
      'method': 'google',
      'color': Color(0xFFDAFC34),
    },
    {
      'text': 'Entrar com a Apple',
      'method': 'apple',
      'color': Color(0xFFDAFC34),
    },
    {
      'text': 'Entrar com e-mail e senha',
      'method': 'email',
      'color': Color(0xFFDAFC34),
    }
  ];

  IconData iconesParaOsBotoes(String icone) {
    switch (icone) {
      case 'facebook':
        return Icons.facebook;
      case 'google':
        return Icons.favorite;
      case 'apple':
        return Icons.settings;
      case 'email':
        return Icons.mail;
      default:
        return Icons.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 20),
            child: Container(
              child: Text(
                "FITZ",
                style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20),
            child: Container(
              child: Text(
                "Vamos Começar!",
                style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 20),
            child: Container(
              child: Text(
                "Crie ou acesse uma conta para registrarmos seus treinos e exibir dados sobre sua evolução.",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 20),
            child: Container(
              child: Text(
                "Crie ou acesse uma conta para registrarmos seus treinos e exibir dados sobre sua evolução.",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220.0),
            child: Text(
              "Escolha um método para criar ou acessar conta",
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var data in botoes)
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 56.0,
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              if (data['method'] == 'email') {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => PaginaDeLogin(),
                                  ),
                                );
                              }
                            },
                            icon: Icon(
                              iconesParaOsBotoes(data['method']),
                              color: Colors.black,
                            ),
                            label: Text(
                              data['text'],
                              style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18)),
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 30.0),
                              backgroundColor: data['color'],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 740.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "Ao criar uma conta no aplicativo, você concorda com nossos ",
                  ),
                  TextSpan(
                    text: "Termos de Uso e Privacidade.",
                    style: TextStyle(
                      color: Color(0xFF787878),
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
