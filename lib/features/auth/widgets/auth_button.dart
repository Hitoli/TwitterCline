import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/pallete.dart';

class AuthSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backgroundcolor;
  final Color textColor;

  const AuthSmallButton({super.key, required this.label, required this.onTap,  this.backgroundcolor= Pallete.backgroundColor,  this.textColor=Pallete.whiteColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Chip(label:Text(label),backgroundColor: backgroundcolor,labelStyle: TextStyle(color: textColor)));
  }
}