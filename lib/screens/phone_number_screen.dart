import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pininput/components/custom_auth_btn.dart';
import 'package:pininput/constants/colors.dart';
import 'package:pininput/screens/otp_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

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
                    return const OtpScreen();
                  },
                ),
              );
            },
            btnWidget: Text(
              "Next",
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
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/images/svg/message-icon.svg",
                  height: 26,
                  width: 26,
                  fit: BoxFit.cover,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Tolki",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textTitleColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Hi! Welcome to Toki",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.textTitleColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Create your account",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.textSubTitleColor,
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            /// text field
            IntlPhoneField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFFAFAFA),
                // Set the fill color to blue
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                  color: AppColors.primaryColor,
                ),

                border: InputBorder.none,
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
              showDropdownIcon: false,
              dropdownDecoration: BoxDecoration(
                color: const Color(0xFFFAFAFA),
                borderRadius: BorderRadius.circular(8),
              ),
              flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Securing your personal information is our priority.",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.textSubTitleColor,
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
