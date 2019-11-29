import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool password;
  final IconData icon;
  final TextInputType inputType;
  CustomTextField({this.labelText, this.password, this.icon, this.inputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 10.0, color: Colors.black12),
            ]),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          obscureText: password,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labelText,
              icon: Icon(
                icon,
                color: Colors.black38,
              ),
              labelStyle: TextStyle(
                color: Colors.black38,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
              )),
              keyboardType: inputType,
        ),
      ),
    );
  }
}
