import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pininput/components/custom_auth_btn.dart';
import 'package:pininput/constants/colors.dart';
import 'package:pininput/screens/phone_number_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhoneNumberScreen();
                  },
                ),
              );
            },
            btnWidget: Text(
              "Get Started",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.appBgColor,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/svg/message-icon.svg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Tolki",
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textTitleColor,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                "assets/images/png/get-started-img.png",
                height: 320,
                width: 320,
                fit: BoxFit.cover,
              ),
              const Spacer(
                flex: 1,
              ),

              /// title
              Text(
                textAlign: TextAlign.center,
                "Let's start the chat!",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textTitleColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              /// sub title
              SizedBox(
                width: 300,
                child: Text(
                  textAlign: TextAlign.center,
                  "Connect with friends and family securely and private enjoy!",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSubTitleColor,
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
