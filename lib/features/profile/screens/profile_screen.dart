import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/presentation/bloc/owner/owner_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/owner/owner_state.dart';
import 'package:black_box/features/auth/presentation/screens/login/login_screen.dart';
import 'package:black_box/features/auth/data/datasources/owner_datasource.dart';
import 'package:black_box/features/profile/widgets/profile_screen/loading_user_data.dart';
import 'package:black_box/features/profile/widgets/profile_screen/option_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/profile_screen/user_image.dart';
import '../widgets/white_layer.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key,required this.onNotificationTap});
  final void Function()? onNotificationTap;
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
      backgroundColor: primaryRed,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: primaryRed,
        centerTitle: true,
        toolbarHeight: 90,
        title: Text("Profile",style:  const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          InkWell(
            onTap: widget.onNotificationTap,
            child: const CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.notifications_none, color: Colors.white))
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: Stack(
        children: [
          WhiteLayer(color:Colors.white, top: 80),
          Column(
            children: [
              const SizedBox(height: 10),
              BlocConsumer<OwnerCubit,OwnerState>(
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
                        SizedBox(height: 10,),
                        Text(state.owner.name, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text("ID : ${state.owner.id.toString()}", style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ],
                    );
                  }
                  return LoadingUserData(owner: owner);
                },
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
                  children: [
                    BlocBuilder<OwnerCubit,OwnerState>(
                      builder: (context,state) {
                        if(state is OwnerSuccess){
                          return OptionButton(icon:Icons.person_outline_rounded,title: "Edit Profile",iconBg: const Color(0xFFE57373), textColor: Colors.black, onTap: () async {
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
                        return OptionButton(icon:Icons.person_outline_rounded,title: "Edit Profile",iconBg: const Color(0xFFE57373), textColor: Colors.black, onTap: () async {});
                      }
                    ),
                    SizedBox(height: 25,),
                    OptionButton(icon:Icons.security,title:"Security", iconBg: const Color(0xFF4FC3F7),textColor: textColor, onTap: () {

                    }),
                    SizedBox(height: 25,),
                    OptionButton(icon:Icons.settings_outlined, title:"Setting", iconBg:primaryRed,textColor: textColor, onTap: () {

                    }),
                    SizedBox(height: 25,),
                    OptionButton(icon:Icons.help_outline, title:"Help", iconBg: const Color(0xFFE57373),textColor: textColor,  onTap: () {

                    }),
                    SizedBox(height: 25,),
                    OptionButton(icon:Icons.logout, title:"Logout", iconBg: const Color(0xFF4FC3F7),textColor: textColor,onTap: () {
                      logOut(context);
                    }),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      //bottomNavigationBar: buildCommonBottomBar(),
    );
  }


}