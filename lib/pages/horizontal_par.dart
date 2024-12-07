import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HorizontalPar extends StatelessWidget {
  HorizontalPar({super.key});

  List catagory = [
    'shose',
    'shirt',
    'jenz',
    'claphse',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: catagory.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: FittedBox(child: Text('${catagory[index]}')),
                ),
              ),
            );
          }),
    );
  }
}
