// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_spotter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunitySpotterImpl _$$CommunitySpotterImplFromJson(
  Map<String, dynamic> json,
) => _$CommunitySpotterImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  avatarUrl: json['avatarUrl'] as String,
  photoCount: (json['photoCount'] as num).toInt(),
  lastActive: json['lastActive'] as String,
  sharedPhotos:
      (json['sharedPhotos'] as List<dynamic>?)
          ?.map((e) => SkyPhoto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CommunitySpotterImplToJson(
  _$CommunitySpotterImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatarUrl': instance.avatarUrl,
  'photoCount': instance.photoCount,
  'lastActive': instance.lastActive,
  'sharedPhotos': instance.sharedPhotos,
};

_$SkyPhotoImpl _$$SkyPhotoImplFromJson(Map<String, dynamic> json) =>
    _$SkyPhotoImpl(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      caption: json['caption'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      location: json['location'] as String,
    );

Map<String, dynamic> _$$SkyPhotoImplToJson(_$SkyPhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'caption': instance.caption,
      'timestamp': instance.timestamp.toIso8601String(),
      'location': instance.location,
    };
