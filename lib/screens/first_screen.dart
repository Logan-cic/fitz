import 'package:flutter/material.dart';

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
            child: Container(child: Text("FITZ", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)))
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
              padding: const EdgeInsets.only(top: 488),
              child: Container(
                child: Text(
                  "O próximo passo para uma vida saudável",
                  style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          
          Padding(
              padding: const EdgeInsets.only(top: 660),
              child: Container(
                child: Text(
                  "Transforme-se, conquiste seu melhor eu e viva com mais energia. Comece sua jornada fitness hoje!",
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
                  onPressed: () {
                    
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFC7E52F)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), 
                      ),
                    ),
                  ),
                  child: Text("Comece agora", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
