// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? primaryColor;
  final Color? secodaryColor;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.primaryColor,
    this.secodaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            primaryColor!,
            secodaryColor!,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onPrimary: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 16,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
