import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget{
  var imgpath;
  ContainerWidget(this.imgpath);
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior:Clip.antiAlias,
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Image.network(imgpath,fit: BoxFit.cover),
    );
  }

}