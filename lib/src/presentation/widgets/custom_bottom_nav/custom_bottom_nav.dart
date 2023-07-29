import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  static String id = 'custombottomnav';

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Material(
        // type: MaterialType.button,
        elevation: 3,
        surfaceTintColor: Color(0xAAEFF9FF),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: const Color(0xFFEFF9FF),
        child: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (index == 0)
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFF1DB56F),
                          ),
                        ),
                        Text(
                          'O',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    )
                  : const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 35,
                        ),
                      ],
                    ),
              (index == 1)
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Scanner',
                          style: TextStyle(
                            color: Color(0xFF1DB56F),
                          ),
                        ),
                        Text(
                          'O',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    )
                  : const Icon(
                      Icons.qr_code_scanner_sharp,
                      size: 35,
                    ),
              (index == 2)
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Products',
                          style: TextStyle(
                            color: Color(0xFF1DB56F),
                          ),
                        ),
                        Text(
                          'O',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    )
                  : const Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                    ),
              (index == 3)
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: Color(0xFF1DB56F),
                          ),
                        ),
                        Text(
                          'O',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    )
                  : const Icon(
                      Icons.account_circle_outlined,
                      size: 35,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
