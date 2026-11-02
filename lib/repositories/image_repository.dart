import '../models/image_model.dart';
import '../services/api_service.dart';

class ImageRepository {
  final ApiService apiService;

  ImageRepository(this.apiService);

  Future<List<ImageModel>> getImages() async {
    final data = await apiService.fetchImages();

    return data.map((json) => ImageModel.fromJson(json)).toList();
  }
}
