import 'dart:io';
import 'package:trader_gpt/src/feature/s3_uploader/data/upload_api.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/models/media_model.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/repository/upload_repository.dart';
import 'package:path/path.dart' as path;

class UploadApiRepository implements UploadRepository {
  final UploadApi api;

  UploadApiRepository({required this.api});

  @override
  Future<MediaModel> uploadFile({
    required File file,
    required String uploadUrl,
    required String fileUrl,
    required String type,
  }) async {
    try {
      await api.uploadFile(file: file, uploadUrl: uploadUrl, contentType: type);

      return MediaModel(
        url: fileUrl, // public file URL
        type: type.startsWith('image')
            ? 'image'
            : type.startsWith('video')
            ? 'video'
            : 'audio',
        name: path.basename(file.path),
      );
    } catch (e) {
      throw Exception('S3 upload failed: $e');
    }
  }
}
