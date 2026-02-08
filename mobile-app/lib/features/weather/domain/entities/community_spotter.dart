import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_spotter.freezed.dart';
part 'community_spotter.g.dart';

@freezed
class CommunitySpotter with _$CommunitySpotter {
  const factory CommunitySpotter({
    required String id,
    required String name,
    required String avatarUrl,
    required int photoCount,
    required String lastActive,
    @Default([]) List<SkyPhoto> sharedPhotos,
  }) = _CommunitySpotter;

  factory CommunitySpotter.fromJson(Map<String, dynamic> json) =>
      _$CommunitySpotterFromJson(json);
}

@freezed
class SkyPhoto with _$SkyPhoto {
  const factory SkyPhoto({
    required String id,
    required String imageUrl,
    required String caption,
    required DateTime timestamp,
    required String location,
  }) = _SkyPhoto;

  factory SkyPhoto.fromJson(Map<String, dynamic> json) =>
      _$SkyPhotoFromJson(json);
}
