// import 'package:country_code_picker/country_code_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transbike/views/otp_verification_screen.dart';
import 'package:transbike/widgets/pinput_widget.dart';
import 'package:transbike/widgets/text_widget.dart';

import '../utils/app.constants.dart';

Widget otpVerificationWidget() {

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(text: AppConstants.phoneVerification),
        textWidget(
            text: AppConstants.enterOtp,
            fontSize: 22,
            fontWeight: FontWeight.bold
        ),
        const SizedBox(
          height: 40,
        ),

        Container(

            width: Get.width,
            height: 50,
            child: RoundedWithShadow()),

        const SizedBox(
          height: 40,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 12),
                children: [
                  TextSpan(
                    text: AppConstants.resendCode + " ",
                  ),
                  TextSpan(
                      text: "10 Seconds",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)
                  ),
                ]
            ),
          ),
        ),
      ],
    ),
  );
}