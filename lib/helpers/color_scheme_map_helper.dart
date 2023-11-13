import 'package:flutter/material.dart';

Map<String, Color?> getColorsMapFromColorScheme(ColorScheme colorScheme) {
  return <String, Color?>{
    'primary': colorScheme.primary,
    'onPrimary': colorScheme.onPrimary,
    'primaryContainer': colorScheme.primaryContainer,
    'onPrimaryContainer': colorScheme.onPrimaryContainer,
    'secondary': colorScheme.secondary,
    'onSecondary': colorScheme.onSecondary,
    'secondaryContainer': colorScheme.secondaryContainer,
    'onSecondaryContainer': colorScheme.onSecondaryContainer,
    'tertiary': colorScheme.tertiary,
    'onTertiary': colorScheme.onTertiary,
    'tertiaryContainer': colorScheme.tertiaryContainer,
    'onTertiaryContainer': colorScheme.onTertiaryContainer,
    'error': colorScheme.error,
    'onError': colorScheme.onError,
    'errorContainer': colorScheme.errorContainer,
    'onErrorContainer': colorScheme.onErrorContainer,
    'background': colorScheme.background,
    'onBackground': colorScheme.onBackground,
    'surface': colorScheme.surface,
    'onSurface': colorScheme.onSurface,
    'surfaceVariant': colorScheme.surfaceVariant,
    'onSurfaceVariant': colorScheme.onSurfaceVariant,
    'outline': colorScheme.outline,
    'outlineVariant': colorScheme.outlineVariant,
    'shadow': colorScheme.shadow,
    'scrim': colorScheme.scrim,
    'inverseSurface': colorScheme.inverseSurface,
    'onInverseSurface': colorScheme.onInverseSurface,
    'inversePrimary': colorScheme.inversePrimary,
    'surfaceTint': colorScheme.surfaceTint,
  };
}