import 'package:flutter/material.dart';
import 'package:lexchanger/Components/IntroFade.dart';
import 'package:lexchanger/ui/Login_Screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _currentIndex = 0;

  final List<Map<String, String>> _introData = [
    {
      "image": "assets/images/buy.svg",
      "text": "Transact crypto easily",
    },
    {
      "image": "assets/images/p2p.svg",
      "text": "Sell your assets at the best rates",
    },
    {
      "image": "assets/images/trade.svg",
      "text": "Your security is our top priority",
    },
  ];

  void nextIntro() {
    if (_currentIndex < _introData.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      goToLogin();
    }
  }

  void goToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Introfade(
                    image: _introData[_currentIndex]["image"]!,
                    text: _introData[_currentIndex]["text"]!,
                  ),
                // const SizedBox(height: double.infinity,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: goToLogin,
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.grey.shade900, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: nextIntro,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _currentIndex < _introData.length - 1
                                    ? "Next"
                                    : "Finish",
                                style: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.grey[200],
                                weight: 600,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
