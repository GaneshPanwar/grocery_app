import 'package:flutter/material.dart';
import 'package:grocery_design/src/data/profile_view/profile_view_data.dart';
import 'package:grocery_design/src/utils/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static String id = 'profileview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  minRadius: 60,
                  maxRadius: 70,
                ),
                20.height,
                Text(
                  'Aakash Panwar',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(fontWeightDelta: 2),
                ),
                const Text('@akash910'),
                20.height,
                SizedBox(
                  height: MediaQuery.sizeOf(context).height - 300,
                  child: ListView.builder(
                    itemCount: profileData.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: profileData[index]['container_color'],
                          ),
                          height: 80,
                          width: 60,
                          child: Icon(
                            profileData[index]['icon'],
                            color: profileData[index]['icon_color'],
                            size: 30,
                          ),
                        ),
                        title: Text(
                          profileData[index]['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      );
                    },
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
