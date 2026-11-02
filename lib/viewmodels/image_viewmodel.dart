import 'package:flutter/material.dart';

import '../models/image_model.dart';
import '../repositories/image_repository.dart';

class ImageViewModel extends ChangeNotifier {
  final ImageRepository repository;

  ImageViewModel(this.repository);

  List<ImageModel> images = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchImages() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      images = await repository.getImages();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
