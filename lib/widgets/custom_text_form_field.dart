// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key,  this.hintText,this.inputType, this.onChanged,}) : super(key: key);
  Function(String)? onChanged;
  String? hintText;
  TextInputType?  inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: onChanged,
        keyboardType: inputType,
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(8),
            ),
            ),
        );
    }
}



class BuildTextFormFeild extends StatelessWidget {
  BuildTextFormFeild({
    this.keyboardType,
    this.isPassword,
    this.onChanged,
    this.prefixIcon,
    this.visibilityTaped,
    this.hintText,
    this.label,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);
  IconData? prefixIcon;
  IconData? suffixIcon;
  TextInputType? keyboardType;
  bool? isPassword;
  Function(String)? onChanged;
  final VoidCallback? visibilityTaped;
  String? label;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      width: 344,
      child: TextFormField(
        maxLines: 1,
        cursorColor: blueColor,
        keyboardType: keyboardType,
        obscureText: isPassword!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is required';
          }
        },
        onChanged: onChanged,
        style: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: blueColor,
          ),
          suffixIcon: GestureDetector(
            onTap: visibilityTaped,
            child: Icon(
              suffixIcon,
              color: maximumBlackColor,
              size: 20,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: blueColor,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: blueColor,
              width: 1.5,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: blueColor,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: blueColor,
              width: 1.5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: blueColor,
              width: 1.5,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: blueColor,
              width: 1.5,
            ),
          ),
          labelText: label,
          labelStyle: const TextStyle(
            color: blueColor,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: miniBlackColor,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}