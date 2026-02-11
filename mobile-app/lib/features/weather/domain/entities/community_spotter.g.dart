// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_spotter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommunitySpotter _$CommunitySpotterFromJson(Map<String, dynamic> json) =>
    _CommunitySpotter(
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

Map<String, dynamic> _$CommunitySpotterToJson(_CommunitySpotter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'photoCount': instance.photoCount,
      'lastActive': instance.lastActive,
      'sharedPhotos': instance.sharedPhotos,
    };

_SkyPhoto _$SkyPhotoFromJson(Map<String, dynamic> json) => _SkyPhoto(
  id: json['id'] as String,
  imageUrl: json['imageUrl'] as String,
  caption: json['caption'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  location: json['location'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  likes: (json['likes'] as num?)?.toInt() ?? 0,
  comments: (json['comments'] as num?)?.toInt() ?? 0,
  category: json['category'] as String? ?? 'sky',
  userName: json['userName'] as String?,
  userAvatar: json['userAvatar'] as String?,
);

Map<String, dynamic> _$SkyPhotoToJson(_SkyPhoto instance) => <String, dynamic>{
  'id': instance.id,
  'imageUrl': instance.imageUrl,
  'caption': instance.caption,
  'timestamp': instance.timestamp.toIso8601String(),
  'location': instance.location,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'likes': instance.likes,
  'comments': instance.comments,
  'category': instance.category,
  'userName': instance.userName,
  'userAvatar': instance.userAvatar,
};
