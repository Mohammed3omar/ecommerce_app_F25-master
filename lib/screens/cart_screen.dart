import 'package:ecommerce_app/model/flash_sale_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List<FlashSaleModel> listOfFlashProducts = [
    FlashSaleModel("Product One", 200, "24%", "assets/"),
    FlashSaleModel("Product Two", 200, "24%", "assets/"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              child: Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter cupon Code',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .3,
                    height: 40,
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Apply',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                children: [
                  Text(
                    'item()',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
