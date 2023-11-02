import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
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
              )
            ),
          ),)),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(1),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 496),
            child: Container(
              child: Text(
                "O próximo passo para uma vida saudável",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 40, // Tamanho da fonte
                    fontWeight: FontWeight.w600, // Peso da fonte
                    fontStyle: FontStyle.normal,
                    letterSpacing:
                        1.2, // Espaçamento entre caracteres (opcional)
                    height: 1.2, // Espaçamento entre linhas (opcional)
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640),
            child: Container(
              child: Text(
                "Transforme-se, conquiste seu melhor eu e viva com mais energia. Comece sua jornada fitness hoje!",
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 732),
              child: Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFC7E52F)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: Text(
                    "Comece agora",
                    style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
