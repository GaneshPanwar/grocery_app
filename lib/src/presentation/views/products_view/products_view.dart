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
              const Text('Categories'),
              20.height,
              Center(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height - 308,
                  width: MediaQuery.sizeOf(context).width - 100,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
