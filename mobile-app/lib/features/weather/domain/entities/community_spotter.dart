import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_spotter.freezed.dart';
part 'community_spotter.g.dart';

@freezed
abstract class CommunitySpotter with _$CommunitySpotter {
  const factory CommunitySpotter({
    required String id,
    required String name,
    required String avatarUrl,
    required int photoCount,
    required String lastActive,
    @Default([]) List<SkyPhoto> sharedPhotos,
  }) = _CommunitySpotter;

  const CommunitySpotter._();

  factory CommunitySpotter.fromJson(Map<String, dynamic> json) =>
      _$CommunitySpotterFromJson(json);
}

@freezed
abstract class SkyPhoto with _$SkyPhoto {
  const factory SkyPhoto({
    required String id,
    required String imageUrl,
    required String caption,
    required DateTime timestamp,
    required String location,
    double? latitude,
    double? longitude,
    @Default(0) int likes,
    @Default(0) int comments,
    @Default('sky') String category, // sky, cloud, rainbow, sunset, storm
    String? userName,
    String? userAvatar,
  }) = _SkyPhoto;

  const SkyPhoto._();

  factory SkyPhoto.fromJson(Map<String, dynamic> json) =>
      _$SkyPhotoFromJson(json);
}
