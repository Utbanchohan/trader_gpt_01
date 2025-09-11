import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trader_gpt/src/feature/s3_uploader/providers/upload_provider.dart';

class UploadImageScreen extends ConsumerWidget {
  UploadImageScreen({super.key});

  final ImagePicker _picker = ImagePicker();

  Future<void> pickAndUpload(WidgetRef ref) async {
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    if (picked != null) {
      File file = File(picked.path);
      await ref.read(uploadNotifierProvider.notifier).uploadImage(file);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(uploadNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Upload Image")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.when(
              data: (media) => media != null
                  ? Image.network(media.url, height: 200)
                  : const Text("No image uploaded"),
              loading: () => const CircularProgressIndicator(),
              error: (e, st) => Text("Error: $e"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => pickAndUpload(ref),
              child: const Text("Pick & Upload Image"),
            ),
          ],
        ),
      ),
    );
  }
}
