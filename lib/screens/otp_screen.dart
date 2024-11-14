import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pininput/components/custom_auth_btn.dart';
import 'package:pininput/constants/colors.dart';
import 'package:pininput/screens/get_started_screen.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.appBgColor,
      bottomSheet: Container(
        color: AppColors.appBgColor,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: CustomAuthBtn(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const GetStartedScreen();
                },
              ));
            },
            btnWidget: Text(
              "Verify",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.appBgColor,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/svg/otp-icon.svg",
                height: 180,
                width: 180,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Verify Phone",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textTitleColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Code has been sent to +916369476256",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textTitleColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              /// otp input
              SizedBox(
                width: double.infinity,
                child: Pinput(
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  defaultPinTheme: PinTheme(
                    textStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                      fontSize: 20,
                    ),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFF5F8FB),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Text(
                textAlign: TextAlign.center,
                "Didn't get OTP Code ?",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textTitleColor,
                ),
              ),
              const SizedBox(
                height: 6,
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  textAlign: TextAlign.center,
                  "Resend Code",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
