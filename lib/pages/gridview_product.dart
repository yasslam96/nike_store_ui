import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_store_ui/customs/custom_product.dart';
import 'package:nike_store_ui/pages/product_page.dart';

class GridViewProduct extends StatefulWidget {
  const GridViewProduct({super.key});

  @override
  State<GridViewProduct> createState() => _GridViewProductState();
}

class _GridViewProductState extends State<GridViewProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: products.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .6,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  () => const ProductPage(),
                  transition: Transition.downToUp,
                  duration: const Duration(seconds: 1),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Image.asset(
                          '${products[index].images}',
                          height: 115,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        '${products[index].name}',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "${products[index].descreption}",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.8),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${products[index].price}",
                            style: const TextStyle(color: Colors.red),
                          ),
                          const Icon(Icons.add),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              products[index].like =
                                  !(products[index].like ?? false);
                            });
                          },
                          icon: products[index].like == false
                              ? const Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
