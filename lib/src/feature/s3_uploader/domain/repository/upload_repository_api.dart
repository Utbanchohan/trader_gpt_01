import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:trader_gpt/src/feature/s3_uploader/data/upload_api.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/models/media_model.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/repository/upload_repository.dart';

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
    await api.uploadToS3(file: file, uploadUrl: uploadUrl, contentType: type);
    return MediaModel(
      url: fileUrl,
      type: type.startsWith('image')
          ? 'image'
          : type.startsWith('video')
          ? 'video'
          : 'audio',
      name: path.basename(file.path),
    );
  }

  @override
  Future<MediaModel> uploadFileWithS3Endpoint(File file) async {
    final fileName = path.basename(file.path);
    final res = await api.getPresignedUrl(fileName);
    final uploadUrl = res['data']['uploadUrl'] as String;
    final fileUrl = res['data']['fileUrl'] as String;
    final type = 'image/${fileName.split('.').last}';
    return await uploadFile(
      file: file,
      uploadUrl: uploadUrl,
      fileUrl: fileUrl,
      type: type,
    );
  }
}
