

class AppLink{
  static const String _rootApi = "https://graduation-black-box.azurewebsites.net/api";
  static const String rootStorage = "https://graduation-black-box.azurewebsites.net/storage";

  // Authentication
  static const String register = "$_rootApi/auth/register";
  static const String login = "$_rootApi/auth/login";
  static const String changePassword = "$_rootApi/auth/change-password";
  static const String forgetPassword = "$_rootApi/forget-password";
  static const String verifyOtp = "$_rootApi/verify-otp";
  static const String resetPassword = "$_rootApi/reset-password";





  // Vehicles
  static const String showOwner   = "$_rootApi/owners/show/";
  static const String updateOwner = "$_rootApi/owners/update/";
  static const String deleteOwner = "$_rootApi/owners/delete/";

  // Vehicles
  static const String addVehicle = "$_rootApi/vehicles/add";
  static const String showAllVehicle = "$_rootApi/vehicles/show-all";
  static const String showOneVehicle = "$_rootApi/vehicles/show/";
  static const String updateVehicle = "$_rootApi/vehicles/update/";
  static const String deleteVehicle = "$_rootApi/vehicles/delete/";


  // Drivers
  static const String addDriver = "$_rootApi/drivers/add";
  static const String showAllDrivers = "$_rootApi/drivers/show-all";
  static const String showOneDriver = "$_rootApi/drivers/show/";
  static const String updateDriver = "$_rootApi/drivers/update/";
  static const String deleteDriver = "$_rootApi/drivers/delete/";
  static const String driverScore = "$_rootApi/drivers/";

  // Notifications
  static const String getNotifications = "$_rootApi/notifications/";


  // Show All Crashes
  static const String showAllCrashes = "$_rootApi/crashes/show-all";
  static const String deleteCrash = "$_rootApi/crashes/delete/";






}