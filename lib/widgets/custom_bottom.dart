import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: const Center(
        child: const Text('Add',style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
