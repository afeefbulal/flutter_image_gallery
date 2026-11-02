import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'services/api_service.dart';
import 'repositories/image_repository.dart';
import 'viewmodels/image_viewmodel.dart';
import 'views/image_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ImageViewModel(ImageRepository(ApiService())),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageListScreen(),
    );
  }
}
