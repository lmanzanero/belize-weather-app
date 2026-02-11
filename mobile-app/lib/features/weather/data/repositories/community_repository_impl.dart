import 'dart:async';
import '../../domain/entities/community_spotter.dart';
import '../../domain/repositories/community_repository.dart';

class CommunityRepositoryImpl implements CommunityRepository {
  @override
  Future<List<CommunitySpotter>> getTopSpotters() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      const CommunitySpotter(
        id: '1',
        name: 'DiverSteve',
        avatarUrl: 'https://i.pravatar.cc/150?u=1',
        photoCount: 124,
        lastActive: 'now',
      ),
      const CommunitySpotter(
        id: '2',
        name: '9A Photer',
        avatarUrl: 'https://i.pravatar.cc/150?u=2',
        photoCount: 98,
        lastActive: '5m ago',
      ),
      const CommunitySpotter(
        id: '3',
        name: 'MayaFarmer',
        avatarUrl: 'https://i.pravatar.cc/150?u=3',
        photoCount: 78,
        lastActive: '13m ago',
      ),
    ];
  }

  @override
  Future<CommunitySpotter> getSpotterDetails(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return CommunitySpotter(
      id: id,
      name: id == '1' ? 'DiverSteve' : 'SkyWatcher',
      avatarUrl: 'https://i.pravatar.cc/150?u=$id',
      photoCount: 124,
      lastActive: 'now',
      sharedPhotos: [
        SkyPhoto(
          id: 'p1',
          imageUrl: 'https://images.unsplash.com/photo-1534088568595-a066f410bcda?q=80&w=1000',
          caption: 'Beautiful sunset over Belize City!',
          timestamp: DateTime.now().subtract(const Duration(hours: 2)),
          location: 'Belize City',
          likes: 24,
          comments: 5,
          userName: 'DiverSteve',
          userAvatar: 'https://i.pravatar.cc/150?u=1',
        ),
        SkyPhoto(
          id: 'p2',
          imageUrl: 'https://images.unsplash.com/photo-1592210454359-9043f067919b?q=80&w=1000',
          caption: 'Coming storm, stay safe everyone.',
          timestamp: DateTime.now().subtract(const Duration(days: 1)),
          location: 'San Pedro',
          likes: 45,
          comments: 12,
          userName: 'DiverSteve',
          userAvatar: 'https://i.pravatar.cc/150?u=1',
        ),
      ],
    );
  }

  @override
  Future<List<SkyPhoto>> getRecentPhotos() async {
    return [];
  }

  @override
  Future<List<SkyPhoto>> getDiscoveryPhotos({String? category}) async {
    await Future.delayed(const Duration(milliseconds: 600));
    final allPhotos = [
      SkyPhoto(
        id: 'd1',
        imageUrl: 'https://images.unsplash.com/photo-1513002749550-c59d786b8e6c?q=80&w=1000',
        caption: 'Double rainbow after the rain!',
        timestamp: DateTime.now(),
        location: 'Belmopan',
        latitude: 17.25,
        longitude: -88.76,
        category: 'rainbow',
        likes: 120,
        comments: 15,
        userName: 'RainSeeker',
        userAvatar: 'https://i.pravatar.cc/150?u=10',
      ),
      SkyPhoto(
        id: 'd2',
        imageUrl: 'https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?q=80&w=1000',
        caption: 'Amazing clouds today.',
        timestamp: DateTime.now().subtract(const Duration(hours: 5)),
        location: 'Orange Walk',
        latitude: 18.08,
        longitude: -88.56,
        category: 'cloud',
        likes: 56,
        comments: 3,
        userName: 'CloudWatcher',
        userAvatar: 'https://i.pravatar.cc/150?u=11',
      ),
      SkyPhoto(
        id: 'd3',
        imageUrl: 'https://images.unsplash.com/photo-1534088568595-a066f410bcda?q=80&w=1000',
        caption: 'Sunset in Caye Caulker',
        timestamp: DateTime.now().subtract(const Duration(days: 1)),
        location: 'Caye Caulker',
        latitude: 17.74,
        longitude: -88.02,
        category: 'sunset',
        likes: 230,
        comments: 42,
        userName: 'IslandVibes',
        userAvatar: 'https://i.pravatar.cc/150?u=12',
      ),
      SkyPhoto(
        id: 'd4',
        imageUrl: 'https://images.unsplash.com/photo-1592210454359-9043f067919b?q=80&w=1000',
        caption: 'Dark skies rolling in.',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
        location: 'Placencia',
        latitude: 16.51,
        longitude: -88.37,
        category: 'storm',
        likes: 89,
        comments: 11,
        userName: 'StormTracker',
        userAvatar: 'https://i.pravatar.cc/150?u=13',
      ),
    ];

    if (category == null || category == 'all') return allPhotos;
    return allPhotos.where((p) => p.category == category).toList();
  }
}
