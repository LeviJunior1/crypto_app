import 'package:flutter/material.dart';

class CustomStep extends StatelessWidget {
  const CustomStep({
    super.key,
    this.title,
    this.subtitle,
    this.btnText,
    this.btnClick,
    this.img,
  });

  final String? title;
  final String? subtitle;
  final String? btnText;
  final Function? btnClick;
  final String? img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF151419),
        child: Padding(
          padding: const EdgeInsets.only(left: 80, right: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LimitedBox(
                maxHeight: 250,
                child: Image.asset(
                  img!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 24,
                  color: Color(0xFFECECEC),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                subtitle!,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF88888C),
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 56,
              ),
              ElevatedButton(
                onPressed: () => btnClick!(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF302E38),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.fromLTRB(56, 16, 56, 16),
                ),
                child: Text(btnText!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
