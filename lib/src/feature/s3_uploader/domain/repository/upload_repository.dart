import 'dart:io';
import 'package:trader_gpt/src/feature/s3_uploader/domain/models/media_model.dart';

abstract class UploadRepository {
  Future<MediaModel> uploadFile({
    required File file,
    required String uploadUrl,
    required String fileUrl,
    required String type,
  });
}
