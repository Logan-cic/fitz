import 'package:fitz/screens/metodos_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
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
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Container(
                child: Text(
                  "FITZ",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.08,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5,
                    ),
                  ),
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
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.61),
              child: Container(
                child: Text(
                  "O próximo passo para uma vida saudável",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.1,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1.2,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.79),
              child: Container(
                child: Text(
                  "Transforme-se, conquiste seu melhor eu e viva com mais energia. Comece sua jornada fitness hoje!",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      color: Color(0xFF787878),
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.84),
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const MetodosLogin()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFC7E52F)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.1),
                        ),
                      ),
                    ),
                    child: Text(
                      "Comece agora",
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
