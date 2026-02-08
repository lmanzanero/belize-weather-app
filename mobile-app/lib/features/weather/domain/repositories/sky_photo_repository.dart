import 'dart:io';
import '../entities/community_spotter.dart';

abstract class SkyPhotoRepository {
  Future<SkyPhoto> uploadSkyPhoto({
    required File image,
    required String caption,
    required String location,
  });
}
