import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_design_system/google_design_system.dart';
import 'package:google_mail/google_mail.dart';

class MailHomePage extends widgets.StatelessWidget {
  final List<InboxTileModel> inboxItems;
  final List<LeftSideBarTileModel> menuItems;

  const MailHomePage({
    super.key,
    required this.inboxItems,
    required this.menuItems,
  });

  @override
  widgets.Widget build(widgets.BuildContext context) {
    return GoogleScaffold(
      logo: widgets.Image.asset('assets/images/google_gmail_logo.png'),
      title: 'Gmail',
      barHintText: 'Search mail',
      leftSideBar: GoogleLeftSideBar(
        floatingActionButton: GoogleFloatingActionButton.extended(
          elevation: 0,
          backgroundColor: GoogleLightColors.seedColor,
          onPressed: () {},
          icon: GoogleIcons.edit_outlined,
          label: 'Compose',
        ),
        tileType: GoogleLeftSideBarTileType.small,
        leftSideBarTileList: menuItems,
      ),
      bodyTileList: inboxItems
          .map((element) => GoogleMailBodyTile(
                subject: element.subject,
                description: element.description,
                starred: element.starred,
                dateFormatted: element.sendedDate.year.toString(),
              ))
          .toList(),
    );
  }
}
