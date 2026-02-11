import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/community_repository_impl.dart';
import '../../domain/entities/community_spotter.dart';
import '../../domain/repositories/community_repository.dart';

final communityRepositoryProvider = Provider<CommunityRepository>((ref) {
  return CommunityRepositoryImpl();
});

final topSpottersProvider = FutureProvider<List<CommunitySpotter>>((ref) async {
  final repository = ref.watch(communityRepositoryProvider);
  return repository.getTopSpotters();
});

final spotterDetailsProvider = FutureProvider.family<CommunitySpotter, String>((ref, id) async {
  final repository = ref.watch(communityRepositoryProvider);
  return repository.getSpotterDetails(id);
});

// Map Filter state
final mapCategoryFilterProvider = StateProvider<String>((ref) => 'stations');

// Discovery photos based on category
final discoveryPhotosProvider = FutureProvider.family<List<SkyPhoto>, String>((ref, category) async {
  final repository = ref.watch(communityRepositoryProvider);
  return repository.getDiscoveryPhotos(category: category);
});
