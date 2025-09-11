import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:trader_gpt/src/feature/s3_uploader/data/upload_api.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/models/media_model.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/repository/upload_repository.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/repository/upload_repository_api.dart';

final uploadApiProvider = Provider<UploadApi>((ref) => UploadApi());

final uploadRepositoryProvider = Provider<UploadRepository>(
  (ref) => UploadApiRepository(api: ref.read(uploadApiProvider)),
);

class UploadNotifier extends StateNotifier<AsyncValue<MediaModel?>> {
  final UploadRepository repository;

  UploadNotifier({required this.repository})
    : super(const AsyncValue.data(null));

  Future<void> uploadFile(
    File file,
    String uploadUrl,
    String fileUrl,
    String type,
  ) async {
    state = const AsyncValue.loading();
    try {
      final media = await repository.uploadFile(
        file: file,
        uploadUrl: uploadUrl,
        fileUrl: fileUrl,
        type: type,
      );
      state = AsyncValue.data(media);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final uploadNotifierProvider =
    StateNotifierProvider<UploadNotifier, AsyncValue<MediaModel?>>(
      (ref) => UploadNotifier(repository: ref.read(uploadRepositoryProvider)),
    );
