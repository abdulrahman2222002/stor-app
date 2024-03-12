
// ignore_for_file: must_be_immutable



import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'UpdateProductPage',arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 18,
                  offset: const Offset(0, 15),

                )
              ],
            ),
            child: Card(
              elevation: 3,
              shadowColor: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      product.title.substring(0,12),
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          r'$' '${product.price}',
                          style: const TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                        const Icon(Icons.favorite,color: Colors.red,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -30,
            left: 40,
            child: Image.network(product.image,height: 100,width: 100,),
          ),
        ],
      ),
    );
  }
}