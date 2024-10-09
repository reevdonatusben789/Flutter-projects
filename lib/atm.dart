import 'package:flutter/material.dart';

class newatm extends StatelessWidget {
  const newatm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.blue.shade800,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              const Positioned(
                left: 20,
                top: 20,
                child: Row(
                  children: [
                    Icon(Icons.account_balance, color: Colors.white, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'BANK NAME',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20,
                top: 20,
                child: Icon(Icons.contactless, color: Colors.white, size: 30),
              ),
              Positioned(
                left: 290,
                top: 70,
                child: Image.asset(
                  'assets/images/chip.jpg',
                  height: 30,
                  width: 50,
                ),
              ),
              const Positioned(
                left: 20,
                bottom: 50,
                child: Text(
                  '4532 3100 9999 1048',
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, letterSpacing: 2),
                ),
              ),
              const Positioned(
                left: 20,
                bottom: 20,
                child: Text(
                  'CARDHOLDER NAME',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const Positioned(
                right: 20,
                bottom: 20,
                child: Text(
                  '00-00',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              Positioned(
                right: 70,
                bottom: 20,
                child: Text(
                  'EXPIRES END',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 10),
                ),
              ),
              const Positioned(
                left: 20,
                bottom: 50,
                child: Text(
                  '4532',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
