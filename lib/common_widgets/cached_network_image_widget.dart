import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  final String imgUrl;
  final double? width;
  final double? height;
  const CachedNetworkImageWidget({
    super.key,
    required this.imgUrl,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height, // Set the height explicitly
      width: width,
      imageUrl: imgUrl,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        direction: ShimmerDirection.ltr, // Left-to-right shimmer direction
        child: Container(
          height: height,
          width: 100,
          color: Colors.white, // Placeholder color
        ),
      ),
      errorWidget: (context, url, error) =>
          Icon(Icons.photo, size: 80.sp, color: Colors.blue),
      //   color: const Color.fromARGB(
      //       255, 230, 207, 205), // Optional: Customize error icon color
      // ),
      fadeInDuration: const Duration(
        milliseconds: 500,
      ), // Optional: animation duration
      fit: BoxFit
          .cover, // Optional: controls how the image should be fitted in its space
    );
  }
}
