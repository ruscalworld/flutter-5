import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const style = TextStyle(fontSize: 32);

class PlatformText extends StatelessWidget {
  const PlatformText({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return const WebText();

    if (Platform.isAndroid) return const AndroidText();
    if (Platform.isIOS) return const IosText();
    if (Platform.isWindows) return const WindowsText();
    if (Platform.isMacOS) return const MacOSText();
    if (Platform.isLinux) return const LinuxText();

    return const UnknownPlatformText();
  }
}

class WebText extends StatelessWidget {
  const WebText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Приложение запущено в браузере', style: style);
  }
}

class AndroidText extends StatelessWidget {
  const AndroidText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Приложение запущено на Android', style: style);
  }
}

class IosText extends StatelessWidget {
  const IosText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Приложение запущено на iOS', style: style);
  }
}

class WindowsText extends StatelessWidget {
  const WindowsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Приложение запущено на Windows', style: style);
  }
}

class MacOSText extends StatelessWidget {
  const MacOSText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Приложение запущено на MacOS', style: style);
  }
}

class LinuxText extends StatelessWidget {
  const LinuxText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Приложение запущено на Linux', style: style);
  }
}

class UnknownPlatformText extends StatelessWidget {
  const UnknownPlatformText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Не удалось определить платформу', style: style);
  }
}
