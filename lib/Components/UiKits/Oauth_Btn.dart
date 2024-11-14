import 'package:flutter/material.dart';

class OauthBtn extends StatefulWidget {
  final VoidCallback onClick;
  final String text;
  const OauthBtn({super.key, required this.onClick, required this.text});

  @override
  State<OauthBtn> createState() => _OauthBtnState();
}

class _OauthBtnState extends State<OauthBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onClick,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.text,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/google.png",
                  height: 20,
                  width: 20,
                ),
              ],
            )));
  }
}
