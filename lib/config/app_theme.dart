import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme
{




  static Color bgColor = Color(0xFFE2E2E2);
  static Color mainColor = Color(0xFF06283D);
  static Color secColor = Color(0xFF113751);
  static Color acecntColor = Color(0xFFF1F5F9);
  static Color acecntSecColor = Color(0xFF9BA7BE);
  static Color sectextColor = Color(0xFF788595);


  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold);

  static TextStyle mainContent =
      GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.normal);

  static TextStyle dateTitle =
      GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w500);



}