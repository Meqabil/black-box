import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/ui/widgets/notification_button.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/presentation/cubit/owner/owner_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/owner/owner_state.dart';
import 'package:black_box/features/auth/presentation/screens/login/login_screen.dart';
import 'package:black_box/features/auth/data/datasources/owner_datasource.dart';
import 'package:black_box/features/profile/screens/help_faq_screen.dart';
import 'package:black_box/features/profile/screens/security_screen.dart';
import 'package:black_box/features/profile/screens/settings_screen.dart';
import 'package:black_box/features/profile/widgets/logout/dialouges/logout_dialogue.dart';
import 'package:black_box/features/profile/widgets/profile_screen/loading_user_data.dart';
import 'package:black_box/features/profile/widgets/profile_screen/option_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/profile_screen/user_image.dart';
import 'edit_profile_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  OwnerDataSource dataSource = OwnerDataSource();
  late OwnerEntity owner;
  getOwnerData() async{
    owner = getSavedUserData();
    await context.read<OwnerCubit>().showOneOwner(owner.id);
  }
  @override
  void initState() {
    getOwnerData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        toolbarHeight: width * .2025,
        title: Text(AppLocalizations.of(context)!.profile_title,style: TextStyle(color: Colors.white, fontSize: width * .045, fontWeight: FontWeight.bold)),
        actions: [
          NotificationButton(),
          SizedBox(width: width * .045,),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: width * .008,
            width: width,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding:  EdgeInsets.fromLTRB(width * .069,width * 0.405, width * .04569, 0),
                  margin: EdgeInsets.only(top: width * .18),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70)
                    ),
                  ),
                  child: ListView(
                    children: [
                      BlocBuilder<OwnerCubit,OwnerState>(
                        builder: (context,state) {
                          if(state is OwnerSuccess){
                            return OptionButton(icon:Icons.person_outline_rounded,title: AppLocalizations.of(context)!.profile_edit,iconBg: const Color(0xFFE57373), onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EditProfileScreen(
                                  id:    state.owner.id.toString(),
                                  name:  state.owner.name,
                                  email: state.owner.email,
                                  image: state.owner.profileImage,
                                )),
                              );
                            });
                          }
                          return OptionButton(icon:Icons.person_outline_rounded,title: AppLocalizations.of(context)!.profile_edit,iconBg: const Color(0xFFE57373), onTap: () async {});
                        }
                      ),
                      SizedBox(height: width * .049,),
                      OptionButton(icon:Icons.security,title: AppLocalizations.of(context)!.security_title, iconBg: const Color(0xFF4FC3F7), onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityScreen()));
                      }),
                      SizedBox(height: width * .049,),
                      OptionButton(icon:Icons.settings_outlined, title: AppLocalizations.of(context)!.settings_title, iconBg: AppColor.mainRedColor, onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
                      }),
                      SizedBox(height: width * .049,),
                      OptionButton(icon:Icons.help_outline, title: AppLocalizations.of(context)!.help_title, iconBg: const Color(0xFFE57373), onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HelpFAQScreen()));
                      }),
                      SizedBox(height: width * .049,),
                      OptionButton(icon:Icons.logout, title: AppLocalizations.of(context)!.auth_logout, iconBg: const Color(0xFF4FC3F7), onTap: () {
                        showDialog(
                          context: context,
                          builder: (context){
                            return LogoutDialogue();
                          }
                        );
                      }),
                    ],
                  ),
                ),
                Positioned(top: 0,left: width / 2 - width * .15,child: BlocConsumer<OwnerCubit,OwnerState>(
                  listener: (context, state) {
                    if(state is OwnerUpdated){
                      context.read<OwnerCubit>().showOneOwner(owner.id);
                    }
                    if(state is OwnerDeleted){
                      pref!.remove("login_state");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginScreen())
                      );
                    }
                  },
                  builder: (context,state){
                    if(state is OwnerLoading){
                      return LoadingUserData(owner: owner);
                    }else if(state is OwnerSuccess){
                      return Column(
                        children: [
                          UserImage(link: state.owner.profileImage),
                          SizedBox(height: width * .045/2,),
                          Text(state.owner.name, style: TextStyle(fontSize: width * .0585, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface)),
                          Text("ID : ${state.owner.id.toString()}", style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: width * .029)),
                        ],
                      );
                    }
                    return LoadingUserData(owner: owner);
                  },
                ))
              ],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: buildCommonBottomBar(),
    );
  }


}