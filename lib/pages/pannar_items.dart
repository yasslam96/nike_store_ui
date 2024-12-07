import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_store_ui/customs/custom_product.dart';
import 'package:nike_store_ui/pages/product_page.dart';

class PannerItems extends StatelessWidget {
  const PannerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: GestureDetector(
        onTap: () {
          Get.to(
            () => const ProductPage(),
            transition: Transition.downToUp,
            duration: const Duration(seconds: 1),
          );
        },
        child: ListView.builder(
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Container(
                  margin: const EdgeInsets.all(5),
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5.0,
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, bottom: 5),
                                child: Image.asset('${products[index].images}'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 30.0,
                            right: 2,
                            bottom: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  '${products[index].name}',
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "${products[index].descreption}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.withOpacity(0.8)),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${products[index].price}",
                                      style: const TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 7,
                                              )
                                            ]),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.shopping_cart_sharp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }
}
