import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTab});
final void Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child:Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: const Center(
        child: const Text('Add',style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
    ));
  }
}
