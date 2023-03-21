import 'package:kartal/kartal.dart';
import 'package:url_launcher/url_launcher.dart';

extension OpenWebsiteExtension on String {
  void get openWeb => launchWebsiteCustom(mode: LaunchMode.externalApplication);
}
