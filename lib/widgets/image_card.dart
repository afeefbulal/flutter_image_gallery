import 'package:flutter/material.dart';

import '../models/image_model.dart';

class ImageCard extends StatelessWidget {
  final ImageModel image;

  const ImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              image.downloadUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Text(image.author),
        ],
      ),
    );
  }
}
