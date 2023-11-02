import 'package:fitz/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const FirstScreen()
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
        overlays: SystemUiOverlay.values
      );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFC7E52F)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "FITZ", 
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 64.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.5,
              )
            ),
          ),
        ],
      ),
    ));
  }
}
