import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_design_system/google_design_system.dart';
import 'package:google_mail/main.dart';

class MailHomePage extends StatelessWidget {
  const MailHomePage({
    required this.inboxItems,
    required this.menuItems,
    super.key,
  });

  final List<InboxTileModel> inboxItems;
  final List<LeftSideBarTileModel> menuItems;

  @override
  Widget build(BuildContext context) {
    final colors = GoogleTheme.of(context).colors;

    return GoogleScaffold(
      logo: Image.asset('assets/images/google_gmail_logo.png'),
      title: 'Gmail',
      barHintText: 'Search mail',
      leftSideBar: GoogleLeftSideBar(
        floatingActionButton: GoogleFloatingActionButton.extended(
          elevation: 0,
          backgroundColor: theme.colors.seedColor,
          onPressed: () {},
          icon: GoogleIcons.edit_outlined,
          label: 'Compose',
        ),
        leftSideBarTileList: menuItems,
      ),
      bodyTileList: inboxItems
          .map(
            (element) => GoogleMailBodyTile(
              subject: element.subject,
              description: element.description,
              starred: element.starred,
              dateFormatted: element.sendedDate.year.toString(),
            ),
          )
          .toList(),
    );
  }
}
