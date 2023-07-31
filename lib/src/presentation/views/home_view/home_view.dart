import 'package:flutter/material.dart';

import '../cart_view/cart_view.dart';
import '../profile_view/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'homeview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Alikal',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text('What would you buy today?'),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, CartView.id);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF1FC448),
                        ),
                        child: const Icon(
                          Icons.card_travel_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  width: MediaQuery.sizeOf(context).width / 1.1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFF2F6FF),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        // border: InputBorder.none,
                        hintText: 'Search by items',
                        hintStyle: TextStyle(
                          color: Color(0xFFE3E6EC),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 160,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(
                            0xFFE2EAFF,
                          ),
                        ),
                        height: 160,
                        width: MediaQuery.sizeOf(context).width - 50,
                      );
                    },
                  ),
                ),

                // Add Coursel Here //

                // Container(
                //   height: 20,
                //   width: MediaQuery.sizeOf(context).width-40,
                //   alignment: Alignment.center,
                //   child: const SmoothIndicator(
                //   offset: 0,
                //   count: 3,
                //   size: Size(5, 5),
                //   effect: ExpandingDotsEffect(
                //     activeDotColor: Color(0xFECAE150),
                //     dotColor: Color(0xFF4CAF50),
                //     expansionFactor: 2,
                //   ),
                // ),
                // ),
                TitleWithTextButton(
                  title: 'Categories',
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileView.id);
                  },
                ),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFE2EAFF),
                      ),
                    ),
                  ),
                ),
                TitleWithTextButton(
                  title: 'Best Sellers',
                  onPressed: () {},
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(
                      0xFFC3D4FF,
                    ),
                  ),
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(
                            0xFFF3DFE8,
                          ),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleWithTextButton extends StatelessWidget {
  const TitleWithTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'See All',
            style: TextStyle(
              color: Color(0xFFA9A9A9),
            ),
          ),
        ),
      ],
    );
  }
}
