// import 'package:country_code_picker/country_code_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transbike/views/otp_verification_screen.dart';
import 'package:transbike/widgets/text_widget.dart';

import '../utils/app.constants.dart';

Widget loginWidget(CountryCode countryCode,Function onCountryChange) {

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(text: AppConstants.helloNiceToMeetYou),
        textWidget(text: AppConstants.getMovingWithBikeSService,fontSize: 22, fontWeight: FontWeight.bold),

        const SizedBox(
          height: 40,
        ),

        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 3,
                blurRadius: 3,
              )
            ],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            children: [

              Expanded(
                flex: 1,
                  child: InkWell(
                    onTap: ()=> onCountryChange(),
                    child: Container(
                      child: Row(
                        children: [

                          const SizedBox(width: 5,),

                          Expanded(
                              child: Container(
                                child: countryCode.flagImage(),
                              ),
                          ),

                          textWidget(text: countryCode.dialCode),

                          const SizedBox(width: 10,),

                          Icon(Icons.keyboard_arrow_down_rounded),
                        ],
                      )
                    ),
                  ),
              ),
              Container(
                width: 1,
                height: 55,
                color: Colors.black.withOpacity(0.2),
              ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      onTap: () {
                        Get.to(() => OtpVerificationScreen());
                      },
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
                        hintText: AppConstants.enterMobileNumber,
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),

        const SizedBox(
          height: 40,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: RichText(
            textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 12),
                children: [
                  TextSpan(
                    text: AppConstants.byCreating + " ",
                  ),
                  TextSpan(
                    text: AppConstants.termsOfService + " ",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)
                  ), TextSpan(
                    text: "and" + " ",
                  ),
                  TextSpan(
                      text: AppConstants.privacyPolicy + " ",
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