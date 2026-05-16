import 'package:black_box/core/theme/app_color.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/settings/presentation/cubit/language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../shared/widgets/notification_button.dart';


class Settings extends StatefulWidget {
  const Settings({super.key,});
  @override
  State<Settings> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<Settings> {

  @override
  void initState(){

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        title: Text(AppLocalizations.of(context)!.settings_title, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          NotificationButton(),
          SizedBox(width: width * 0.045,)
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                children: [
                  SwitchListTile(
                    title: Text(AppLocalizations.of(context)!.push_notification,
                        style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onSurface)),
                    activeColor: darkMode.value ? Colors.grey : AppColor.mainRedColor,
                    inactiveTrackColor: darkMode.value ? Theme.of(context).cardColor : Colors.red.withAlpha(50),
                    thumbColor: WidgetStatePropertyAll(Colors.white70),
                    inactiveThumbColor: Colors.blue,
                    value: false,
                    onChanged: (bool value) {

                    },
                  ),
                  SwitchListTile(
                    title: Text(AppLocalizations.of(context)!.dark_mode,
                        style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onSurface)),
                    activeColor: darkMode.value ? Colors.grey : AppColor.mainRedColor,
                    inactiveTrackColor: darkMode.value ? Theme.of(context).cardColor : Colors.red.withAlpha(50),
                    thumbColor: WidgetStatePropertyAll(Colors.white70),
                    value: darkMode.value,
                    onChanged: (bool value) {
                        if(darkMode.value){
                          pref!.setString("theme", "light");
                        }else{
                          pref!.setString("theme", "dark");
                        }
                        darkMode.value = value;
                        setState(() {});
                    },
                  ),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text(AppLocalizations.of(context)!.language),
                      items: [
                        DropdownMenuItem(
                          value: "ar",
                          child: Text("العربية (Arabic)"),
                        ),
                        DropdownMenuItem(

                          value: "en",
                          child: Text("English "),
                        ),
                        DropdownMenuItem(
                          value: "es",
                          child: Text("Español (Spanish)"),
                        ),
                        DropdownMenuItem(
                          value: "fa",
                          child: Text("فارسی (Persian / Farsi)"),
                        ),
                        DropdownMenuItem(
                          value: "fi",
                          child: Text("Suomi (Finnish)"),
                        ),
                        DropdownMenuItem(
                          value: "fr",
                          child: Text("Français (French)"),
                        ),
                        DropdownMenuItem(
                          value: "am",
                          child: Text("አማርኛ (Amharic)"),
                        ),
                        DropdownMenuItem(
                          value: "az",
                          child: Text("Azərbaycanca (Azerbaijani)"),
                        ),
                        DropdownMenuItem(
                          value: "bn",
                          child: Text("বাংলা (Bengali)"),
                        ),
                        DropdownMenuItem(
                          value: "cs",
                          child: Text("Čeština (Czech)"),
                        ),
                        DropdownMenuItem(
                          value: "da",
                          child: Text("Dansk (Danish)"),
                        ),
                        DropdownMenuItem(
                          value: "de",
                          child: Text("Deutsch (German)"),
                        ),
                        DropdownMenuItem(
                          value: "el",
                          child: Text("Ελληνικά (Greek)"),
                        ),
                        DropdownMenuItem(
                          value: "he",
                          child: Text("עברית (Hebrew)"),
                        ),
                        DropdownMenuItem(
                          value: "hi",
                          child: Text("हिन्दी (Hindi)"),
                        ),
                        DropdownMenuItem(
                          value: "hy",
                          child: Text("Հայերեն (Armenian)"),
                        ),
                        DropdownMenuItem(
                          value: "id",
                          child: Text("Bahasa Indonesia (Indonesian)"),
                        ),
                        DropdownMenuItem(
                          value: "it",
                          child: Text("Italiano (Italian)"),
                        ),
                        DropdownMenuItem(
                          value: "ja",
                          child: Text("日本語 (Japanese)"),
                        ),
                        DropdownMenuItem(
                          value: "ko",
                          child: Text("한국어 (Korean)"),
                        ),
                        DropdownMenuItem(
                          value: "ms",
                          child: Text("Bahasa Melayu (Malay)"),
                        ),
                        DropdownMenuItem(
                          value: "nl",
                          child: Text("Nederlands (Dutch)"),
                        ),
                        DropdownMenuItem(
                          value: "no",
                          child: Text("Norsk (Norwegian)"),
                        ),
                        DropdownMenuItem(
                          value: "pl",
                          child: Text("Polski (Polish)"),
                        ),
                        DropdownMenuItem(
                          value: "ps",
                          child: Text("پښتو (Pashto)"),
                        ),
                        DropdownMenuItem(
                          value: "pt",
                          child: Text("Português (Portuguese)"),
                        ),
                        DropdownMenuItem(
                          value: "ru",
                          child: Text("Русский (Russian)"),
                        ),
                        DropdownMenuItem(
                          value: "sk",
                          child: Text("Slovenčina (Slovak)"),
                        ),
                        DropdownMenuItem(
                          value: "sl",
                          child: Text("Slovenščina (Slovenian)"),
                        ),
                        DropdownMenuItem(
                          value: "sr",
                          child: Text("Српски / Srpski (Serbian)"),
                        ),
                        DropdownMenuItem(
                          value: "sv",
                          child: Text("Svenska (Swedish)"),
                        ),
                        DropdownMenuItem(
                          value: "sw",
                          child: Text("Kiswahili (Swahili)"),
                        ),
                        DropdownMenuItem(
                          value: "th",
                          child: Text("ไทย (Thai)"),
                        ),
                        DropdownMenuItem(
                          value: "tr",
                          child: Text("Türkçe (Turkish)"),
                        ),
                        DropdownMenuItem(
                          value: "uk",
                          child: Text("Українська (Ukrainian)"),
                        ),
                        DropdownMenuItem(
                          value: "zgh",
                          child: Text("ⵜⴰⵎⴰⵣⵉⵖⵜ (Standard Moroccan Tamazight)"),
                        ),
                        DropdownMenuItem(
                          value: "zh",
                          child: Text("中文 (Chinese)"),
                        ),
                      ],
                      onChanged: (val){
                        context.read<LanguageCubit>().changeLanguage(val!);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}