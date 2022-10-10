
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class ImageNetwork extends StatelessWidget {
  final String text;
  final VoidCallback?  press;

  const ImageNetwork({
    Key? key,
    required this.text, 
    this.press
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: CachedNetworkImage(
          imageUrl: "http://via.placeholder.com/350x150",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}