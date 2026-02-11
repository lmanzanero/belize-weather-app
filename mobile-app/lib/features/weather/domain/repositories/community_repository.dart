import '../entities/community_spotter.dart';

abstract class CommunityRepository {
  Future<List<CommunitySpotter>> getTopSpotters();
  Future<CommunitySpotter> getSpotterDetails(String id);
  Future<List<SkyPhoto>> getRecentPhotos();
  Future<List<SkyPhoto>> getDiscoveryPhotos({String? category});
}
