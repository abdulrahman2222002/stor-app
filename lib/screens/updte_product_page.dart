import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_form_field.dart';

class UpdateProductPage extends StatefulWidget {
   UpdateProductPage({Key? key}) : super(key: key);

  static String id = 'UpdateProductPage';
  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {

  String? productName,desc,image;
  String? price;
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return //ModalProgressHUD
      (
      //inAsyncCall: isLoading,
      //child:
          Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100,),
                CustomTextField(
                  hintText: 'Product Name',
                  onChanged: (data){
                    productName =data;
                  },
                  inputType: TextInputType.text,
                ),
                const SizedBox(height: 8,),
                CustomTextField(
                  hintText: 'Description',
                  onChanged: (data){
                    desc = data;
                  },
                  inputType: TextInputType.text,
                ),
                const SizedBox(height: 8,),
                CustomTextField(
                  hintText: 'Price',
                  onChanged: (data){
                    price = data;
                  },
                  inputType: TextInputType.number,
                ),
                const SizedBox(height: 8,),
                CustomTextField(
                  hintText: 'image',
                  onChanged: (data){
                    image = data;
                  },
                  inputType: TextInputType.text,
                ),
                const SizedBox(height: 50,),
                CustomButton(
                  title: 'Update',
                  onTap: (){
                   //  isLoading =true;
                   //  setState(() {
                   //
                   //  });
                   //
                   // try {
                   //   updateProduct(product);
                   //  } catch(e){
                   //   print(e);
                   // }
                   //
                   //  isLoading = false;
                   //  setState(() {
                   //
                   //  });
                  },
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

  void updateProduct(ProductModel product) {
     UpdateProductService().updateProduct(
        title: productName!,
        price: price!,
        desc: desc!,
        image: image!,
        category: product.category,
    );
  }
}
