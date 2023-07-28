import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static String id = 'cartview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
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
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height - 60,
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return const ItemsCart();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () => {},
        label: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF10802C),
          ),
          height: 60,
          width: MediaQuery.sizeOf(context).width - 60,
          child: Center(
            child: Text(
              'BUY',
              style: Theme.of(context).textTheme.headlineSmall!.apply(
                    color: Colors.white,
                    fontWeightDelta: 2,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

class ItemsCart extends StatelessWidget {
  const ItemsCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: const Color(0xFFE2EAFF),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 13.5,
          horizontal: 10,
        ),
        leading: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFCAFFC9),
          ),
        ),
        title: const Text('Tilte'),
        subtitle: const Text('Sub Title '),
        trailing: SizedBox(
          width: 80,
          child: Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: const Color(0xFFB3F9C5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.remove,
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 25,
                width: 25,
                child: Center(
                  child: Text('2'),
                ),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: const Color(0xFF0FB065),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
