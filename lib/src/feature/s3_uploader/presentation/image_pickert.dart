import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trader_gpt/main.dart';
import 'package:trader_gpt/src/feature/s3_uploader/providers/upload_provider.dart';

class UploadImageScreen extends ConsumerWidget {
  UploadImageScreen({super.key});

  final ImagePicker _picker = ImagePicker();

  /// Pick image from gallery or camera
  Future<void> pickAndUpload(
    BuildContext context,
    WidgetRef ref,
    ImageSource source,
  ) async {
    final XFile? picked = await _picker.pickImage(
      source: source,
      imageQuality: 80,
    );
    if (picked != null) {
      File file = File(picked.path);
      await ref.read(uploadNotifierProvider.notifier).uploadImage(file);
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(uploadNotifierProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 📂 Gallery Button
        GestureDetector(
          onTap: () async {
            bool result = await requestStoragePermission(isCamera: false);

            if (result) {
              pickAndUpload(context, ref, ImageSource.gallery);
            } else {
              _showPermissionDialog(context, isCamera: true);
            }
          },

          child: Container(
            height: 55,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF6D5DF6), Color(0xFF53E88B)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.photo_library, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Pick from Gallery",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),

        // 📷 Camera Button
        GestureDetector(
          onTap: () async {
            bool result = await requestStoragePermission(isCamera: true);

            if (result) {
              pickAndUpload(context, ref, ImageSource.camera);
            } else {
              _showPermissionDialog(context, isCamera: true);
            }
          },

          child: Container(
            height: 55,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFFF8C68), Color(0xFFDF45C7)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.camera_alt, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Pick from Camera",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Future<bool> requestStoragePermission({bool isCamera = false}) async {
  PermissionStatus status = isCamera
      ? await Permission.camera.request()
      : await Permission.photos.request();
  if (status.isDenied || status.isPermanentlyDenied) {
    openAppSettings();
  }

  return true;
}

void _showPermissionDialog(BuildContext context, {required bool isCamera}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Permission required'),
      content: Text(
        'Please enable ${isCamera ? 'camera' : 'photo'} access in the app settings to use this feature.',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            openAppSettings();
          },
          child: Text('Open Settings'),
        ),
      ],
    ),
  );
}
