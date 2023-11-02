import 'package:fitz/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
          // Container(
          //   child: Lottie.network(
          //     'https://lottie.host/9ce9d2a2-e121-4ff3-8714-4beb5104f6a6/7dipOndx4D.json',
          //       repeat: true,
          //       frameRate: FrameRate(60),
          //       fit: BoxFit.contain,
          //     ),
          //   ),
          Container(
            child: Lottie.asset("assets/images/gym.json",
              frameRate: FrameRate(60),
              fit: BoxFit.contain,
              repeat: true,
            ),
          ),
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
