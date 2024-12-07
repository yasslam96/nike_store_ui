import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:nike_store_ui/pages/gridview_product.dart';
import 'package:nike_store_ui/pages/pannar_items.dart';
import 'package:nike_store_ui/pages/horizontal_par.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                            )
                          ]),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.sort),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                            )
                          ]),
                      child: const badges.Badge(
                        badgeContent: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: const Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                HorizontalPar(),
                const SizedBox(
                  height: 20,
                ),
                PannerItems(),
                const SizedBox(
                  height: 10,
                ),
                GridViewProduct(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
