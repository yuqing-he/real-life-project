import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final GestureTapCallback ontap;
  CustomButton({this.txt, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ontap,
        splashColor: Colors.white,
        child: LayoutBuilder(
          builder: (context, constraint) {
            return Container(
              width: 300,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white)),
              child: Center(
                child: Text(
                  txt,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
