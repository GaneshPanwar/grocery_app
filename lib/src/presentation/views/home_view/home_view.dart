import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/views/cart_view/cart_view.dart';

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
                        Text('Hi, Alikal'),
                        Text('What would you buy today'),
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
                          color: Colors.green,
                        ),
                        child: const Icon(
                          Icons.card_travel,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                  ),
                  width: MediaQuery.sizeOf(context).width / 1.1,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Color(0xFF1FC448),
                      border: InputBorder.none,
                      hintText: 'Search by items',
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: const Color(
                    //   0xFFE2EAFF,
                    // ),
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
                  onPressed: () {},
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Scanner',
            icon: Icon(
              Icons.scanner,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.account_box,
            ),
          ),
        ],
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
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text('See All'),
        ),
      ],
    );
  }
}
