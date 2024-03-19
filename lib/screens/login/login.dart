
import 'package:flutter/material.dart';
import 'package:prominent_pallet/screens/login/layer_one.dart';
import 'package:prominent_pallet/screens/login/layer_three.dart';
import 'package:prominent_pallet/screens/login/layer_two.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF216241), Color(0xFF216241)], // Using the same color for both ends to create a solid color
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 70, // Adjust the top position according to your layout
              left: 0,
              right: 0,
              child: Column(
                children: [
                  //  const Text(
                  //   'PALLET INVENTORY SYSTEM',
                  //   style: TextStyle(
                  //     fontSize: 24,
                  //     fontFamily: 'Poppins-Medium',
                  //     fontWeight: FontWeight.w500,
                  //     color: Color.fromARGB(255, 255, 254, 254),
                  //   ),
                  // ),
                   const SizedBox(height: 10),
                  Image.asset(
                    'images/icon.png', // Path to your image asset
                    width: 120, // Adjust width as needed
                    height: 120, // Adjust height as needed
                  ),
                  // Adjust the spacing between image and text
                 
                ],
              ),
            ),
           
         
            Positioned(
              top: 200, // Adjust the top position of the "Login" text
              left: 50,
              child: Container(
                child: const Text(
                  'PALLET INVENTORY SYSTEM',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins-Medium',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(top: 290, right: 0, bottom: 0, child: LayerOne()),
            Positioned(top: 318, right: 0, bottom: 0, child: LayerTwo()),
            Positioned(top: 320, right: 0, bottom: 0, child: LayerThree()),
          ],
        ),
      ),
    );
  }
}
