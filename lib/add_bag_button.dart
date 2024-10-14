import 'package:flutter/material.dart';

class AddBagButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onpressed;
  final bool? isIcon;
  final bool isLoading;

  const AddBagButton(
      {super.key,
      required this.buttonText,
      required this.onpressed,
      this.isIcon,
      this.isLoading = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF414851),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        onPressed: isLoading ? null : onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
