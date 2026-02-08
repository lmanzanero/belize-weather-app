import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/sky_photo_repository_impl.dart';
import '../../domain/entities/community_spotter.dart';
import '../../domain/repositories/sky_photo_repository.dart';

final skyPhotoRepositoryProvider = Provider<SkyPhotoRepository>((ref) {
  return SkyPhotoRepositoryImpl();
});

class SkyPhotoUploadNotifier extends StateNotifier<AsyncValue<SkyPhoto?>> {
  final SkyPhotoRepository _repository;

  SkyPhotoUploadNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<void> uploadPhoto({
    required File image,
    required String caption,
    required String location,
  }) async {
    state = const AsyncValue.loading();
    try {
      final photo = await _repository.uploadSkyPhoto(
        image: image,
        caption: caption,
        location: location,
      );
      state = AsyncValue.data(photo);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final skyPhotoUploadProvider =
    StateNotifierProvider<SkyPhotoUploadNotifier, AsyncValue<SkyPhoto?>>((ref) {
  return SkyPhotoUploadNotifier(ref.watch(skyPhotoRepositoryProvider));
});
