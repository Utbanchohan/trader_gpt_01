import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/s3_uploader/providers/upload_provider.dart';

class ImageUploader {
  final ImagePicker _picker = ImagePicker();

  /// Pick from gallery
  Future<void> pickFromGallery(
    WidgetRef ref,
    String uploadUrl,
    String fileUrl,
  ) async {
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (picked != null) {
      File file = File(picked.path);
      final type = 'image/${picked.path.split('.').last}'; // png, jpg, jpeg
      await ref
          .read(uploadNotifierProvider.notifier)
          .uploadFile(file, uploadUrl, fileUrl, type);
    }
  }

  /// Pick from camera
  Future<void> pickFromCamera(
    WidgetRef ref,
    String uploadUrl,
    String fileUrl,
  ) async {
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );

    if (picked != null) {
      File file = File(picked.path);
      final type = 'image/${picked.path.split('.').last}';
      await ref
          .read(uploadNotifierProvider.notifier)
          .uploadFile(file, uploadUrl, fileUrl, type);
    }
  }
}
