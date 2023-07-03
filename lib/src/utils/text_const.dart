import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mawi/src/utils/colors.dart';
import 'package:mawi/src/utils/themes.dart';

/*=============================================
ESTILOS DE TEXTOS PARA EL CAMBIO DE TEMA
=============================================*/

//Titulo tamaño grande
TextStyle kLargeTitleTheme(Brightness brightness) {
  return TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    color: brightness == Brightness.light
        ? MyColor.blackColor
        : MyColor.whiteColor,
    fontFamily: Platform.isIOS ? 'Epilogue' : 'Epilogue',
    decoration: TextDecoration.none,
  );
}

//Text small
TextStyle kBodyLabelSmallTheme(Brightness brightness) {
  return TextStyle(
    fontSize: 15.0,
    color: brightness == Brightness.light
        ? MyColor.blackColor
        : MyColor.whiteColor,
    fontFamily: Platform.isIOS ? 'Epilogue' : 'Epilogue',
    decoration: TextDecoration.none,
  );
}

//Parrafo normal
TextStyle kBodyLabelTheme(Brightness brightness) {
  return TextStyle(
    fontSize: 18.0,
    color: brightness == Brightness.light
        ? MyColor.blackColor
        : MyColor.whiteColor,
    fontFamily: Platform.isIOS ? 'Epilogue' : 'Epilogue',
    decoration: TextDecoration.none,
  );
}

// Texto combinado en dark con rojo
TextStyle kBodyLabelSecondaryTheme(Brightness brightness) {
  return TextStyle(
    fontSize: 15.0,
    color: brightness == Brightness.light
        ? MyColor.primaryColor
        : MyColor.secondaryColor,
    fontFamily: Platform.isIOS ? 'Epilogue' : 'Epilogue',
    decoration: TextDecoration.none,
  );
}

//Texto en negrilla combinado con rojo
TextStyle kBodyTextFontWeightWithRedTheme(Brightness brightness) {
  return TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w700,
    color: brightness == Brightness.light
        ? MyColor.primaryColor
        : MyColor.secondaryColor,
    fontFamily: Platform.isIOS ? 'Epilogue' : 'Epilogue',
    decoration: TextDecoration.none,
  );
}

//Texto input
var kInputText = const TextStyle(
  color: MyColor.inputTextTheme,
  fontFamily: 'Epilogue',
  decoration: TextDecoration.none,
);

/*=============================================
ESTILOS DE TEXTOS SIN CAMBIO DE TEMA
=============================================*/
var kLargeTitleWhiteStyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.bold,
  color: MyColor.whiteColor,
  fontFamily: Platform.isIOS ? 'Epilogue' : 'Epilogue',
  decoration: TextDecoration.none,
);

/*=============================================
ESTILOS DE TEXTOS PARA LOS BOTONES
=============================================*/
TextStyle kButtonText1Style(context) {
  return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.04,
      fontWeight: FontWeight.w500,
      color: MyColor.whiteColor,
      fontFamily: 'Epilogue',
      decoration: TextDecoration.none);
}

TextStyle kButtonText1StyleLigth(context) {
  return TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.04,
    fontWeight: FontWeight.w500,
    color: MyColor.primaryColor,
    fontFamily: 'Epilogue',
    decoration: TextDecoration.none,
  );
}
