import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/image_viewmodel.dart';
import '../widgets/image_card.dart';

class ImageListScreen extends StatefulWidget {
  const ImageListScreen({super.key});

  @override
  State<ImageListScreen> createState() => _ImageListScreenState();
}

class _ImageListScreenState extends State<ImageListScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() => context.read<ImageViewModel>().fetchImages());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Gallery')),
      body: Consumer<ImageViewModel>(
        builder: (context, vm, child) {
          if (vm.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (vm.errorMessage != null) {
            return Center(child: Text(vm.errorMessage!));
          }

          return GridView.builder(
            itemCount: vm.images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return ImageCard(image: vm.images[index]);
            },
          );
        },
      ),
    );
  }
}
