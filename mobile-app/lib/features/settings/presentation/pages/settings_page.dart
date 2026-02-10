import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/providers/theme_provider.dart';
import '../../../../core/constants/colors.dart';
import '../../../../features/auth/presentation/providers/auth_provider.dart';
import '../../../../shared/widgets/guest_mode_banner.dart';
import '../../../../l10n/app_localizations.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeNotifierProvider);
    final authState = ref.watch(authProvider);
    final l10n = AppLocalizations.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
        actions: [
          // Use a simple conditional - if authenticated, show logout
          if (authState.isAuthenticated)
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () => ref.read(authProvider.notifier).logout(),
              tooltip: l10n.logout,
            ),
        ],
      ),
      body: ListView(
        children: [
          if (!authState.isAuthenticated)
            GuestModeBanner(
              customMessage: l10n.themeChangeNotSaved,
              loginBenefits: [
                l10n.saveThemePreferences,
                l10n.accessUserManagement,
                l10n.syncSettingsAcrossDevices,
              ],
            ),
          
          _SectionHeader(title: l10n.appearance),
          SwitchListTile(
            title: Text(l10n.darkMode),
            subtitle: Text(authState.isAuthenticated 
                ? l10n.useDarkTheme 
                : l10n.useDarkThemeNotSaved),
            value: themeState.themeMode == ThemeMode.dark,
            onChanged: (value) {
              ref.read(themeNotifierProvider.notifier).setThemeMode(
                value ? ThemeMode.dark : ThemeMode.light,
              );
            },
          ),
          const Divider(),
          _SectionHeader(title: l10n.themeColor),
          ...ColorSeed.values.map(
            (seed) => RadioListTile<ColorSeed>(
              title: Text(seed.label),
              secondary: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: seed.color,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                    width: 1,
                  ),
                ),
              ),
              value: seed,
              groupValue: themeState.colorSeed,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeNotifierProvider.notifier).setColorSeed(value);
                }
              },
            ),
          ),
          const Divider(),
          _SectionHeader(title: l10n.about),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(l10n.flutterStarterApp),
            subtitle: Text(l10n.version),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: l10n.flutterStarter,
                applicationVersion: '1.0.0',
                applicationLegalese: l10n.material3StarterTemplate,
                children: [
                  const SizedBox(height: 16),
                  Text(l10n.starterFeatures),
                ],
              );
            },
          ),
          // Fallback logout for testing if isAuthenticated is failing
          if (!authState.isAuthenticated)
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const Text('Refresh Auth Status'),
              onTap: () => ref.read(authProvider.notifier).checkAuth(),
            ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
