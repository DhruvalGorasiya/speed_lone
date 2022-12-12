import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class CustomButton extends StatelessWidget {
  final Callback onPressed;
  final String image;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.25,
        child: Image.asset(image),
      ),
    );
  }
}
