import 'package:fitz/screens/metodos_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimeiraTela extends StatefulWidget {
  const PrimeiraTela({super.key});

  @override
  State<PrimeiraTela> createState() => _PrimeiraTela();
}

class _PrimeiraTela extends State<PrimeiraTela> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
              SingleChildScrollView(
                child: Column(
                  children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 0.08,
                          ),
                          Container(
                              height: size.height * 0.08,
                          child: Center(
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
                      ],
                      ),
                    SizedBox(
                      height: size.height * 0.49,
                    ),
                    Container(
                    child: Text(
                      "O próximo passo para uma vida saudável",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1.2,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                      
                Container(
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
                  SizedBox(
                    height: size.height * 0.03
                  ),
                Center(
                  child:  Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => MetodosLogin()));
                        },
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
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}