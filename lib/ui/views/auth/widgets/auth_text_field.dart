import 'package:flutter/material.dart';
import 'package:fucci_rent/ui/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    this.inputType,
    this.isPassword = false,
    this.validationMessage,
    this.hasValidationMessage = false,
  });
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool isPassword;
  final String? validationMessage;
  final bool hasValidationMessage;

  @override
  State<AuthTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<AuthTextField> {
  bool obscure = false;

  void changeObscure() {
    setState(() {
      obscure = !obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.label,
              style: GoogleFonts.lato(
                  color: AppColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            if(widget.hasValidationMessage)
              Text(
                widget.validationMessage ?? "",
                style: GoogleFonts.lato(
                    color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          height: 55,
          width: 336,
          decoration: BoxDecoration(
            color: const Color(0xFFD8D8DD),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: TextField(
              obscureText: obscure,
              keyboardType: widget.inputType,
              controller: widget.controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        onTap: changeObscure,
                        child: Icon(
                          obscure
                              ? Icons.visibility_off_sharp
                              : Icons.visibility,
                          color: AppColors.slightlyGreyColor,
                        ),
                      )
                    : null,
                hintStyle: GoogleFonts.lato(
                  color: AppColors.greyColor,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}