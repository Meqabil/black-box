


import '../../features/auth/domain/entities/owner_entity.dart';
import '../constants/global.dart';

saveUserData(OwnerEntity owner){
  pref!.setString("login_state", "logged_in");
  pref!.setString("name", owner.name);
  pref!.setString("role", owner.role);
  pref!.setString("email", owner.email);
  pref!.setString("id", owner.id.toString());
  pref!.setString("created_at", owner.createdAt);
  pref!.setString("updated_at", owner.updatedAt);
  pref!.setString("profile_image", owner.profileImage);
  pref!.setString("vehicles_count", owner.vehiclesCount);
  pref!.setString("drivers_count", owner.driversCount);
  pref!.setString("token", pref!.getString("token") ?? 'Unknown');
}

getSavedUserData(){
  return OwnerEntity(
      id: int.parse(pref!.getString("id") ?? '0') ,
      name: pref!.getString("name") ?? 'Unknown',
      email: pref!.getString("email") ?? 'Unknown',
      role: pref!.getString("role") ?? 'Unknown',
      driversCount: pref!.getString("drivers_count") ?? 'Unknown',
      vehiclesCount: pref!.getString("vehicles_count") ?? 'Unknown',
      createdAt: pref!.getString("created_at") ?? 'Unknown',
      updatedAt: pref!.getString("updated_at") ?? 'Unknown',
      profileImage: pref!.getString("profile_image") ?? ''
  );
}