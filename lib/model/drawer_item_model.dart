import '../utils/app_images.dart';

class DrawerItemModel {
  final String title;

  final String image;

  const DrawerItemModel({required this.image, required this.title});
}

final List<DrawerItemModel> items = [
  const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
  const DrawerItemModel(
      title: 'My Transaction', image: Assets.imagesMyTransctions),
  const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
  const DrawerItemModel(
      title: 'Wallet Account', image: Assets.imagesWalletAccount),
  const DrawerItemModel(
      title: 'My Investments', image: Assets.imagesMyInvestments),
];
final List<DrawerItemModel> settingsAndLogoutItems = [
  const DrawerItemModel(image: Assets.imagesSettings, title:  'System Settings'),
  const DrawerItemModel(image: Assets.imagesLogout, title: 'Logout account'),
];
