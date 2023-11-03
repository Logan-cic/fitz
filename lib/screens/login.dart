import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaDeLogin extends StatefulWidget {
  const PaginaDeLogin({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _PaginaDeLoginState createState() => _PaginaDeLoginState();
}

class _PaginaDeLoginState extends State<PaginaDeLogin> {
  bool possuiConta = false;
  bool campoConfirmarSenhaVisivel = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController confirmarSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "FITZ",
                  style: GoogleFonts.workSans(textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Acessar conta",
                  style: GoogleFonts.workSans( textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Crie ou acesse sua conta na plataforma utilizando e-mail ou senha.",
                  style: GoogleFonts.workSans(textStyle: const TextStyle(
                      color: Color(0xFFB2B2B2),
                      fontSize: 14.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      value: !possuiConta,
                      onChanged: (valor) {
                        setState(() {
                          possuiConta = !valor!;
                          campoConfirmarSenhaVisivel = !possuiConta;
                        });
                      },
                    ),
                    Text(
                      "Não possuo uma conta",
                      style: GoogleFonts.workSans(
                          textStyle:const TextStyle(
                          color: Color(0xFFB2B2B2),
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "E-mail",
                      style: GoogleFonts.workSans(textStyle: const TextStyle(
                          color: Color(0xFFB2B2B2),
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: true,
                      controller: emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF161616),
                        contentPadding: EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20.0), 
                    Text(
                      "Senha",
                      style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                              color: Color(0xFFB2B2B2),
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      autofocus: true,
                      obscureText: true,
                      controller: senhaController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF161616),
                        contentPadding: EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 20.0), 
                    if (campoConfirmarSenhaVisivel)
                      Text(
                        "Confirme a senha",
                        style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                                color: Color(0xFFB2B2B2),
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    if (campoConfirmarSenhaVisivel)
                      TextFormField(
                        autofocus: true,
                        obscureText: true,
                        controller: confirmarSenhaController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF161616),
                          contentPadding: EdgeInsets.all(20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
            
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        //Mano aqui temos que fazer a lógica para caso o usuário tenha uma conta,
                        //caso ele não tenha e tem que ser verificado também se as senhas que ele
                        //forneceu coincidem, caso sim: criar a conta, caso não: alerta na tela.
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
                        possuiConta
                            ? 'Acessar sua conta'
                            : 'Criar uma nova conta',
                        style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                      ),
                    ),
                  ),
                  
                ),
                SizedBox(
                  height: 26,
                ),
                 Positioned(
                  bottom: 0, 
            left: 0,   
            right: 0,
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
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          
                        },
                    ),
                                 ],
                               ),
                             ),
                 ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
