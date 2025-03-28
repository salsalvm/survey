import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/res/colors.dart';
import '../../../core/res/styles.dart';

//this class contain form field  refactor in each custom form field is an instance of this class
//its form with help of constructor
// incuding validator , field styles

class CustomForm extends StatelessWidget {
  const CustomForm(
      {super.key,
      required this.name,
      this.controller,
      this.validator,
      this.size = 20,
      this.inputTextColor,
      this.fontSize,
      this.obscureText = false,
      this.focusNode,
      this.suffix,
      this.widget,
      this.keyboardType = TextInputType.text,
      this.inputFormatters,
      this.textInputAction = TextInputAction.next,
      this.onChanged,
      this.onTap,
      this.readOnly = false,
      this.textColor = kBlack,
      this.width,
      this.labelTrue = false,
      this.verticalPad = 0,
      this.maxLength,
      this.onFieldSubmitted,
      this.radius = 15,
      this.onTapOutside,
      this.hintColor = kInActive});
  final String name;
  final Color hintColor;
  final double size;
  final double? fontSize;
  final Color? inputTextColor;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? widget;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction textInputAction;
  final void Function()? onTap;
  final bool readOnly;
  final bool labelTrue;
  final Color textColor;
  final double? width;
  final int? maxLength;
  final double verticalPad;
  final double radius;
  final void Function(PointerDownEvent)? onTapOutside;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPad),
      child: SizedBox(
        width: width,
        child: TextFormField(
          controller: controller,

          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: KStyle.content(
            letterSpace: .4,
            size: 13,
            color: textColor,
          ),
          onTapOutside: onTapOutside ??
              (PointerDownEvent event) => FocusScope.of(context).unfocus(),
          obscureText: obscureText,
          inputFormatters: inputFormatters,

          keyboardType: keyboardType,
//inputs
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: widget,
            suffixIcon: suffix ?? const SizedBox(height: 40),
            hintText: name,
            hintStyle: KStyle.content(color: hintColor, size: 13),
            contentPadding: const EdgeInsets.only(left: 15, top: 10),
            // labelText: name,
            labelText: labelTrue ? name : null,
            labelStyle: KStyle.content(color: hintColor, size: 13),

            fillColor: kWhite,
            focusColor: kLight,
            filled: true,
//border elements like error border, focus border  and enable border
//it include radius and border color
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: .2,
                color: kInActive,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: .2,
                color: kInActive,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: .2,
                color: kInActive,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),

//error  view
            errorMaxLines: 2,
            errorStyle: KStyle.content(
                color: kError.withOpacity(.9),
                size: 9,
                lineHeight: 1,
                letterSpace: .4),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kError.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(radius)),

            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kError.withOpacity(0.5),
              ),
              gapPadding: 2,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          onTap: onTap,
          readOnly: readOnly,
          //it is a focus node like submit a field after going to next feild
          //help of this parameter
          focusNode: focusNode, onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged, textInputAction: textInputAction,
        ),
      ),
    );
  }
}
