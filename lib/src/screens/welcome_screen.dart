import 'package:flutter/material.dart';
import 'package:mawi/src/screens/auth/login_screen.dart';
import 'package:mawi/src/utils/buttons_const.dart';
import 'package:mawi/src/utils/colors.dart';
import 'package:mawi/src/utils/text_const.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreennState();
}

class _WelcomeScreennState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? MyColor.lightBackgroundColor
          : MyColor.darkBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              transform: Matrix4.translationValues(0, -100, 0),
              child: backgroundImage()),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  titleLarge(context),
                  const SizedBox(height: 20),
                  textInfo(context),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [buttonLogin(context), buttonRegister()],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

/*=============================================
  Ilustración Imagen de Fondo
=============================================*/
  Widget backgroundImage() {
    return Image.asset('assets/backgrounds/background-welcome.png');
  }

/*=============================================
  Titulo grande
=============================================*/
  Widget titleLarge(context) {
    return Text("Eventos exclusivos \nen vivo.",
        style: kLargeTitleTheme(Theme.of(context).brightness));
  }

  /*=============================================
    Texto Información
  =============================================*/
  Widget textInfo(context) {
    return Text(
        "Regístrate ahora y vive experiencias en tiempo real con tus artistas favoritos.",
        style: kBodyLabelTheme(Theme.of(context).brightness));
  }

  /*=============================================
    Boton Login
  =============================================*/
  Widget buttonLogin(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: () {
          /* Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));*/
          Navigator.push(
              context,
              PageTransition(
                  child: const LoginScreen(),
                  type: PageTransitionType.bottomToTop));
        },
        style: kButtonStyleMedium,
        child: Text('Iniciar Sesión', style: kButtonText1Style(context)),
      ),
    );
  }

  /*=============================================
    Boton Register
  =============================================*/
  Widget buttonRegister() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: () {},
        style: kButtonStyleMediumLight,
        child: Text('Registrate', style: kButtonText1StyleLigth(context)),
      ),
    );
  }
}
