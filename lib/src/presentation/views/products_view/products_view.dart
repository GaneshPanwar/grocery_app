import 'package:flutter/material.dart';
import 'package:grocery_design/src/data/profile_view/profile_view_data.dart';
import 'package:grocery_design/src/utils/constants.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        color: Color(0xFF000000),
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
              const Text('Categories'),
              20.height,
              Center(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height - 308,
                  width: MediaQuery.sizeOf(context).width - 100,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 22,
                      crossAxisSpacing: 22,
                    ),
                    itemCount: profileData.length,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: profileData[index]['container_color'],
                      ),
                      height: 125,
                      width: 125,
                      child: Icon(
                        profileData[index]['icon'],
                        color: profileData[index]['icon_color'],
                        size: 60,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
