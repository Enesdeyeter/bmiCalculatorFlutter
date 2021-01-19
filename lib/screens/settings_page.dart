import 'package:bmicalculator/components/icon_content.dart';
import 'package:bmicalculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
      ),
      body: Container(
        child: SettingsList(
          sections: [
            SettingsSection(
              title: 'General',
              titlePadding: EdgeInsets.fromLTRB(20, 30, 0, 10),
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(FontAwesomeIcons.globe),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile.switchTile(
                  title: 'Dark Mode',
                  leading: Icon(FontAwesomeIcons.adjust),
                  switchValue: true,
                  onToggle: (bool value) {},
                ),
              ],
            ),
            SettingsSection(
              titlePadding: EdgeInsets.fromLTRB(20, 30, 0, 10),
              title: 'Security',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Lock app in background',
                  leading: Icon(FontAwesomeIcons.unlock),
                  switchValue: false,
                  onToggle: (bool value) {},
                ),
                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  switchValue: false,
                  onToggle: (bool value) {},
                ),
              ],
            ),
            SettingsSection(
              titlePadding: EdgeInsets.fromLTRB(20, 30, 0, 10),
              title: 'Mics',
              tiles: [
                SettingsTile(
                  title: 'Terms of Services',
                  leading: Icon(FontAwesomeIcons.solidFileAlt),
                  trailing: Icon(FontAwesomeIcons.angleRight),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Open source licenses',
                  leading: Icon(FontAwesomeIcons.archive),
                  trailing: Icon(FontAwesomeIcons.angleRight),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'version 2.2.5',
                  titleTextStyle: TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                  ),
                  subtitle: 'edyco.',
                  subtitleTextStyle: TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
