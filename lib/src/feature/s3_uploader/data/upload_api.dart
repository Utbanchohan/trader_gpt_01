import 'dart:io';
import 'package:dio/dio.dart';

class UploadApi {
  final Dio dio;

  UploadApi({Dio? dio}) : dio = dio ?? Dio();

  /// Uploads file directly to S3 using presigned URL
  Future<void> uploadFile({
    required File file,
    required String uploadUrl,
    required String contentType,
  }) async {
    final bytes = await file.readAsBytes();
    await dio.put(
      uploadUrl,
      data: bytes,
      options: Options(headers: {'Content-Type': contentType}),
    );
  }
}
