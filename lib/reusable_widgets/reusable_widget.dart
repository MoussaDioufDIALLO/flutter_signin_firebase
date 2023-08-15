import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return  Image.asset(
    imageName,
    fit: BoxFit.fitWidth,  // Ajuster la manière dont l'image est redimensionnée pour couvrir l'écran
    width: 240,  // Utiliser la largeur de l'écran
    height: 240,  // Utiliser la hauteur de l'écran
    color: Colors.white,
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
TextEditingController controller) {
  return TextField (controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(prefixIcon:Icon( icon, color: Colors.white70,),
    labelText: text,
    labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    fillColor: Colors.white.withOpacity(0.3),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none))
    ),
  keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}