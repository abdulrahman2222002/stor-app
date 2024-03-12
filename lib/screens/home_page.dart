import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
          ),
        ],
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0,left: 16,top: 40,bottom: 40),
        child: FutureBuilder<List<ProductModel>>(
            future: AllProductsService().getAllProducts(),
            builder: (context,snapshot){
          if(snapshot.hasData){
            List<ProductModel> products = snapshot.data!;
            print(snapshot.error);
            return GridView.builder(
              itemCount: products.length,
              clipBehavior: Clip.none,
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of items in each row
                mainAxisSpacing: 60.0, // spacing between rows
                crossAxisSpacing: 10, // spacing between columns
              ),
              itemBuilder: (context, index)=> CustomCard(
                product: products[index],
              ),
            );
          }else{
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}

