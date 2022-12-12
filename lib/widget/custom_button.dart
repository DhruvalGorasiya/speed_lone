import 'package:flutter/material.dart';


Widget customButton({VoidCallback? onPressed, required String image, required BuildContext context}){
  return GestureDetector(
    onTap: onPressed,
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Image.asset(image),
    ),
  );
}