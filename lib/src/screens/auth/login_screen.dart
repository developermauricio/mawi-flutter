import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mawi/src/utils/buttons_const.dart';
import 'package:mawi/src/utils/text_const.dart';

import '../../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? MyColor.lightBackgroundColor
            : MyColor.darkBackgroundColor,
        body: Stack(
          children: [
            /*=============================================
              IMAGEN DE FONDO
            =============================================*/
            Container(
              transform: Matrix4.translationValues(0, -60, 0),
              child: backgroundImage(),
            ),
            /*=============================================
             BOTÓN VOLVER ATRÁS
            =============================================*/
            Positioned(
              left: 20,
              top: 70,
              child: btnGoToBack(context),
            ),
            /*=============================================
              TITULO INICIAR SESIÓN
            =============================================*/
            Positioned(
              left: 30,
              top: 135,
              child: Text(
                'Iniciar Sesión',
                style: kLargeTitleWhiteStyle,
              ),
            ),
            /*=============================================
              INPUTS
            =============================================*/
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                transform: Matrix4.translationValues(0, 205, 0),
                child: Column(
                  children: [
                    inputEmail(),
                    const SizedBox(height: 20),
                    inputPassword(),
                  ],
                )),
            Container(
                transform: Matrix4.translationValues(0, 350, 0),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    btnLogin(),
                    const SizedBox(height: 40),
                    textForgotPassword()
                  ],
                )),

            /*=============================================
              DIVIDER
            =============================================*/
            Container(
                transform: Matrix4.translationValues(0, 490, 0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                          child: Divider(
                        color: Color(0xFFADADAD),
                        height: 20,
                        thickness: 0.3,
                        indent: 10,
                      )),
                      Padding(
                        padding: EdgeInsets.only(right: 5, left: 18),
                        child: Text(
                          'O si prefieres',
                          style: TextStyle(
                              color: Color(0xFFADADAD), fontFamily: 'Epilogue'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Color(0xFFADADAD),
                        height: 20,
                        thickness: 0.3,
                        indent: 10,
                      )),
                    ],
                  ),
                )),
            /*=============================================
              BOTONES PARA INICIAR SESIÓN POR REDES SOCIALES
            =============================================*/
            Container(
                transform: Matrix4.translationValues(0, 540, 0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(children: [
                    btnFacebook(),
                    const SizedBox(
                      height: 20,
                    ),
                    btnGoogle()
                  ]),
                )),

            /*=============================================
              FACE ID
            =============================================*/
            Container(
              transform: Matrix4.translationValues(0, 700, 0),
              width: double.infinity,
              height: 70,
              alignment: Alignment.center,
              child: Theme.of(context).brightness == Brightness.light
                  ? Image.asset('assets/icons/icon-face-id-light.png')
                  : Image.asset('assets/icons/icon-face-id-dark.png'),
            ),
            /*=============================================
              TEXTO REGISTRO
            =============================================*/
            Container(
              transform: Matrix4.translationValues(0, 800, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('¿No tienes una cuenta?',
                      style:
                          kBodyLabelSmallTheme(Theme.of(context).brightness)),
                  const SizedBox(width: 7),
                  Text('Registrate',
                      style: kBodyTextFontWeightWithRedTheme(
                          Theme.of(context).brightness))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

/*=============================================
  Ilustración Imagen de Fondo
=============================================*/
  Widget backgroundImage() {
    return Image.asset('assets/backgrounds/background-login.png');
  }

  /*=============================================
  Volver atrás
=============================================*/
  Widget btnGoToBack(context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: MyColor.whiteColor,
        ));
  }

  /*=============================================
     Button Login
  =============================================*/
  Widget btnLogin() {
    return ElevatedButton(
      onPressed: () {},
      style: kButtonStyleLarge,
      child: Text('Iniciar Sesión', style: kButtonText1Style(context)),
    );
  }

  Widget textForgotPassword() {
    return Text(
      '¿Olvidaste tu contraseña?',
      style: kBodyLabelSecondaryTheme(Theme.of(context).brightness),
    );
  }

  /*=============================================
     Input Email
  =============================================*/
  Widget inputEmail() {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? MyColor.inputThemeLight
                : MyColor.inputThemeDark,
            borderRadius: BorderRadius.circular(6)),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Correo electrónico',
              hintStyle: kInputText,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(15)),
        ));
  }

  /*=============================================
     Input Password
  =============================================*/
  Widget inputPassword() {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? MyColor.inputThemeLight
                : MyColor.inputThemeDark,
            borderRadius: BorderRadius.circular(6)),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Contraseña',
              hintStyle: kInputText,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(15)),
        ));
  }

  /*=============================================
  Button Facebook
=============================================*/
  Widget btnFacebook() {
    return Material(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: MyColor.facebookColor,
      child: InkWell(
        child: SizedBox(
          height: 50,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/icons/icon-facebook.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Continue with Facebook',
                style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: MyColor.whiteColor),
              )
            ],
          ),
        ),
      ),
    );
  }

  /*=============================================
  Button Google
=============================================*/
  Widget btnGoogle() {
    return Material(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: MyColor.whiteColor,
      child: InkWell(
        child: SizedBox(
          height: 50,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/icons/icon-google.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Continue with Facebook',
                style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(190, 0, 0, 0)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
