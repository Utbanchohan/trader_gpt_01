import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final imageProvider = StateNotifierProvider<ImageNotifier, File?>((ref) {
  return ImageNotifier();
});

class ImageNotifier extends StateNotifier<File?> {
  ImageNotifier() : super(null);

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state = File(image.path);
    }
  }

  Future<void> pickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      state = File(image.path);
    }
  }

  void clearImage() {
    state = null;
  }
}
