import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffC8322E)
      ),
      child: Scaffold(
        body:Center(child: Image.asset('assets/images/img.png',height: 175,width: 175,fit: BoxFit.cover,),) ,

      ),
    );
  }
}
