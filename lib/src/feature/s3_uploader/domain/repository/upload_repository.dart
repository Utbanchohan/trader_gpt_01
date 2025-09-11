import 'dart:io';
import 'package:trader_gpt/src/feature/s3_uploader/domain/models/media_model.dart';

abstract class UploadRepository {
  /// Upload file using presigned S3 URL
  Future<MediaModel> uploadFile({
    required File file,
    required String uploadUrl,
    required String fileUrl,
    required String type,
  });

  /// Hit S3 endpoint to get presigned URL, then upload
  Future<MediaModel> uploadFileWithS3Endpoint(File file);
}
