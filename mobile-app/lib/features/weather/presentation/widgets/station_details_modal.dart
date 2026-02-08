import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/weather_provider.dart';
import '../../domain/entities/station_details.dart';

class StationDetailsModal extends ConsumerWidget {
  final int stationId;

  const StationDetailsModal({super.key, required this.stationId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsAsync = ref.watch(stationDetailsProvider(stationId));

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: const BoxDecoration(
        color: Color(0xFF0F172A),
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: detailsAsync.when(
        data: (data) => _buildContent(context, data),
        loading: () => const SizedBox(
          height: 300,
          child: Center(child: CircularProgressIndicator(color: Colors.orange)),
        ),
        error: (err, _) => SizedBox(
          height: 200,
          child: Center(child: Text('Error: $err', style: const TextStyle(color: Colors.white))),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, StationFullData data) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.stationName,
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Elevation: ${data.station.elevation}m',
                    style: GoogleFonts.inter(color: Colors.white60, fontSize: 14),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          'Latest Readings',
          style: GoogleFonts.inter(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        if (data.latest != null)
          Flexible(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 2.5,
              ),
              itemCount: data.latest!.length,
              itemBuilder: (context, index) {
                final reading = data.latest![index];
                return _buildReadingCard(reading);
              },
            ),
          ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildReadingCard(WeatherValue reading) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            reading.variable.name,
            style: const TextStyle(color: Colors.white60, fontSize: 10),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            '${reading.value} ${reading.variable.unitSymbol}',
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
