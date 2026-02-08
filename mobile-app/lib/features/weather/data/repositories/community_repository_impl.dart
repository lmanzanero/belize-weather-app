import 'dart:async';
import '../../domain/entities/community_spotter.dart';
import '../../domain/repositories/community_repository.dart';

class CommunityRepositoryImpl implements CommunityRepository {
  @override
  Future<List<CommunitySpotter>> getTopSpotters() async {
    // Mocking data based on your design
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
        ),
        SkyPhoto(
          id: 'p2',
          imageUrl: 'https://images.unsplash.com/photo-1592210454359-9043f067919b?q=80&w=1000',
          caption: 'Coming storm, stay safe everyone.',
          timestamp: DateTime.now().subtract(const Duration(days: 1)),
          location: 'San Pedro',
        ),
      ],
    );
  }

  @override
  Future<List<SkyPhoto>> getRecentPhotos() async {
    return []; // Future implementation
  }
}
