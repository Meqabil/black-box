import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/help_info.dart';
import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/profile/presentation/widgets/helper/help_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../shared/widgets/notification_button.dart';
import '../widgets/helper/expansion_tile.dart';
import '../widgets/helper/toggle_buttons_bar.dart';


class HelpFAQScreen extends StatefulWidget {
  const HelpFAQScreen({super.key,});

  @override
  State<HelpFAQScreen> createState() => _HelpFAQScreenState();
}

class _HelpFAQScreenState extends State<HelpFAQScreen> {
  String searchQuery = "";
  PageController pageController = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> faqData = getHelpInfo(context);

    List<Map<String, String>> filteredFaq = faqData
        .where((item) =>
            item['question']!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        title: Text(AppLocalizations.of(context)!.help_and_faq, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          NotificationButton(),
          SizedBox(width: 20,)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(width * 0.09),
        margin: const EdgeInsets.only(top:15),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                loc.how_help,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox(height: 25,),
            ToggleButtonsBar(
                page: page,
                onTapFaq: (){
                  pageController.animateToPage(
                    0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                  page = 0;
                },
                onTapContact: (){
                  pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                  page = 1;
                }
            ),
            SizedBox(height: 15,),
            Expanded(

              child: PageView(

                controller: pageController,
                onPageChanged: (val){
                  setState(() {
                    page = val;
                  });
                },
                children: [
                  ListView(
                    children: [
                      HelpSearchBar(onChanged: (v){
                        setState(() {
                          searchQuery = v;
                        });
                      },),
                      SizedBox(height: 15,),
                      ...filteredFaq.map((item) => ExpansionTileApp(item:item)),
                    ],
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: width * 0.12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColor.mainRedColor, borderRadius: BorderRadius.circular(14)
                          ),
                          child: Image.asset(AppImages.whatsAppIcon,)
                        ),
                        const SizedBox(width: 15),
                        Text(
                          AppLocalizations.of(context)!.on_wh_num,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
