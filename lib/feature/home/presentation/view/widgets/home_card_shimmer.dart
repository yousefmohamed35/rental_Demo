import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeCardShimmer extends StatelessWidget {
  const HomeCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.grey[300]!,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 12.0,
                        color: Colors.grey[300]!,
                      ),
                      const SizedBox(height: 8.0),
                      Container(
                        width: 100.0,
                        height: 12.0,
                        color: Colors.grey[300]!,
                      ),
                      const SizedBox(height: 8.0),
                      Container(
                        width: 150.0,
                        height: 12.0,
                        color: Colors.grey[300]!,
                      ),
                      const SizedBox(height: 8.0),
                      Container(
                        width: 80.0,
                        height: 12.0,
                        color: Colors.grey[300]!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}